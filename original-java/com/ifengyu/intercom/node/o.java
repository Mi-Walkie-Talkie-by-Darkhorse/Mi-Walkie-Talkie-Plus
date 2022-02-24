package com.ifengyu.intercom.node;

import android.util.SparseArray;
import android.util.SparseIntArray;
import com.google.protobuf.Message;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.transport.b;
import com.ifengyu.intercom.node.transport.h;
import com.ifengyu.intercom.node.transport.i;
import com.ifengyu.intercom.node.transport.j;
import com.ifengyu.intercom.protos.MitalkProtos;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: TxCallable.java */
/* loaded from: classes2.dex */
public class o implements Callable<Void>, i {

    /* renamed from: a  reason: collision with root package name */
    private volatile OutputStream f5934a;

    /* renamed from: b  reason: collision with root package name */
    private final d f5935b;

    /* renamed from: c  reason: collision with root package name */
    private final j f5936c;
    private final Lock d = new ReentrantLock();
    private final h e = i.a();
    private final SparseArray<Queue<SendDataWrap>> f = new SparseArray<>();
    private final SparseArray<Queue<SendDataWrap>> g = new SparseArray<>();
    private final SparseIntArray h = new SparseIntArray();

    public o(OutputStream outputStream, d dVar, j jVar) {
        this.f5934a = outputStream;
        this.f5935b = dVar;
        this.f5936c = jVar;
    }

    private void b() {
        z.a("TxCallable", "clear tx queue");
        int size = this.f.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Queue<SendDataWrap> valueAt = this.f.valueAt(i2);
            while (!valueAt.isEmpty()) {
                SendDataWrap poll = valueAt.poll();
                if (poll != null) {
                    i++;
                    Message message = poll.f5840c;
                    if (message != null) {
                        message.toBuilder().clear();
                    } else if (poll.e != null) {
                        poll.e = null;
                    }
                }
            }
        }
        z.d("TxCallable", "purged " + i + " messages from writer");
    }

    private void c() {
        synchronized (this.d) {
            this.d.notifyAll();
        }
    }

    private void d() throws InterruptedException {
        synchronized (this.d) {
            this.d.wait();
        }
    }

    @Override // com.ifengyu.intercom.node.i
    public String a() {
        return this.f5935b.a();
    }

    @Override // com.ifengyu.intercom.node.i
    public void a(int i, SendDataWrap sendDataWrap) throws IOException, InterruptedException {
        Queue<SendDataWrap> queue;
        if (this.f5934a != null) {
            com.ifengyu.intercom.i.o.a(sendDataWrap, "data was null");
            synchronized (this.f) {
                queue = this.f.get(i);
                if (queue == null && (queue = this.g.get(i)) == null) {
                    if (i == 1) {
                        queue = new LinkedBlockingQueue<>(10);
                    } else {
                        queue = new ConcurrentLinkedQueue<>();
                    }
                    this.g.put(i, queue);
                    this.h.delete(i);
                }
            }
            if (queue instanceof LinkedBlockingQueue) {
                ((LinkedBlockingQueue) queue).put(sendDataWrap);
            } else {
                queue.add(sendDataWrap);
            }
            c();
            return;
        }
        throw new IOException("output stream is closed");
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        int i;
        int i2;
        Thread currentThread = Thread.currentThread();
        currentThread.setName("TxCallable");
        n nVar = (n) currentThread;
        while (!nVar.b()) {
            z.a("TxCallable", "waiting for incoming msg to be sent...");
            try {
                d();
                do {
                    synchronized (this.f) {
                        int size = this.g.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            this.f.put(this.g.keyAt(i3), this.g.valueAt(i3));
                        }
                        int size2 = this.h.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            this.f.remove(this.h.keyAt(i4));
                        }
                        this.g.clear();
                        this.h.clear();
                    }
                    int size3 = this.f.size();
                    i2 = 0;
                    for (i = 0; i < size3; i++) {
                        Queue<SendDataWrap> valueAt = this.f.valueAt(i);
                        SendDataWrap peek = valueAt.peek();
                        if (peek != null) {
                            if (z.c()) {
                                Message message = peek.f5840c;
                                if (message != null) {
                                    if (message instanceof MitalkProtos.Command) {
                                        z.d("TxCallable", "sending DolphinCommand:" + p.a((MitalkProtos.Command) peek.f5840c));
                                    }
                                } else if (peek.e != null) {
                                    z.d("TxCallable", "sending data:" + b.a(peek.e));
                                } else if (peek.d != null) {
                                    z.d("TxCallable", "sending btkey data:" + b.a(peek.d));
                                }
                            }
                            if (peek.f5840c != null) {
                                i.b(this.e, this.f5934a, peek, this.f5936c);
                            } else if (peek.e != null) {
                                i.a(this.e, this.f5934a, peek.e, this.f5936c);
                            } else if (peek.d != null) {
                                i.a(this.e, this.f5934a, peek, this.f5936c);
                            }
                            i2++;
                            valueAt.poll();
                        }
                    }
                } while (i2 != 0);
                z.a("TxCallable", "no message found.");
            } catch (InterruptedException unused) {
                z.e("TxCallable", "TxCallable thread was interrupted");
                b();
                if (this.f5934a != null) {
                    try {
                        this.f5934a.close();
                    } catch (IOException e) {
                        z.e("TxCallable", "close output exception, e=" + e.getMessage());
                    }
                    this.f5934a = null;
                }
            }
        }
        return null;
    }
}
