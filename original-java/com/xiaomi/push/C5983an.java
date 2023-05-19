package com.xiaomi.push;

import android.os.Handler;
import android.os.Looper;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* renamed from: com.xiaomi.push.an */
/* loaded from: classes2.dex */
public class C5983an {

    /* renamed from: a */
    private int f21011a;

    /* renamed from: a */
    private Handler f21012a;

    /* renamed from: a */
    private C5984a f21013a;

    /* renamed from: a */
    private volatile AbstractC5985b f21014a;

    /* renamed from: a */
    private volatile boolean f21015a;

    /* renamed from: b */
    private final boolean f21016b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.an$a */
    /* loaded from: classes2.dex */
    public class C5984a extends Thread {

        /* renamed from: a */
        private final LinkedBlockingQueue<AbstractC5985b> f21018a;

        public C5984a() {
            super("PackageProcessor");
            this.f21018a = new LinkedBlockingQueue<>();
        }

        /* renamed from: a */
        private void m3760a(int i, AbstractC5985b abstractC5985b) {
            try {
                C5983an.this.f21012a.sendMessage(C5983an.this.f21012a.obtainMessage(i, abstractC5985b));
            } catch (Exception e) {
                AbstractC5876b.m4143a(e);
            }
        }

        /* renamed from: a */
        public void m3759a(AbstractC5985b abstractC5985b) {
            try {
                this.f21018a.add(abstractC5985b);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            long j = C5983an.this.f21011a > 0 ? C5983an.this.f21011a : Long.MAX_VALUE;
            while (!C5983an.this.f21015a) {
                try {
                    AbstractC5985b poll = this.f21018a.poll(j, TimeUnit.SECONDS);
                    C5983an.this.f21014a = poll;
                    if (poll != null) {
                        m3760a(0, poll);
                        poll.mo1431b();
                        m3760a(1, poll);
                    } else if (C5983an.this.f21011a > 0) {
                        C5983an.this.m3768a();
                    }
                } catch (InterruptedException e) {
                    AbstractC5876b.m4143a(e);
                }
            }
        }
    }

    /* renamed from: com.xiaomi.push.an$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC5985b {
        /* renamed from: a */
        public void m3758a() {
        }

        /* renamed from: b */
        public abstract void mo1431b();

        /* renamed from: c */
        public void mo1430c() {
        }
    }

    public C5983an() {
        this(false);
    }

    public C5983an(boolean z) {
        this(z, 0);
    }

    public C5983an(boolean z, int i) {
        this.f21012a = null;
        this.f21015a = false;
        this.f21011a = 0;
        this.f21012a = new HandlerC5986ao(this, Looper.getMainLooper());
        this.f21016b = z;
        this.f21011a = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized void m3768a() {
        this.f21013a = null;
        this.f21015a = true;
    }

    /* renamed from: a */
    public synchronized void m3767a(AbstractC5985b abstractC5985b) {
        if (this.f21013a == null) {
            C5984a c5984a = new C5984a();
            this.f21013a = c5984a;
            c5984a.setDaemon(this.f21016b);
            this.f21015a = false;
            this.f21013a.start();
        }
        this.f21013a.m3759a(abstractC5985b);
    }

    /* renamed from: a */
    public void m3766a(AbstractC5985b abstractC5985b, long j) {
        this.f21012a.postDelayed(new RunnableC5987ap(this, abstractC5985b), j);
    }
}
