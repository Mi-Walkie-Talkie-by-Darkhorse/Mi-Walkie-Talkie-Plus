package com.ifengyu.intercom.node;

import android.util.SparseArray;
import android.util.SparseIntArray;
import com.ifengyu.intercom.b.k;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.transport.b;
import com.ifengyu.intercom.node.transport.h;
import com.ifengyu.intercom.node.transport.i;
import com.ifengyu.intercom.node.transport.j;
import com.ifengyu.intercom.protos.MitalkProtos.Command;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: TxCallable */
public class p implements j, Callable<Void> {
    private volatile OutputStream a;
    private final e b;
    private final j c;
    private final Lock d = new ReentrantLock();
    private final h e = i.a();
    private final SparseArray<Queue<SendDataWrap>> f = new SparseArray<>();
    private final SparseArray<Queue<SendDataWrap>> g = new SparseArray<>();
    private final SparseIntArray h = new SparseIntArray();

    public p(OutputStream outputStream, e eVar, j jVar) {
        this.a = outputStream;
        this.b = eVar;
        this.c = jVar;
    }

    /* renamed from: b */
    public Void call() throws Exception {
        int i;
        int i2;
        Thread currentThread = Thread.currentThread();
        currentThread.setName("TxCallable");
        o oVar = (o) currentThread;
        while (!oVar.a()) {
            s.b("TxCallable", "waiting for incoming msg to be sent...");
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
                    int i5 = 0;
                    i = 0;
                    while (i5 < size3) {
                        Queue queue = (Queue) this.f.valueAt(i5);
                        SendDataWrap sendDataWrap = (SendDataWrap) queue.peek();
                        if (sendDataWrap != null) {
                            if (s.a()) {
                                if (sendDataWrap.a != null) {
                                    if (sendDataWrap.a instanceof Command) {
                                        s.a("TxCallable", "sending DolphinCommand:" + q.a((Command) sendDataWrap.a));
                                    }
                                } else if (sendDataWrap.c != null) {
                                    s.a("TxCallable", "sending data:" + b.a(sendDataWrap.c));
                                } else if (sendDataWrap.b != null) {
                                    s.a("TxCallable", "sending btkey data:" + b.a(sendDataWrap.b));
                                }
                            }
                            if (sendDataWrap.a != null) {
                                i.a(this.e, this.a, sendDataWrap, this.c);
                            } else if (sendDataWrap.c != null) {
                                i.a(this.e, this.a, sendDataWrap.c, this.c);
                            } else if (sendDataWrap.b != null) {
                                i.b(this.e, this.a, sendDataWrap, this.c);
                            }
                            i2 = i + 1;
                            queue.poll();
                        } else {
                            i2 = i;
                        }
                        i5++;
                        i = i2;
                    }
                } while (i != 0);
                s.b("TxCallable", "no message found.");
            } catch (InterruptedException e2) {
                s.d("TxCallable", "TxCallable thread was interrupted");
                e();
                if (this.a != null) {
                    try {
                        this.a.close();
                    } catch (IOException e3) {
                        s.d("TxCallable", "close output exception, e=" + e3.getMessage());
                    }
                    this.a = null;
                }
            }
        }
        return null;
    }

    public String a() {
        return this.b.a();
    }

    public void a(int i, SendDataWrap sendDataWrap) throws IOException, InterruptedException {
        Queue queue;
        if (this.a == null) {
            throw new IOException("output stream is closed");
        }
        k.a(sendDataWrap, (Object) "data was null");
        synchronized (this.f) {
            queue = (Queue) this.f.get(i);
            if (queue == null) {
                queue = (Queue) this.g.get(i);
                if (queue == null) {
                    if (i == 1) {
                        queue = new LinkedBlockingQueue(10);
                    } else {
                        queue = new ConcurrentLinkedQueue();
                    }
                    this.g.put(i, queue);
                    this.h.delete(i);
                }
            }
        }
        if (queue instanceof LinkedBlockingQueue) {
            ((LinkedBlockingQueue) queue).put(sendDataWrap);
        } else {
            queue.add(sendDataWrap);
        }
        c();
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

    private void e() {
        int i;
        s.b("TxCallable", "clear tx queue");
        int size = this.f.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            Queue queue = (Queue) this.f.valueAt(i2);
            while (true) {
                i = i3;
                if (queue.isEmpty()) {
                    break;
                }
                SendDataWrap sendDataWrap = (SendDataWrap) queue.poll();
                if (sendDataWrap != null) {
                    i++;
                    if (sendDataWrap.a != null) {
                        sendDataWrap.a.toBuilder().clear();
                    } else if (sendDataWrap.c != null) {
                        sendDataWrap.c = null;
                    }
                }
                i3 = i;
            }
            i2++;
            i3 = i;
        }
        s.a("TxCallable", "purged " + i3 + " messages from writer");
    }
}
