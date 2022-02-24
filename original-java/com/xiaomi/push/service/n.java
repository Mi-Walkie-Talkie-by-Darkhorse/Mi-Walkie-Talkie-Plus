package com.xiaomi.push.service;

import android.os.SystemClock;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static long f9335a;

    /* renamed from: b  reason: collision with root package name */
    private static long f9336b;

    /* renamed from: c  reason: collision with root package name */
    private static long f9337c;

    /* renamed from: a  reason: collision with other field name */
    private final a f994a;

    /* renamed from: a  reason: collision with other field name */
    private final c f995a;

    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final c f9338a;

        a(c cVar) {
            this.f9338a = cVar;
        }

        protected void finalize() {
            try {
                synchronized (this.f9338a) {
                    this.f9338a.f9342c = true;
                    this.f9338a.notify();
                }
            } finally {
                super.finalize();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        protected int f9339a;

        public b(int i) {
            this.f9339a = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c extends Thread {

        /* renamed from: b  reason: collision with other field name */
        private boolean f998b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f9342c;

        /* renamed from: a  reason: collision with root package name */
        private volatile long f9340a = 0;

        /* renamed from: a  reason: collision with other field name */
        private volatile boolean f997a = false;

        /* renamed from: b  reason: collision with root package name */
        private long f9341b = 50;

        /* renamed from: a  reason: collision with other field name */
        private a f996a = new a();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private int f9343a;

            /* renamed from: a  reason: collision with other field name */
            private d[] f999a;

            /* renamed from: b  reason: collision with root package name */
            private int f9344b;

            /* renamed from: c  reason: collision with root package name */
            private int f9345c;

            private a() {
                this.f9343a = 256;
                this.f999a = new d[256];
                this.f9344b = 0;
                this.f9345c = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int a(d dVar) {
                int i = 0;
                while (true) {
                    d[] dVarArr = this.f999a;
                    if (i >= dVarArr.length) {
                        return -1;
                    }
                    if (dVarArr[i] == dVar) {
                        return i;
                    }
                    i++;
                }
            }

            private void c() {
                int i = this.f9344b - 1;
                int i2 = (i - 1) / 2;
                while (true) {
                    d[] dVarArr = this.f999a;
                    if (dVarArr[i].f1000a < dVarArr[i2].f1000a) {
                        d dVar = dVarArr[i];
                        dVarArr[i] = dVarArr[i2];
                        dVarArr[i2] = dVar;
                        i2 = (i2 - 1) / 2;
                        i = i2;
                    } else {
                        return;
                    }
                }
            }

            private void c(int i) {
                int i2 = (i * 2) + 1;
                while (true) {
                    int i3 = this.f9344b;
                    if (i2 < i3 && i3 > 0) {
                        int i4 = i2 + 1;
                        if (i4 < i3) {
                            d[] dVarArr = this.f999a;
                            if (dVarArr[i4].f1000a < dVarArr[i2].f1000a) {
                                i2 = i4;
                            }
                        }
                        d[] dVarArr2 = this.f999a;
                        if (dVarArr2[i].f1000a >= dVarArr2[i2].f1000a) {
                            d dVar = dVarArr2[i];
                            dVarArr2[i] = dVarArr2[i2];
                            dVarArr2[i2] = dVar;
                            i2 = (i2 * 2) + 1;
                            i = i2;
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }

            public d a() {
                return this.f999a[0];
            }

            /* renamed from: a  reason: collision with other method in class */
            public void m642a() {
                this.f999a = new d[this.f9343a];
                this.f9344b = 0;
            }

            public void a(int i) {
                for (int i2 = 0; i2 < this.f9344b; i2++) {
                    d[] dVarArr = this.f999a;
                    if (dVarArr[i2].f9346a == i) {
                        dVarArr[i2].a();
                    }
                }
                b();
            }

            public void a(int i, b bVar) {
                for (int i2 = 0; i2 < this.f9344b; i2++) {
                    d[] dVarArr = this.f999a;
                    if (dVarArr[i2].f1001a == bVar) {
                        dVarArr[i2].a();
                    }
                }
                b();
            }

            /* renamed from: a  reason: collision with other method in class */
            public void m643a(d dVar) {
                d[] dVarArr = this.f999a;
                int length = dVarArr.length;
                int i = this.f9344b;
                if (length == i) {
                    d[] dVarArr2 = new d[i * 2];
                    System.arraycopy(dVarArr, 0, dVarArr2, 0, i);
                    this.f999a = dVarArr2;
                }
                d[] dVarArr3 = this.f999a;
                int i2 = this.f9344b;
                this.f9344b = i2 + 1;
                dVarArr3[i2] = dVar;
                c();
            }

            /* renamed from: a  reason: collision with other method in class */
            public boolean m644a() {
                return this.f9344b == 0;
            }

            /* renamed from: a  reason: collision with other method in class */
            public boolean m645a(int i) {
                for (int i2 = 0; i2 < this.f9344b; i2++) {
                    if (this.f999a[i2].f9346a == i) {
                        return true;
                    }
                }
                return false;
            }

            public void b() {
                int i = 0;
                while (i < this.f9344b) {
                    if (this.f999a[i].f1003a) {
                        this.f9345c++;
                        b(i);
                        i--;
                    }
                    i++;
                }
            }

            public void b(int i) {
                int i2;
                if (i >= 0 && i < (i2 = this.f9344b)) {
                    d[] dVarArr = this.f999a;
                    int i3 = i2 - 1;
                    this.f9344b = i3;
                    dVarArr[i] = dVarArr[i3];
                    dVarArr[i3] = null;
                    c(i);
                }
            }
        }

        c(String str, boolean z) {
            setName(str);
            setDaemon(z);
            start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(d dVar) {
            this.f996a.m643a(dVar);
            notify();
        }

        public synchronized void a() {
            this.f998b = true;
            this.f996a.m642a();
            notify();
        }

        /* renamed from: a  reason: collision with other method in class */
        public boolean m641a() {
            return this.f997a && SystemClock.uptimeMillis() - this.f9340a > 600000;
        }

        /* JADX WARN: Code restructure failed: missing block: B:49:0x0093, code lost:
            r10.f9340a = android.os.SystemClock.uptimeMillis();
            r10.f997a = true;
            r2.f1001a.run();
            r10.f997a = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00a4, code lost:
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00a5, code lost:
            monitor-enter(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a6, code lost:
            r10.f998b = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00a9, code lost:
            throw r1;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r10 = this;
            L_0x0000:
                monitor-enter(r10)
                boolean r0 = r10.f998b     // Catch: all -> 0x00b3
                if (r0 == 0) goto L_0x0007
                monitor-exit(r10)     // Catch: all -> 0x00b3
                return
            L_0x0007:
                com.xiaomi.push.service.n$c$a r0 = r10.f996a     // Catch: all -> 0x00b3
                boolean r0 = r0.m644a()     // Catch: all -> 0x00b3
                if (r0 == 0) goto L_0x001a
                boolean r0 = r10.f9342c     // Catch: all -> 0x00b3
                if (r0 == 0) goto L_0x0015
                monitor-exit(r10)     // Catch: all -> 0x00b3
                return
            L_0x0015:
                r10.wait()     // Catch: InterruptedException -> 0x0018, all -> 0x00b3
            L_0x0018:
                monitor-exit(r10)     // Catch: all -> 0x00b3
                goto L_0x0000
            L_0x001a:
                long r0 = com.xiaomi.push.service.n.a()     // Catch: all -> 0x00b3
                com.xiaomi.push.service.n$c$a r2 = r10.f996a     // Catch: all -> 0x00b3
                com.xiaomi.push.service.n$d r2 = r2.a()     // Catch: all -> 0x00b3
                java.lang.Object r3 = r2.f1002a     // Catch: all -> 0x00b3
                monitor-enter(r3)     // Catch: all -> 0x00b3
                boolean r4 = r2.f1003a     // Catch: all -> 0x00b0
                r5 = 0
                if (r4 == 0) goto L_0x0033
                com.xiaomi.push.service.n$c$a r0 = r10.f996a     // Catch: all -> 0x00b0
                r0.b(r5)     // Catch: all -> 0x00b0
                monitor-exit(r3)     // Catch: all -> 0x00b0
                goto L_0x0018
            L_0x0033:
                long r6 = r2.f1000a     // Catch: all -> 0x00b0
                long r6 = r6 - r0
                monitor-exit(r3)     // Catch: all -> 0x00b0
                r0 = 50
                r3 = 0
                int r8 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
                if (r8 <= 0) goto L_0x0058
                long r2 = r10.f9341b     // Catch: all -> 0x00b3
                int r4 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
                if (r4 <= 0) goto L_0x0047
                long r6 = r10.f9341b     // Catch: all -> 0x00b3
            L_0x0047:
                long r2 = r10.f9341b     // Catch: all -> 0x00b3
                long r2 = r2 + r0
                r10.f9341b = r2     // Catch: all -> 0x00b3
                r0 = 500(0x1f4, double:2.47E-321)
                int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                if (r4 <= 0) goto L_0x0054
                r10.f9341b = r0     // Catch: all -> 0x00b3
            L_0x0054:
                r10.wait(r6)     // Catch: InterruptedException -> 0x0018, all -> 0x00b3
                goto L_0x0018
            L_0x0058:
                r10.f9341b = r0     // Catch: all -> 0x00b3
                java.lang.Object r0 = r2.f1002a     // Catch: all -> 0x00b3
                monitor-enter(r0)     // Catch: all -> 0x00b3
                com.xiaomi.push.service.n$c$a r1 = r10.f996a     // Catch: all -> 0x00ad
                com.xiaomi.push.service.n$d r1 = r1.a()     // Catch: all -> 0x00ad
                long r6 = r1.f1000a     // Catch: all -> 0x00ad
                long r8 = r2.f1000a     // Catch: all -> 0x00ad
                int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r1 == 0) goto L_0x0072
                com.xiaomi.push.service.n$c$a r1 = r10.f996a     // Catch: all -> 0x00ad
                int r1 = com.xiaomi.push.service.n.c.a.a(r1, r2)     // Catch: all -> 0x00ad
                goto L_0x0073
            L_0x0072:
                r1 = 0
            L_0x0073:
                boolean r6 = r2.f1003a     // Catch: all -> 0x00ad
                if (r6 == 0) goto L_0x0084
                com.xiaomi.push.service.n$c$a r1 = r10.f996a     // Catch: all -> 0x00ad
                com.xiaomi.push.service.n$c$a r3 = r10.f996a     // Catch: all -> 0x00ad
                int r2 = com.xiaomi.push.service.n.c.a.a(r3, r2)     // Catch: all -> 0x00ad
                r1.b(r2)     // Catch: all -> 0x00ad
                monitor-exit(r0)     // Catch: all -> 0x00ad
                goto L_0x0018
            L_0x0084:
                long r6 = r2.f1000a     // Catch: all -> 0x00ad
                r2.a(r6)     // Catch: all -> 0x00ad
                com.xiaomi.push.service.n$c$a r6 = r10.f996a     // Catch: all -> 0x00ad
                r6.b(r1)     // Catch: all -> 0x00ad
                r2.f1000a = r3     // Catch: all -> 0x00ad
                monitor-exit(r0)     // Catch: all -> 0x00ad
                monitor-exit(r10)     // Catch: all -> 0x00b3
                r0 = 1
                long r3 = android.os.SystemClock.uptimeMillis()     // Catch: all -> 0x00a4
                r10.f9340a = r3     // Catch: all -> 0x00a4
                r10.f997a = r0     // Catch: all -> 0x00a4
                com.xiaomi.push.service.n$b r1 = r2.f1001a     // Catch: all -> 0x00a4
                r1.run()     // Catch: all -> 0x00a4
                r10.f997a = r5     // Catch: all -> 0x00a4
                goto L_0x0000
            L_0x00a4:
                r1 = move-exception
                monitor-enter(r10)
                r10.f998b = r0     // Catch: all -> 0x00aa
                monitor-exit(r10)     // Catch: all -> 0x00aa
                throw r1
            L_0x00aa:
                r0 = move-exception
                monitor-exit(r10)     // Catch: all -> 0x00aa
                throw r0
            L_0x00ad:
                r1 = move-exception
                monitor-exit(r0)     // Catch: all -> 0x00ad
                throw r1     // Catch: all -> 0x00b3
            L_0x00b0:
                r0 = move-exception
                monitor-exit(r3)     // Catch: all -> 0x00b0
                throw r0     // Catch: all -> 0x00b3
            L_0x00b3:
                r0 = move-exception
                monitor-exit(r10)     // Catch: all -> 0x00b3
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.n.c.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        int f9346a;

        /* renamed from: a  reason: collision with other field name */
        long f1000a;

        /* renamed from: a  reason: collision with other field name */
        b f1001a;

        /* renamed from: a  reason: collision with other field name */
        final Object f1002a = new Object();

        /* renamed from: a  reason: collision with other field name */
        boolean f1003a;

        /* renamed from: b  reason: collision with root package name */
        private long f9347b;

        d() {
        }

        void a(long j) {
            synchronized (this.f1002a) {
                this.f9347b = j;
            }
        }

        public boolean a() {
            boolean z;
            synchronized (this.f1002a) {
                z = !this.f1003a && this.f1000a > 0;
                this.f1003a = true;
            }
            return z;
        }
    }

    static {
        long j = 0;
        if (SystemClock.elapsedRealtime() > 0) {
            j = SystemClock.elapsedRealtime();
        }
        f9335a = j;
        f9336b = j;
    }

    public n() {
        this(false);
    }

    public n(String str) {
        this(str, false);
    }

    public n(String str, boolean z) {
        if (str != null) {
            c cVar = new c(str, z);
            this.f995a = cVar;
            this.f994a = new a(cVar);
            return;
        }
        throw new NullPointerException("name == null");
    }

    public n(boolean z) {
        this("Timer-" + b(), z);
    }

    static synchronized long a() {
        long j;
        synchronized (n.class) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime > f9336b) {
                f9335a += elapsedRealtime - f9336b;
            }
            f9336b = elapsedRealtime;
            j = f9335a;
        }
        return j;
    }

    private static synchronized long b() {
        long j;
        synchronized (n.class) {
            j = f9337c;
            f9337c = 1 + j;
        }
        return j;
    }

    private void b(b bVar, long j) {
        synchronized (this.f995a) {
            if (!this.f995a.f998b) {
                long a2 = j + a();
                if (a2 >= 0) {
                    d dVar = new d();
                    dVar.f9346a = bVar.f9339a;
                    dVar.f1001a = bVar;
                    dVar.f1000a = a2;
                    this.f995a.a(dVar);
                } else {
                    throw new IllegalArgumentException("Illegal delay to start the TimerTask: " + a2);
                }
            } else {
                throw new IllegalStateException("Timer was canceled");
            }
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m637a() {
        com.xiaomi.channel.commonutils.logger.b.m1a("quit. finalizer:" + this.f994a);
        this.f995a.a();
    }

    public void a(int i) {
        synchronized (this.f995a) {
            this.f995a.f996a.a(i);
        }
    }

    public void a(int i, b bVar) {
        synchronized (this.f995a) {
            this.f995a.f996a.a(i, bVar);
        }
    }

    public void a(b bVar) {
        if (com.xiaomi.channel.commonutils.logger.b.a() >= 1 || Thread.currentThread() == this.f995a) {
            bVar.run();
        } else {
            com.xiaomi.channel.commonutils.logger.b.d("run job outside job job thread");
            throw new RejectedExecutionException("Run job outside job thread");
        }
    }

    public void a(b bVar, long j) {
        if (j >= 0) {
            b(bVar, j);
            return;
        }
        throw new IllegalArgumentException("delay < 0: " + j);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m638a() {
        return this.f995a.m641a();
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m639a(int i) {
        boolean a2;
        synchronized (this.f995a) {
            a2 = this.f995a.f996a.m645a(i);
        }
        return a2;
    }

    /* renamed from: b  reason: collision with other method in class */
    public void m640b() {
        synchronized (this.f995a) {
            this.f995a.f996a.m642a();
        }
    }
}
