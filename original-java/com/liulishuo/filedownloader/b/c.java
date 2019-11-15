package com.liulishuo.filedownloader.b;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import com.liulishuo.filedownloader.b.a.C0043a;
import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.e.e;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.model.a;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.LockSupport;

/* compiled from: RemitDatabase */
public class c implements a {
    private final b a = new b();
    private final d b = new d();
    private Handler c;
    private final long d = e.a().b;
    /* access modifiers changed from: private */
    public final List<Integer> e = new ArrayList();
    /* access modifiers changed from: private */
    public AtomicInteger f = new AtomicInteger();
    /* access modifiers changed from: private */
    public volatile Thread g;

    public c() {
        HandlerThread handlerThread = new HandlerThread(g.j("RemitHandoverToDB"));
        handlerThread.start();
        this.c = new Handler(handlerThread.getLooper(), new Callback() {
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i != 0) {
                    try {
                        c.this.f.set(i);
                        c.this.g(i);
                        c.this.e.add(Integer.valueOf(i));
                        c.this.f.set(0);
                        if (c.this.g != null) {
                            LockSupport.unpark(c.this.g);
                            c.this.g = null;
                        }
                    } catch (Throwable th) {
                        c.this.f.set(0);
                        if (c.this.g != null) {
                            LockSupport.unpark(c.this.g);
                            c.this.g = null;
                        }
                        throw th;
                    }
                } else if (c.this.g != null) {
                    LockSupport.unpark(c.this.g);
                    c.this.g = null;
                }
                return false;
            }
        });
    }

    /* access modifiers changed from: private */
    public void g(int i) {
        if (d.a) {
            d.c(this, "sync cache to db %d", Integer.valueOf(i));
        }
        this.b.a(this.a.b(i));
        List<a> c2 = this.a.c(i);
        this.b.d(i);
        for (a a2 : c2) {
            this.b.a(a2);
        }
    }

    private boolean h(int i) {
        return !this.e.contains(Integer.valueOf(i));
    }

    public void a(int i) {
        this.c.sendEmptyMessageDelayed(i, this.d);
    }

    public FileDownloadModel b(int i) {
        return this.a.b(i);
    }

    public List<a> c(int i) {
        return this.a.c(i);
    }

    public void d(int i) {
        this.a.d(i);
        if (!h(i)) {
            this.b.d(i);
        }
    }

    public void a(a aVar) {
        this.a.a(aVar);
        if (!h(aVar.a())) {
            this.b.a(aVar);
        }
    }

    public void a(int i, int i2, long j) {
        this.a.a(i, i2, j);
        if (!h(i)) {
            this.b.a(i, i2, j);
        }
    }

    public void a(int i, long j) {
        this.a.a(i, j);
        if (!h(i)) {
            this.b.a(i, j);
        }
    }

    public void a(int i, int i2) {
        this.a.a(i, i2);
        if (!h(i)) {
            this.b.a(i, i2);
        }
    }

    public void a(FileDownloadModel fileDownloadModel) {
        this.a.a(fileDownloadModel);
        if (!h(fileDownloadModel.a())) {
            this.b.a(fileDownloadModel);
        }
    }

    public boolean e(int i) {
        this.b.e(i);
        return this.a.e(i);
    }

    public void a() {
        this.a.a();
        this.b.a();
    }

    public void a(int i, String str, long j, long j2, int i2) {
        this.a.a(i, str, j, j2, i2);
        if (!h(i)) {
            this.b.a(i, str, j, j2, i2);
        }
    }

    public void a(int i, long j, String str, String str2) {
        this.a.a(i, j, str, str2);
        if (!h(i)) {
            this.b.a(i, j, str, str2);
        }
    }

    public void f(int i) {
        this.a.f(i);
        if (!h(i)) {
            this.b.f(i);
        }
    }

    public void a(int i, Throwable th) {
        this.a.a(i, th);
        if (!h(i)) {
            this.b.a(i, th);
        }
    }

    private void i(int i) {
        this.c.removeMessages(i);
        if (this.f.get() == i) {
            this.g = Thread.currentThread();
            this.c.sendEmptyMessage(0);
            LockSupport.park();
            return;
        }
        g(i);
    }

    public void a(int i, Throwable th, long j) {
        this.a.a(i, th, j);
        if (h(i)) {
            i(i);
        }
        this.b.a(i, th, j);
        this.e.remove(Integer.valueOf(i));
    }

    public void b(int i, long j) {
        this.a.b(i, j);
        if (h(i)) {
            this.c.removeMessages(i);
            if (this.f.get() == i) {
                this.g = Thread.currentThread();
                this.c.sendEmptyMessage(0);
                LockSupport.park();
                this.b.b(i, j);
            }
        } else {
            this.b.b(i, j);
        }
        this.e.remove(Integer.valueOf(i));
    }

    public void c(int i, long j) {
        this.a.c(i, j);
        if (h(i)) {
            i(i);
        }
        this.b.c(i, j);
        this.e.remove(Integer.valueOf(i));
    }

    public C0043a b() {
        return this.b.a(this.a.a, this.a.b);
    }
}
