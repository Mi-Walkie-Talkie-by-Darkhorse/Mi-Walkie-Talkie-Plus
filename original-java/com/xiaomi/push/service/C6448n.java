package com.xiaomi.push.service;

import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;

/* renamed from: com.xiaomi.push.service.n */
/* loaded from: classes2.dex */
public class C6448n {

    /* renamed from: a */
    private static long f23191a;

    /* renamed from: b */
    private static long f23192b;

    /* renamed from: c */
    private static long f23193c;

    /* renamed from: a */
    private final C6449a f23194a;

    /* renamed from: a */
    private final C6451c f23195a;

    /* renamed from: com.xiaomi.push.service.n$a */
    /* loaded from: classes2.dex */
    private static final class C6449a {

        /* renamed from: a */
        private final C6451c f23196a;

        C6449a(C6451c c6451c) {
            this.f23196a = c6451c;
        }

        protected void finalize() {
            try {
                synchronized (this.f23196a) {
                    this.f23196a.f23203c = true;
                    this.f23196a.notify();
                }
            } finally {
                super.finalize();
            }
        }
    }

    /* renamed from: com.xiaomi.push.service.n$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractRunnableC6450b implements Runnable {

        /* renamed from: a */
        protected int f23197a;

        public AbstractRunnableC6450b(int i) {
            this.f23197a = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.service.n$c */
    /* loaded from: classes2.dex */
    public static final class C6451c extends Thread {

        /* renamed from: b */
        private boolean f23202b;

        /* renamed from: c */
        private boolean f23203c;

        /* renamed from: a */
        private volatile long f23198a = 0;

        /* renamed from: a */
        private volatile boolean f23200a = false;

        /* renamed from: b */
        private long f23201b = 50;

        /* renamed from: a */
        private C6452a f23199a = new C6452a();

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.xiaomi.push.service.n$c$a */
        /* loaded from: classes2.dex */
        public static final class C6452a {

            /* renamed from: a */
            private int f23204a;

            /* renamed from: a */
            private C6453d[] f23205a;

            /* renamed from: b */
            private int f23206b;

            /* renamed from: c */
            private int f23207c;

            private C6452a() {
                this.f23204a = 256;
                this.f23205a = new C6453d[256];
                this.f23206b = 0;
                this.f23207c = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: a */
            public int m1317a(C6453d c6453d) {
                int i = 0;
                while (true) {
                    C6453d[] c6453dArr = this.f23205a;
                    if (i >= c6453dArr.length) {
                        return -1;
                    }
                    if (c6453dArr[i] == c6453d) {
                        return i;
                    }
                    i++;
                }
            }

            /* renamed from: c */
            private void m1313c() {
                int i = this.f23206b - 1;
                int i2 = (i - 1) / 2;
                while (true) {
                    C6453d[] c6453dArr = this.f23205a;
                    if (c6453dArr[i].f23209a >= c6453dArr[i2].f23209a) {
                        return;
                    }
                    C6453d c6453d = c6453dArr[i];
                    c6453dArr[i] = c6453dArr[i2];
                    c6453dArr[i2] = c6453d;
                    int i3 = i2;
                    i2 = (i2 - 1) / 2;
                    i = i3;
                }
            }

            /* renamed from: c */
            private void m1312c(int i) {
                int i2 = (i * 2) + 1;
                while (true) {
                    int i3 = this.f23206b;
                    if (i2 >= i3 || i3 <= 0) {
                        return;
                    }
                    int i4 = i2 + 1;
                    if (i4 < i3) {
                        C6453d[] c6453dArr = this.f23205a;
                        if (c6453dArr[i4].f23209a < c6453dArr[i2].f23209a) {
                            i2 = i4;
                        }
                    }
                    C6453d[] c6453dArr2 = this.f23205a;
                    if (c6453dArr2[i].f23209a < c6453dArr2[i2].f23209a) {
                        return;
                    }
                    C6453d c6453d = c6453dArr2[i];
                    c6453dArr2[i] = c6453dArr2[i2];
                    c6453dArr2[i2] = c6453d;
                    int i5 = i2;
                    i2 = (i2 * 2) + 1;
                    i = i5;
                }
            }

            /* renamed from: a */
            public C6453d m1324a() {
                return this.f23205a[0];
            }

            /* renamed from: a */
            public void m1323a() {
                this.f23205a = new C6453d[this.f23204a];
                this.f23206b = 0;
            }

            /* renamed from: a */
            public void m1321a(int i) {
                for (int i2 = 0; i2 < this.f23206b; i2++) {
                    C6453d[] c6453dArr = this.f23205a;
                    if (c6453dArr[i2].f23208a == i) {
                        c6453dArr[i2].m1311a();
                    }
                }
                m1315b();
            }

            /* renamed from: a */
            public void m1319a(int i, AbstractRunnableC6450b abstractRunnableC6450b) {
                for (int i2 = 0; i2 < this.f23206b; i2++) {
                    C6453d[] c6453dArr = this.f23205a;
                    if (c6453dArr[i2].f23210a == abstractRunnableC6450b) {
                        c6453dArr[i2].m1311a();
                    }
                }
                m1315b();
            }

            /* renamed from: a */
            public void m1316a(C6453d c6453d) {
                C6453d[] c6453dArr = this.f23205a;
                int length = c6453dArr.length;
                int i = this.f23206b;
                if (length == i) {
                    C6453d[] c6453dArr2 = new C6453d[i * 2];
                    System.arraycopy(c6453dArr, 0, c6453dArr2, 0, i);
                    this.f23205a = c6453dArr2;
                }
                C6453d[] c6453dArr3 = this.f23205a;
                int i2 = this.f23206b;
                this.f23206b = i2 + 1;
                c6453dArr3[i2] = c6453d;
                m1313c();
            }

            /* renamed from: a */
            public boolean m1322a() {
                return this.f23206b == 0;
            }

            /* renamed from: a */
            public boolean m1320a(int i) {
                for (int i2 = 0; i2 < this.f23206b; i2++) {
                    if (this.f23205a[i2].f23208a == i) {
                        return true;
                    }
                }
                return false;
            }

            /* renamed from: b */
            public void m1315b() {
                int i = 0;
                while (i < this.f23206b) {
                    if (this.f23205a[i].f23212a) {
                        this.f23207c++;
                        m1314b(i);
                        i--;
                    }
                    i++;
                }
            }

            /* renamed from: b */
            public void m1314b(int i) {
                int i2;
                if (i < 0 || i >= (i2 = this.f23206b)) {
                    return;
                }
                C6453d[] c6453dArr = this.f23205a;
                int i3 = i2 - 1;
                this.f23206b = i3;
                c6453dArr[i] = c6453dArr[i3];
                c6453dArr[i3] = null;
                m1312c(i);
            }
        }

        C6451c(String str, boolean z) {
            setName(str);
            setDaemon(z);
            start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m1325a(C6453d c6453d) {
            this.f23199a.m1316a(c6453d);
            notify();
        }

        /* renamed from: a */
        public synchronized void m1331a() {
            this.f23202b = true;
            this.f23199a.m1323a();
            notify();
        }

        /* renamed from: a */
        public boolean m1330a() {
            return this.f23200a && SystemClock.uptimeMillis() - this.f23198a > 600000;
        }

        /* JADX WARN: Code restructure failed: missing block: B:50:0x008e, code lost:
            r10.f23198a = android.os.SystemClock.uptimeMillis();
            r10.f23200a = true;
            r2.f23210a.run();
            r10.f23200a = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x009f, code lost:
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00a0, code lost:
            monitor-enter(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00a1, code lost:
            r10.f23202b = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00a4, code lost:
            throw r1;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            while (true) {
                synchronized (this) {
                    if (this.f23202b) {
                        return;
                    }
                    if (!this.f23199a.m1322a()) {
                        long m1342a = C6448n.m1342a();
                        C6453d m1324a = this.f23199a.m1324a();
                        synchronized (m1324a.f23211a) {
                            if (m1324a.f23212a) {
                                this.f23199a.m1314b(0);
                            } else {
                                long j = m1324a.f23209a - m1342a;
                                if (j > 0) {
                                    long j2 = this.f23201b;
                                    if (j > j2) {
                                        j = j2;
                                    }
                                    long j3 = j2 + 50;
                                    this.f23201b = j3;
                                    if (j3 > 500) {
                                        this.f23201b = 500L;
                                    }
                                    wait(j);
                                } else {
                                    this.f23201b = 50L;
                                    synchronized (m1324a.f23211a) {
                                        int m1317a = this.f23199a.m1324a().f23209a != m1324a.f23209a ? this.f23199a.m1317a(m1324a) : 0;
                                        if (m1324a.f23212a) {
                                            C6452a c6452a = this.f23199a;
                                            c6452a.m1314b(c6452a.m1317a(m1324a));
                                        } else {
                                            m1324a.m1310a(m1324a.f23209a);
                                            this.f23199a.m1314b(m1317a);
                                            m1324a.f23209a = 0L;
                                        }
                                    }
                                }
                            }
                        }
                    } else if (this.f23203c) {
                        return;
                    } else {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.service.n$d */
    /* loaded from: classes2.dex */
    public static class C6453d {

        /* renamed from: a */
        int f23208a;

        /* renamed from: a */
        long f23209a;

        /* renamed from: a */
        AbstractRunnableC6450b f23210a;

        /* renamed from: a */
        final Object f23211a = new Object();

        /* renamed from: a */
        boolean f23212a;

        /* renamed from: b */
        private long f23213b;

        C6453d() {
        }

        /* renamed from: a */
        void m1310a(long j) {
            synchronized (this.f23211a) {
                this.f23213b = j;
            }
        }

        /* renamed from: a */
        public boolean m1311a() {
            boolean z;
            synchronized (this.f23211a) {
                z = !this.f23212a && this.f23209a > 0;
                this.f23212a = true;
            }
            return z;
        }
    }

    static {
        long elapsedRealtime = SystemClock.elapsedRealtime() > 0 ? SystemClock.elapsedRealtime() : 0L;
        f23191a = elapsedRealtime;
        f23192b = elapsedRealtime;
    }

    public C6448n() {
        this(false);
    }

    public C6448n(String str) {
        this(str, false);
    }

    public C6448n(String str, boolean z) {
        Objects.requireNonNull(str, "name == null");
        C6451c c6451c = new C6451c(str, z);
        this.f23195a = c6451c;
        this.f23194a = new C6449a(c6451c);
    }

    public C6448n(boolean z) {
        this("Timer-" + m1334b(), z);
    }

    /* renamed from: a */
    static synchronized long m1342a() {
        long j;
        synchronized (C6448n.class) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = f23192b;
            if (elapsedRealtime > j2) {
                f23191a += elapsedRealtime - j2;
            }
            f23192b = elapsedRealtime;
            j = f23191a;
        }
        return j;
    }

    /* renamed from: b */
    private static synchronized long m1334b() {
        long j;
        synchronized (C6448n.class) {
            j = f23193c;
            f23193c = 1 + j;
        }
        return j;
    }

    /* renamed from: b */
    private void m1332b(AbstractRunnableC6450b abstractRunnableC6450b, long j) {
        synchronized (this.f23195a) {
            if (this.f23195a.f23202b) {
                throw new IllegalStateException("Timer was canceled");
            }
            long m1342a = j + m1342a();
            if (m1342a < 0) {
                throw new IllegalArgumentException("Illegal delay to start the TimerTask: " + m1342a);
            }
            C6453d c6453d = new C6453d();
            c6453d.f23208a = abstractRunnableC6450b.f23197a;
            c6453d.f23210a = abstractRunnableC6450b;
            c6453d.f23209a = m1342a;
            this.f23195a.m1325a(c6453d);
        }
    }

    /* renamed from: a */
    public void m1341a() {
        AbstractC5876b.m4147a("quit. finalizer:" + this.f23194a);
        this.f23195a.m1331a();
    }

    /* renamed from: a */
    public void m1339a(int i) {
        synchronized (this.f23195a) {
            this.f23195a.f23199a.m1321a(i);
        }
    }

    /* renamed from: a */
    public void m1337a(int i, AbstractRunnableC6450b abstractRunnableC6450b) {
        synchronized (this.f23195a) {
            this.f23195a.f23199a.m1319a(i, abstractRunnableC6450b);
        }
    }

    /* renamed from: a */
    public void m1336a(AbstractRunnableC6450b abstractRunnableC6450b) {
        if (AbstractC5876b.m4158a() >= 1 || Thread.currentThread() == this.f23195a) {
            abstractRunnableC6450b.run();
        } else {
            AbstractC5876b.m4138d("run job outside job job thread");
            throw new RejectedExecutionException("Run job outside job thread");
        }
    }

    /* renamed from: a */
    public void m1335a(AbstractRunnableC6450b abstractRunnableC6450b, long j) {
        if (j >= 0) {
            m1332b(abstractRunnableC6450b, j);
            return;
        }
        throw new IllegalArgumentException("delay < 0: " + j);
    }

    /* renamed from: a */
    public boolean m1340a() {
        return this.f23195a.m1330a();
    }

    /* renamed from: a */
    public boolean m1338a(int i) {
        boolean m1320a;
        synchronized (this.f23195a) {
            m1320a = this.f23195a.f23199a.m1320a(i);
        }
        return m1320a;
    }

    /* renamed from: b */
    public void m1333b() {
        synchronized (this.f23195a) {
            this.f23195a.f23199a.m1323a();
        }
    }
}
