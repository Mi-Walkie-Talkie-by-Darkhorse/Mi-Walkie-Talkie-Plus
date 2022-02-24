package com.xiaomi.push;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class an {

    /* renamed from: a  reason: collision with root package name */
    private int f8741a;

    /* renamed from: a  reason: collision with other field name */
    private Handler f91a;

    /* renamed from: a  reason: collision with other field name */
    private a f92a;

    /* renamed from: a  reason: collision with other field name */
    private volatile b f93a;

    /* renamed from: a  reason: collision with other field name */
    private volatile boolean f94a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f8742b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with other field name */
        private final LinkedBlockingQueue<b> f95a = new LinkedBlockingQueue<>();

        public a() {
            super("PackageProcessor");
        }

        private void a(int i, b bVar) {
            try {
                an.this.f91a.sendMessage(an.this.f91a.obtainMessage(i, bVar));
            } catch (Exception e) {
                com.xiaomi.channel.commonutils.logger.b.a(e);
            }
        }

        public void a(b bVar) {
            try {
                this.f95a.add(bVar);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            long j = an.this.f8741a > 0 ? an.this.f8741a : Long.MAX_VALUE;
            while (!an.this.f94a) {
                try {
                    b poll = this.f95a.poll(j, TimeUnit.SECONDS);
                    an.this.f93a = poll;
                    if (poll != null) {
                        a(0, poll);
                        poll.mo161b();
                        a(1, poll);
                    } else if (an.this.f8741a > 0) {
                        an.this.a();
                    }
                } catch (InterruptedException e) {
                    com.xiaomi.channel.commonutils.logger.b.a(e);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class b {
        public void a() {
        }

        /* renamed from: b */
        public abstract void mo161b();

        /* renamed from: c */
        public void mo162c() {
        }
    }

    public an() {
        this(false);
    }

    public an(boolean z) {
        this(z, 0);
    }

    public an(boolean z, int i) {
        this.f91a = null;
        this.f94a = false;
        this.f8741a = 0;
        this.f91a = new ao(this, Looper.getMainLooper());
        this.f8742b = z;
        this.f8741a = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a() {
        this.f92a = null;
        this.f94a = true;
    }

    public synchronized void a(b bVar) {
        if (this.f92a == null) {
            a aVar = new a();
            this.f92a = aVar;
            aVar.setDaemon(this.f8742b);
            this.f94a = false;
            this.f92a.start();
        }
        this.f92a.a(bVar);
    }

    public void a(b bVar, long j) {
        this.f91a.postDelayed(new ap(this, bVar), j);
    }
}
