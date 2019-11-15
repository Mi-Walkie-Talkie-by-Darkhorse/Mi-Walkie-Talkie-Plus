package com.xiaomi.push.service;

import android.os.SystemClock;
import com.mi.milinkforgame.sdk.data.Const.Access;
import java.util.concurrent.RejectedExecutionException;

public class i {
    private static long a;
    private static long b = a;
    private static long c;
    private final c d;
    private final a e;

    private static final class a {
        private final c a;

        a(c cVar) {
            this.a = cVar;
        }

        /* access modifiers changed from: protected */
        public void finalize() {
            try {
                synchronized (this.a) {
                    this.a.e = true;
                    this.a.notify();
                }
            } finally {
                super.finalize();
            }
        }
    }

    public static abstract class b implements Runnable {
        protected int a;

        public b(int i) {
            this.a = i;
        }
    }

    private static final class c extends Thread {
        private volatile long a = 0;
        private volatile boolean b = false;
        private long c = 50;
        /* access modifiers changed from: private */
        public boolean d;
        /* access modifiers changed from: private */
        public boolean e;
        /* access modifiers changed from: private */
        public a f = new a();

        private static final class a {
            private int a;
            private d[] b;
            private int c;
            private int d;

            private a() {
                this.a = 256;
                this.b = new d[this.a];
                this.c = 0;
                this.d = 0;
            }

            /* access modifiers changed from: private */
            public int b(d dVar) {
                for (int i = 0; i < this.b.length; i++) {
                    if (this.b[i] == dVar) {
                        return i;
                    }
                }
                return -1;
            }

            private void d(int i) {
                int i2 = (i * 2) + 1;
                while (i2 < this.c && this.c > 0) {
                    int i3 = (i2 + 1 >= this.c || this.b[i2 + 1].c >= this.b[i2].c) ? i2 : i2 + 1;
                    if (this.b[i].c >= this.b[i3].c) {
                        d dVar = this.b[i];
                        this.b[i] = this.b[i3];
                        this.b[i3] = dVar;
                        i2 = (i3 * 2) + 1;
                        i = i3;
                    } else {
                        return;
                    }
                }
            }

            private void e() {
                int i = this.c - 1;
                for (int i2 = (i - 1) / 2; this.b[i].c < this.b[i2].c; i2 = (i2 - 1) / 2) {
                    d dVar = this.b[i];
                    this.b[i] = this.b[i2];
                    this.b[i2] = dVar;
                    i = i2;
                }
            }

            public d a() {
                return this.b[0];
            }

            public void a(int i, b bVar) {
                for (int i2 = 0; i2 < this.c; i2++) {
                    if (this.b[i2].d == bVar) {
                        this.b[i2].a();
                    }
                }
                d();
            }

            public void a(d dVar) {
                if (this.b.length == this.c) {
                    d[] dVarArr = new d[(this.c * 2)];
                    System.arraycopy(this.b, 0, dVarArr, 0, this.c);
                    this.b = dVarArr;
                }
                d[] dVarArr2 = this.b;
                int i = this.c;
                this.c = i + 1;
                dVarArr2[i] = dVar;
                e();
            }

            public boolean a(int i) {
                for (int i2 = 0; i2 < this.c; i2++) {
                    if (this.b[i2].e == i) {
                        return true;
                    }
                }
                return false;
            }

            public void b(int i) {
                for (int i2 = 0; i2 < this.c; i2++) {
                    if (this.b[i2].e == i) {
                        this.b[i2].a();
                    }
                }
                d();
            }

            public boolean b() {
                return this.c == 0;
            }

            public void c() {
                this.b = new d[this.a];
                this.c = 0;
            }

            public void c(int i) {
                if (i >= 0 && i < this.c) {
                    d[] dVarArr = this.b;
                    d[] dVarArr2 = this.b;
                    int i2 = this.c - 1;
                    this.c = i2;
                    dVarArr[i] = dVarArr2[i2];
                    this.b[this.c] = null;
                    d(i);
                }
            }

            public void d() {
                int i = 0;
                while (i < this.c) {
                    if (this.b[i].b) {
                        this.d++;
                        c(i);
                        i--;
                    }
                    i++;
                }
            }
        }

        c(String str, boolean z) {
            setName(str);
            setDaemon(z);
            start();
        }

        /* access modifiers changed from: private */
        public void a(d dVar) {
            this.f.a(dVar);
            notify();
        }

        public synchronized void a() {
            this.d = true;
            this.f.c();
            notify();
        }

        public boolean b() {
            return this.b && SystemClock.uptimeMillis() - this.a > Access.DefTimeThreshold;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:68:?, code lost:
            r8.a = android.os.SystemClock.uptimeMillis();
            r8.b = true;
            r2.d.run();
            r8.b = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:69:0x00b7, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:70:0x00b8, code lost:
            monitor-enter(r8);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:73:?, code lost:
            r8.d = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:75:0x00bd, code lost:
            throw r0;
         */
        /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r8 = this;
            L_0x0000:
                monitor-enter(r8)
                boolean r0 = r8.d     // Catch:{ all -> 0x0015 }
                if (r0 == 0) goto L_0x0007
                monitor-exit(r8)     // Catch:{ all -> 0x0015 }
            L_0x0006:
                return
            L_0x0007:
                com.xiaomi.push.service.i$c$a r0 = r8.f     // Catch:{ all -> 0x0015 }
                boolean r0 = r0.b()     // Catch:{ all -> 0x0015 }
                if (r0 == 0) goto L_0x001d
                boolean r0 = r8.e     // Catch:{ all -> 0x0015 }
                if (r0 == 0) goto L_0x0018
                monitor-exit(r8)     // Catch:{ all -> 0x0015 }
                goto L_0x0006
            L_0x0015:
                r0 = move-exception
                monitor-exit(r8)     // Catch:{ all -> 0x0015 }
                throw r0
            L_0x0018:
                r8.wait()     // Catch:{ InterruptedException -> 0x00c4 }
            L_0x001b:
                monitor-exit(r8)     // Catch:{ all -> 0x0015 }
                goto L_0x0000
            L_0x001d:
                long r0 = com.xiaomi.push.service.i.a()     // Catch:{ all -> 0x0015 }
                com.xiaomi.push.service.i$c$a r2 = r8.f     // Catch:{ all -> 0x0015 }
                com.xiaomi.push.service.i$d r2 = r2.a()     // Catch:{ all -> 0x0015 }
                java.lang.Object r3 = r2.a     // Catch:{ all -> 0x0015 }
                monitor-enter(r3)     // Catch:{ all -> 0x0015 }
                boolean r4 = r2.b     // Catch:{ all -> 0x0062 }
                if (r4 == 0) goto L_0x0037
                com.xiaomi.push.service.i$c$a r0 = r8.f     // Catch:{ all -> 0x0062 }
                r1 = 0
                r0.c(r1)     // Catch:{ all -> 0x0062 }
                monitor-exit(r3)     // Catch:{ all -> 0x0062 }
                monitor-exit(r8)     // Catch:{ all -> 0x0015 }
                goto L_0x0000
            L_0x0037:
                long r4 = r2.c     // Catch:{ all -> 0x0062 }
                long r0 = r4 - r0
                monitor-exit(r3)     // Catch:{ all -> 0x0062 }
                r4 = 0
                int r3 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
                if (r3 <= 0) goto L_0x0065
                long r2 = r8.c     // Catch:{ all -> 0x0015 }
                int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r2 <= 0) goto L_0x004a
                long r0 = r8.c     // Catch:{ all -> 0x0015 }
            L_0x004a:
                long r2 = r8.c     // Catch:{ all -> 0x0015 }
                r4 = 50
                long r2 = r2 + r4
                r8.c = r2     // Catch:{ all -> 0x0015 }
                long r2 = r8.c     // Catch:{ all -> 0x0015 }
                r4 = 500(0x1f4, double:2.47E-321)
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 <= 0) goto L_0x005d
                r2 = 500(0x1f4, double:2.47E-321)
                r8.c = r2     // Catch:{ all -> 0x0015 }
            L_0x005d:
                r8.wait(r0)     // Catch:{ InterruptedException -> 0x00c7 }
            L_0x0060:
                monitor-exit(r8)     // Catch:{ all -> 0x0015 }
                goto L_0x0000
            L_0x0062:
                r0 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x0062 }
                throw r0     // Catch:{ all -> 0x0015 }
            L_0x0065:
                r0 = 50
                r8.c = r0     // Catch:{ all -> 0x0015 }
                java.lang.Object r1 = r2.a     // Catch:{ all -> 0x0015 }
                monitor-enter(r1)     // Catch:{ all -> 0x0015 }
                r0 = 0
                com.xiaomi.push.service.i$c$a r3 = r8.f     // Catch:{ all -> 0x00be }
                com.xiaomi.push.service.i$d r3 = r3.a()     // Catch:{ all -> 0x00be }
                long r4 = r3.c     // Catch:{ all -> 0x00be }
                long r6 = r2.c     // Catch:{ all -> 0x00be }
                int r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r3 == 0) goto L_0x0081
                com.xiaomi.push.service.i$c$a r0 = r8.f     // Catch:{ all -> 0x00be }
                int r0 = r0.b(r2)     // Catch:{ all -> 0x00be }
            L_0x0081:
                boolean r3 = r2.b     // Catch:{ all -> 0x00be }
                if (r3 == 0) goto L_0x0094
                com.xiaomi.push.service.i$c$a r0 = r8.f     // Catch:{ all -> 0x00be }
                com.xiaomi.push.service.i$c$a r3 = r8.f     // Catch:{ all -> 0x00be }
                int r2 = r3.b(r2)     // Catch:{ all -> 0x00be }
                r0.c(r2)     // Catch:{ all -> 0x00be }
                monitor-exit(r1)     // Catch:{ all -> 0x00be }
                monitor-exit(r8)     // Catch:{ all -> 0x0015 }
                goto L_0x0000
            L_0x0094:
                long r4 = r2.c     // Catch:{ all -> 0x00be }
                r2.a(r4)     // Catch:{ all -> 0x00be }
                com.xiaomi.push.service.i$c$a r3 = r8.f     // Catch:{ all -> 0x00be }
                r3.c(r0)     // Catch:{ all -> 0x00be }
                r4 = 0
                r2.c = r4     // Catch:{ all -> 0x00be }
                monitor-exit(r1)     // Catch:{ all -> 0x00be }
                monitor-exit(r8)     // Catch:{ all -> 0x0015 }
                long r0 = android.os.SystemClock.uptimeMillis()     // Catch:{ all -> 0x00b7 }
                r8.a = r0     // Catch:{ all -> 0x00b7 }
                r0 = 1
                r8.b = r0     // Catch:{ all -> 0x00b7 }
                com.xiaomi.push.service.i$b r0 = r2.d     // Catch:{ all -> 0x00b7 }
                r0.run()     // Catch:{ all -> 0x00b7 }
                r0 = 0
                r8.b = r0     // Catch:{ all -> 0x00b7 }
                goto L_0x0000
            L_0x00b7:
                r0 = move-exception
                monitor-enter(r8)
                r1 = 1
                r8.d = r1     // Catch:{ all -> 0x00c1 }
                monitor-exit(r8)     // Catch:{ all -> 0x00c1 }
                throw r0
            L_0x00be:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x00be }
                throw r0     // Catch:{ all -> 0x0015 }
            L_0x00c1:
                r0 = move-exception
                monitor-exit(r8)     // Catch:{ all -> 0x00c1 }
                throw r0
            L_0x00c4:
                r0 = move-exception
                goto L_0x001b
            L_0x00c7:
                r0 = move-exception
                goto L_0x0060
            */
            throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.i.c.run():void");
        }
    }

    static class d {
        final Object a = new Object();
        boolean b;
        long c;
        b d;
        int e;
        private long f;

        d() {
        }

        /* access modifiers changed from: 0000 */
        public void a(long j) {
            synchronized (this.a) {
                this.f = j;
            }
        }

        public boolean a() {
            boolean z = true;
            synchronized (this.a) {
                if (this.b || this.c <= 0) {
                    z = false;
                }
                this.b = true;
            }
            return z;
        }
    }

    static {
        long j = 0;
        if (SystemClock.elapsedRealtime() > 0) {
            j = SystemClock.elapsedRealtime();
        }
        a = j;
    }

    public i() {
        this(false);
    }

    public i(String str) {
        this(str, false);
    }

    public i(String str, boolean z) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        this.d = new c(str, z);
        this.e = new a(this.d);
    }

    public i(boolean z) {
        this("Timer-" + e(), z);
    }

    static synchronized long a() {
        long j;
        synchronized (i.class) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime > b) {
                a += elapsedRealtime - b;
            }
            b = elapsedRealtime;
            j = a;
        }
        return j;
    }

    private void b(b bVar, long j) {
        synchronized (this.d) {
            if (this.d.d) {
                throw new IllegalStateException("Timer was canceled");
            }
            long a2 = a() + j;
            if (a2 < 0) {
                throw new IllegalArgumentException("Illegal delay to start the TimerTask: " + a2);
            }
            d dVar = new d();
            dVar.e = bVar.a;
            dVar.d = bVar;
            dVar.c = a2;
            this.d.a(dVar);
        }
    }

    private static synchronized long e() {
        long j;
        synchronized (i.class) {
            j = c;
            c = 1 + j;
        }
        return j;
    }

    public void a(int i, b bVar) {
        synchronized (this.d) {
            this.d.f.a(i, bVar);
        }
    }

    public void a(b bVar) {
        if (com.xiaomi.channel.commonutils.logger.b.a() >= 1 || Thread.currentThread() == this.d) {
            bVar.run();
        } else {
            com.xiaomi.channel.commonutils.logger.b.d("run job outside job job thread");
            throw new RejectedExecutionException("Run job outside job thread");
        }
    }

    public void a(b bVar, long j) {
        if (j < 0) {
            throw new IllegalArgumentException("delay < 0: " + j);
        }
        b(bVar, j);
    }

    public boolean a(int i) {
        boolean a2;
        synchronized (this.d) {
            a2 = this.d.f.a(i);
        }
        return a2;
    }

    public void b() {
        this.d.a();
    }

    public void b(int i) {
        synchronized (this.d) {
            this.d.f.b(i);
        }
    }

    public void c() {
        synchronized (this.d) {
            this.d.f.c();
        }
    }

    public boolean d() {
        return this.d.b();
    }
}
