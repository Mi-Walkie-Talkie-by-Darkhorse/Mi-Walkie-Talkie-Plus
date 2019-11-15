package com.xiaomi.channel.commonutils.misc;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class i {
    private a a;
    /* access modifiers changed from: private */
    public Handler b;
    /* access modifiers changed from: private */
    public volatile boolean c;
    private final boolean d;
    /* access modifiers changed from: private */
    public int e;
    /* access modifiers changed from: private */
    public volatile b f;

    private class a extends Thread {
        private final LinkedBlockingQueue<b> b = new LinkedBlockingQueue<>();

        public a() {
            super("PackageProcessor");
        }

        public void a(b bVar) {
            this.b.add(bVar);
        }

        public void run() {
            long a2 = i.this.e > 0 ? (long) i.this.e : Long.MAX_VALUE;
            while (!i.this.c) {
                try {
                    i.this.f = (b) this.b.poll(a2, TimeUnit.SECONDS);
                    if (i.this.f != null) {
                        i.this.b.sendMessage(i.this.b.obtainMessage(0, i.this.f));
                        i.this.f.b();
                        i.this.b.sendMessage(i.this.b.obtainMessage(1, i.this.f));
                    } else if (i.this.e > 0) {
                        i.this.a();
                    }
                } catch (InterruptedException e) {
                    com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
                }
            }
        }
    }

    public static abstract class b {
        public void a() {
        }

        public abstract void b();

        public void c() {
        }
    }

    public i() {
        this(false);
    }

    public i(boolean z) {
        this(z, 0);
    }

    public i(boolean z, int i) {
        this.b = null;
        this.c = false;
        this.e = 0;
        this.b = new j(this, Looper.getMainLooper());
        this.d = z;
        this.e = i;
    }

    /* access modifiers changed from: private */
    public synchronized void a() {
        this.a = null;
        this.c = true;
    }

    public synchronized void a(b bVar) {
        if (this.a == null) {
            this.a = new a();
            this.a.setDaemon(this.d);
            this.c = false;
            this.a.start();
        }
        this.a.a(bVar);
    }

    public void a(b bVar, long j) {
        this.b.postDelayed(new k(this, bVar), j);
    }
}
