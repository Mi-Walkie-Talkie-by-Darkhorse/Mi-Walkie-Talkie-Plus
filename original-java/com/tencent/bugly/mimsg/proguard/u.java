package com.tencent.bugly.mimsg.proguard;

import android.content.Context;
import android.os.Process;
import android.util.Base64;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.data.Error;
import com.tencent.bugly.mimsg.b;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: BUGLY */
public final class u {
    private static u b = null;
    public boolean a = true;
    private final p c;
    private final Context d;
    private Map<Integer, Long> e = new HashMap();
    private long f;
    private long g;
    private LinkedBlockingQueue<Runnable> h = new LinkedBlockingQueue<>();
    private LinkedBlockingQueue<Runnable> i = new LinkedBlockingQueue<>();
    /* access modifiers changed from: private */
    public final Object j = new Object();
    private String k = null;
    private byte[] l = null;
    private long m = 0;
    /* access modifiers changed from: private */
    public byte[] n = null;
    private long o = 0;
    /* access modifiers changed from: private */
    public String p = null;
    private long q = 0;
    private final Object r = new Object();
    /* access modifiers changed from: private */
    public boolean s = false;
    /* access modifiers changed from: private */
    public final Object t = new Object();
    private int u = 0;

    /* compiled from: BUGLY */
    class a implements Runnable {
        private final Context a;
        private final Runnable b;
        private final long c;

        public a(Context context) {
            this.a = context;
            this.b = null;
            this.c = 0;
        }

        public a(Context context, Runnable runnable, long j) {
            this.a = context;
            this.b = runnable;
            this.c = j;
        }

        public final void run() {
            if (!z.a(this.a, "security_info", 30000)) {
                x.c("[UploadManager] Sleep %d try to lock security file again (pid=%d | tid=%d)", Integer.valueOf(5000), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                z.b(5000);
                if (z.a((Runnable) this, "BUGLY_ASYNC_UPLOAD") == null) {
                    x.d("[UploadManager] Failed to start a thread to execute task of initializing security context, try to post it into thread pool.", new Object[0]);
                    w a2 = w.a();
                    if (a2 != null) {
                        a2.a(this);
                    } else {
                        x.e("[UploadManager] Asynchronous thread pool is unavailable now, try next time.", new Object[0]);
                    }
                }
            } else {
                if (!u.this.e()) {
                    x.d("[UploadManager] Failed to load security info from database", new Object[0]);
                    u.this.b(false);
                }
                if (u.this.p != null) {
                    if (u.this.b()) {
                        x.c("[UploadManager] Sucessfully got session ID, try to execute upload tasks now (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                        if (this.b != null) {
                            u.this.a(this.b, this.c);
                        }
                        u.this.c(0);
                        z.b(this.a, "security_info");
                        synchronized (u.this.t) {
                            u.this.s = false;
                        }
                        return;
                    }
                    x.a("[UploadManager] Session ID is expired, drop it.", new Object[0]);
                    u.this.b(true);
                }
                byte[] a3 = z.a(128);
                if (a3 == null || (a3.length << 3) != 128) {
                    x.d("[UploadManager] Failed to create AES key (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                    u.this.b(false);
                    z.b(this.a, "security_info");
                    synchronized (u.this.t) {
                        u.this.s = false;
                    }
                    return;
                }
                u.this.n = a3;
                x.c("[UploadManager] Execute one upload task for requesting session ID (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                if (this.b != null) {
                    u.this.a(this.b, this.c);
                } else {
                    u.this.c(1);
                }
            }
        }
    }

    static /* synthetic */ int b(u uVar) {
        int i2 = uVar.u - 1;
        uVar.u = i2;
        return i2;
    }

    private u(Context context) {
        this.d = context;
        this.c = p.a();
        try {
            Class.forName("android.util.Base64");
        } catch (ClassNotFoundException e2) {
            x.a("[UploadManager] Error: Can not find Base64 class, will not use stronger security way to upload", new Object[0]);
            this.a = false;
        }
        if (this.a) {
            StringBuilder sb = new StringBuilder();
            sb.append("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDP9x32s5pPtZBXzJBz2GWM/sbTvVO2+RvW0PH01IdaBxc/").append("fB6fbHZocC9T3nl1+J5eAFjIRVuV8vHDky7Qo82Mnh0PVvcZIEQvMMVKU8dsMQopxgsOs2gkSHJwgWdinKNS8CmWobo6pFwPUW11lMv714jAUZRq2GBOqiO2vQI6iwIDAQAB");
            this.k = sb.toString();
        }
    }

    public static synchronized u a(Context context) {
        u uVar;
        synchronized (u.class) {
            if (b == null) {
                b = new u(context);
            }
            uVar = b;
        }
        return uVar;
    }

    public static synchronized u a() {
        u uVar;
        synchronized (u.class) {
            uVar = b;
        }
        return uVar;
    }

    public final void a(int i2, am amVar, String str, String str2, t tVar, long j2, boolean z) {
        try {
            a(new v(this.d, i2, amVar.g, a.a((Object) amVar), str, str2, tVar, this.a, z), true, true, j2);
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public final void a(int i2, int i3, byte[] bArr, String str, String str2, t tVar, int i4, int i5, boolean z, Map<String, String> map) {
        try {
            a(new v(this.d, i2, i3, bArr, str, str2, tVar, this.a, i4, i5, false, map), z, false, 0);
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public final void a(int i2, am amVar, String str, String str2, t tVar, boolean z) {
        a(i2, amVar.g, a.a((Object) amVar), str, str2, tVar, 0, 0, z, null);
    }

    public final long a(boolean z) {
        long j2;
        long j3 = 0;
        long b2 = z.b();
        int i2 = z ? 5 : 3;
        List a2 = this.c.a(i2);
        if (a2 == null || a2.size() <= 0) {
            j2 = z ? this.g : this.f;
        } else {
            try {
                r rVar = (r) a2.get(0);
                if (rVar.e >= b2) {
                    j3 = z.c(rVar.g);
                    if (i2 == 3) {
                        this.f = j3;
                    } else {
                        this.g = j3;
                    }
                    a2.remove(rVar);
                }
                j2 = j3;
            } catch (Throwable th) {
                Throwable th2 = th;
                j2 = j3;
                x.a(th2);
            }
            if (a2.size() > 0) {
                this.c.a(a2);
            }
        }
        x.c("[UploadManager] Local network consume: %d KB", Long.valueOf(j2 / 1024));
        return j2;
    }

    /* access modifiers changed from: protected */
    public final synchronized void a(long j2, boolean z) {
        int i2 = z ? 5 : 3;
        r rVar = new r();
        rVar.b = i2;
        rVar.e = z.b();
        rVar.c = "";
        rVar.d = "";
        rVar.g = z.c(j2);
        this.c.b(i2);
        this.c.a(rVar);
        if (z) {
            this.g = j2;
        } else {
            this.f = j2;
        }
        x.c("[UploadManager] Network total consume: %d KB", Long.valueOf(j2 / 1024));
    }

    public final synchronized void a(int i2, long j2) {
        if (i2 >= 0) {
            this.e.put(Integer.valueOf(i2), Long.valueOf(j2));
            r rVar = new r();
            rVar.b = i2;
            rVar.e = j2;
            rVar.c = "";
            rVar.d = "";
            rVar.g = new byte[0];
            this.c.b(i2);
            this.c.a(rVar);
            x.c("[UploadManager] Uploading(ID:%d) time: %s", Integer.valueOf(i2), z.a(j2));
        } else {
            x.e("[UploadManager] Unknown uploading ID: %d", Integer.valueOf(i2));
        }
    }

    public final synchronized long a(int i2) {
        long j2;
        long j3;
        j2 = 0;
        if (i2 >= 0) {
            Long l2 = (Long) this.e.get(Integer.valueOf(i2));
            if (l2 != null) {
                j2 = l2.longValue();
            } else {
                List<r> a2 = this.c.a(i2);
                if (a2 != null && a2.size() > 0) {
                    if (a2.size() > 1) {
                        for (r rVar : a2) {
                            if (rVar.e > j2) {
                                j3 = rVar.e;
                            } else {
                                j3 = j2;
                            }
                            j2 = j3;
                        }
                        this.c.b(i2);
                    } else {
                        try {
                            j2 = ((r) a2.get(0)).e;
                        } catch (Throwable th) {
                            x.a(th);
                        }
                    }
                }
            }
        } else {
            x.e("[UploadManager] Unknown upload ID: %d", Integer.valueOf(i2));
        }
        return j2;
    }

    public final boolean b(int i2) {
        if (b.c) {
            x.c("Uploading frequency will not be checked if SDK is in debug mode.", new Object[0]);
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis() - a(i2);
        x.c("[UploadManager] Time interval is %d seconds since last uploading(ID: %d).", Long.valueOf(currentTimeMillis / 1000), Integer.valueOf(i2));
        if (currentTimeMillis >= 30000) {
            return true;
        }
        x.a("[UploadManager] Data only be uploaded once in %d seconds.", Long.valueOf(30));
        return false;
    }

    private static boolean c() {
        x.c("[UploadManager] Drop security info of database (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        try {
            p a2 = p.a();
            if (a2 != null) {
                return a2.a((int) Error.TLV_DECOMPRESS_FAIL, "security_info", (o) null, true);
            }
            x.d("[UploadManager] Failed to get Database", new Object[0]);
            return false;
        } catch (Throwable th) {
            x.a(th);
            return false;
        }
    }

    private boolean d() {
        x.c("[UploadManager] Record security info to database (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        try {
            p a2 = p.a();
            if (a2 == null) {
                x.d("[UploadManager] Failed to get database", new Object[0]);
                return false;
            }
            StringBuilder sb = new StringBuilder();
            if (this.n != null) {
                sb.append(Base64.encodeToString(this.n, 0));
                sb.append("#");
                if (this.o != 0) {
                    sb.append(Long.toString(this.o));
                } else {
                    sb.append("null");
                }
                sb.append("#");
                if (this.p != null) {
                    sb.append(this.p);
                } else {
                    sb.append("null");
                }
                sb.append("#");
                if (this.q != 0) {
                    sb.append(Long.toString(this.q));
                } else {
                    sb.append("null");
                }
                a2.a((int) Error.TLV_DECOMPRESS_FAIL, "security_info", sb.toString().getBytes(), (o) null, true);
                return true;
            }
            x.c("[UploadManager] AES key is null, will not record", new Object[0]);
            return false;
        } catch (Throwable th) {
            x.a(th);
            c();
            return false;
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean e() {
        /*
            r8 = this;
            r3 = 2
            r1 = 0
            r2 = 1
            java.lang.String r0 = "[UploadManager] Load security info from database (pid=%d | tid=%d)"
            java.lang.Object[] r3 = new java.lang.Object[r3]
            int r4 = android.os.Process.myPid()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3[r1] = r4
            int r4 = android.os.Process.myTid()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3[r2] = r4
            com.tencent.bugly.mimsg.proguard.x.c(r0, r3)
            com.tencent.bugly.mimsg.proguard.p r0 = com.tencent.bugly.mimsg.proguard.p.a()     // Catch:{ Throwable -> 0x00fe }
            if (r0 != 0) goto L_0x002e
            java.lang.String r0 = "[UploadManager] Failed to get database"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x00fe }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r2)     // Catch:{ Throwable -> 0x00fe }
            r0 = r1
        L_0x002d:
            return r0
        L_0x002e:
            r3 = 555(0x22b, float:7.78E-43)
            r4 = 0
            r5 = 1
            java.util.Map r0 = r0.a(r3, r4, r5)     // Catch:{ Throwable -> 0x00fe }
            if (r0 == 0) goto L_0x00d4
            java.lang.String r3 = "security_info"
            boolean r3 = r0.containsKey(r3)     // Catch:{ Throwable -> 0x00fe }
            if (r3 == 0) goto L_0x00d4
            java.lang.String r3 = new java.lang.String     // Catch:{ Throwable -> 0x00fe }
            java.lang.String r4 = "security_info"
            java.lang.Object r0 = r0.get(r4)     // Catch:{ Throwable -> 0x00fe }
            byte[] r0 = (byte[]) r0     // Catch:{ Throwable -> 0x00fe }
            r3.<init>(r0)     // Catch:{ Throwable -> 0x00fe }
            java.lang.String r0 = "#"
            java.lang.String[] r4 = r3.split(r0)     // Catch:{ Throwable -> 0x00fe }
            int r0 = r4.length     // Catch:{ Throwable -> 0x00fe }
            r5 = 4
            if (r0 != r5) goto L_0x00e9
            r0 = 0
            r0 = r4[r0]     // Catch:{ Throwable -> 0x00fe }
            boolean r0 = r0.isEmpty()     // Catch:{ Throwable -> 0x00fe }
            if (r0 != 0) goto L_0x0105
            r0 = 0
            r0 = r4[r0]     // Catch:{ Throwable -> 0x00fe }
            java.lang.String r3 = "null"
            boolean r0 = r0.equals(r3)     // Catch:{ Throwable -> 0x00fe }
            if (r0 != 0) goto L_0x0105
            r0 = 0
            r0 = r4[r0]     // Catch:{ Throwable -> 0x00d7 }
            r3 = 0
            byte[] r0 = android.util.Base64.decode(r0, r3)     // Catch:{ Throwable -> 0x00d7 }
            r8.n = r0     // Catch:{ Throwable -> 0x00d7 }
            r0 = r1
        L_0x0076:
            if (r0 != 0) goto L_0x0095
            r3 = 1
            r3 = r4[r3]     // Catch:{ Throwable -> 0x00fe }
            boolean r3 = r3.isEmpty()     // Catch:{ Throwable -> 0x00fe }
            if (r3 != 0) goto L_0x0095
            r3 = 1
            r3 = r4[r3]     // Catch:{ Throwable -> 0x00fe }
            java.lang.String r5 = "null"
            boolean r3 = r3.equals(r5)     // Catch:{ Throwable -> 0x00fe }
            if (r3 != 0) goto L_0x0095
            r3 = 1
            r3 = r4[r3]     // Catch:{ Throwable -> 0x00dd }
            long r6 = java.lang.Long.parseLong(r3)     // Catch:{ Throwable -> 0x00dd }
            r8.o = r6     // Catch:{ Throwable -> 0x00dd }
        L_0x0095:
            if (r0 != 0) goto L_0x00b0
            r3 = 2
            r3 = r4[r3]     // Catch:{ Throwable -> 0x00fe }
            boolean r3 = r3.isEmpty()     // Catch:{ Throwable -> 0x00fe }
            if (r3 != 0) goto L_0x00b0
            r3 = 2
            r3 = r4[r3]     // Catch:{ Throwable -> 0x00fe }
            java.lang.String r5 = "null"
            boolean r3 = r3.equals(r5)     // Catch:{ Throwable -> 0x00fe }
            if (r3 != 0) goto L_0x00b0
            r3 = 2
            r3 = r4[r3]     // Catch:{ Throwable -> 0x00fe }
            r8.p = r3     // Catch:{ Throwable -> 0x00fe }
        L_0x00b0:
            if (r0 != 0) goto L_0x00cf
            r3 = 3
            r3 = r4[r3]     // Catch:{ Throwable -> 0x00fe }
            boolean r3 = r3.isEmpty()     // Catch:{ Throwable -> 0x00fe }
            if (r3 != 0) goto L_0x00cf
            r3 = 3
            r3 = r4[r3]     // Catch:{ Throwable -> 0x00fe }
            java.lang.String r5 = "null"
            boolean r3 = r3.equals(r5)     // Catch:{ Throwable -> 0x00fe }
            if (r3 != 0) goto L_0x00cf
            r3 = 3
            r3 = r4[r3]     // Catch:{ Throwable -> 0x00e3 }
            long r4 = java.lang.Long.parseLong(r3)     // Catch:{ Throwable -> 0x00e3 }
            r8.q = r4     // Catch:{ Throwable -> 0x00e3 }
        L_0x00cf:
            if (r0 == 0) goto L_0x00d4
            c()     // Catch:{ Throwable -> 0x00fe }
        L_0x00d4:
            r0 = r2
            goto L_0x002d
        L_0x00d7:
            r0 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ Throwable -> 0x00fe }
            r0 = r2
            goto L_0x0076
        L_0x00dd:
            r0 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ Throwable -> 0x00fe }
            r0 = r2
            goto L_0x0095
        L_0x00e3:
            r0 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ Throwable -> 0x00fe }
            r0 = r2
            goto L_0x00cf
        L_0x00e9:
            java.lang.String r0 = "SecurityInfo = %s, Strings.length = %d"
            r5 = 2
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ Throwable -> 0x00fe }
            r6 = 0
            r5[r6] = r3     // Catch:{ Throwable -> 0x00fe }
            r3 = 1
            int r4 = r4.length     // Catch:{ Throwable -> 0x00fe }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ Throwable -> 0x00fe }
            r5[r3] = r4     // Catch:{ Throwable -> 0x00fe }
            com.tencent.bugly.mimsg.proguard.x.a(r0, r5)     // Catch:{ Throwable -> 0x00fe }
            r0 = r2
            goto L_0x00cf
        L_0x00fe:
            r0 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r0)
            r0 = r1
            goto L_0x002d
        L_0x0105:
            r0 = r1
            goto L_0x0076
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.u.e():boolean");
    }

    /* access modifiers changed from: protected */
    public final boolean b() {
        if (this.p == null || this.q == 0) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis() + this.m;
        if (this.q >= currentTimeMillis) {
            return true;
        }
        x.c("[UploadManager] Session ID expired time from server is: %d(%s), but now is: %d(%s)", Long.valueOf(this.q), new Date(this.q).toString(), Long.valueOf(currentTimeMillis), new Date(currentTimeMillis).toString());
        return false;
    }

    /* access modifiers changed from: protected */
    public final void b(boolean z) {
        synchronized (this.r) {
            x.c("[UploadManager] Clear security context (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            this.n = null;
            this.p = null;
            this.q = 0;
        }
        if (z) {
            c();
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:100:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00c5, code lost:
        if (r15 <= 0) goto L_0x00e8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00c7, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)", java.lang.Integer.valueOf(r15), java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00e8, code lost:
        r3 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00e9, code lost:
        if (r3 >= r15) goto L_0x0139;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00eb, code lost:
        r0 = (java.lang.Runnable) r5.poll();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00f1, code lost:
        if (r0 == null) goto L_0x0139;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00f3, code lost:
        r7 = r14.j;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00f5, code lost:
        monitor-enter(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x00f8, code lost:
        if (r14.u < 2) goto L_0x0104;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x00fa, code lost:
        if (r4 == null) goto L_0x0104;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x00fc, code lost:
        r4.a(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x00ff, code lost:
        monitor-exit(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0100, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0104, code lost:
        monitor-exit(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x0105, code lost:
        com.tencent.bugly.mimsg.proguard.x.a("[UploadManager] Create and start a new thread to execute a upload task: %s", "BUGLY_ASYNC_UPLOAD");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x011b, code lost:
        if (com.tencent.bugly.mimsg.proguard.z.a((java.lang.Runnable) new com.tencent.bugly.mimsg.proguard.u.AnonymousClass1(r14), "BUGLY_ASYNC_UPLOAD") == null) goto L_0x012e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x011d, code lost:
        r7 = r14.j;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x011f, code lost:
        monitor-enter(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:?, code lost:
        r14.u++;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0126, code lost:
        monitor-exit(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x012e, code lost:
        com.tencent.bugly.mimsg.proguard.x.d("[UploadManager] Failed to start a thread to execute asynchronous upload task, will try again next time.", new java.lang.Object[0]);
        a(r0, true);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x0139, code lost:
        if (r1 <= 0) goto L_0x015c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x013b, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)", java.lang.Integer.valueOf(r1), java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x015c, code lost:
        if (r4 == null) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x015e, code lost:
        r4.a(new com.tencent.bugly.mimsg.proguard.u.AnonymousClass2(r14));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:?, code lost:
        return;
     */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0061 A[SYNTHETIC, Splitter:B:19:0x0061] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x006b A[Catch:{ Throwable -> 0x0089 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x009d A[Catch:{ Throwable -> 0x0089 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(int r15) {
        /*
            r14 = this;
            r13 = 3
            r12 = 2
            r11 = 1
            r2 = 0
            if (r15 >= 0) goto L_0x000e
            java.lang.String r0 = "[UploadManager] Number of task to execute should >= 0"
            java.lang.Object[] r1 = new java.lang.Object[r2]
            com.tencent.bugly.mimsg.proguard.x.a(r0, r1)
        L_0x000d:
            return
        L_0x000e:
            com.tencent.bugly.mimsg.proguard.w r4 = com.tencent.bugly.mimsg.proguard.w.a()
            java.util.concurrent.LinkedBlockingQueue r5 = new java.util.concurrent.LinkedBlockingQueue
            r5.<init>()
            java.util.concurrent.LinkedBlockingQueue r6 = new java.util.concurrent.LinkedBlockingQueue
            r6.<init>()
            java.lang.Object r7 = r14.j
            monitor-enter(r7)
            java.lang.String r0 = "[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)"
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ all -> 0x0057 }
            r3 = 0
            int r8 = android.os.Process.myPid()     // Catch:{ all -> 0x0057 }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x0057 }
            r1[r3] = r8     // Catch:{ all -> 0x0057 }
            r3 = 1
            int r8 = android.os.Process.myTid()     // Catch:{ all -> 0x0057 }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x0057 }
            r1[r3] = r8     // Catch:{ all -> 0x0057 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)     // Catch:{ all -> 0x0057 }
            java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> r0 = r14.h     // Catch:{ all -> 0x0057 }
            int r1 = r0.size()     // Catch:{ all -> 0x0057 }
            java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> r0 = r14.i     // Catch:{ all -> 0x0057 }
            int r0 = r0.size()     // Catch:{ all -> 0x0057 }
            if (r1 != 0) goto L_0x005a
            if (r0 != 0) goto L_0x005a
            java.lang.String r0 = "[UploadManager] There is no upload task in queue."
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ all -> 0x0057 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)     // Catch:{ all -> 0x0057 }
            monitor-exit(r7)     // Catch:{ all -> 0x0057 }
            goto L_0x000d
        L_0x0057:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        L_0x005a:
            if (r15 == 0) goto L_0x016b
            if (r15 >= r1) goto L_0x0081
            r0 = r2
        L_0x005f:
            if (r4 == 0) goto L_0x0067
            boolean r1 = r4.c()     // Catch:{ all -> 0x0057 }
            if (r1 != 0) goto L_0x0168
        L_0x0067:
            r1 = r2
        L_0x0068:
            r3 = r2
        L_0x0069:
            if (r3 >= r15) goto L_0x009a
            java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> r0 = r14.h     // Catch:{ all -> 0x0057 }
            java.lang.Object r0 = r0.peek()     // Catch:{ all -> 0x0057 }
            java.lang.Runnable r0 = (java.lang.Runnable) r0     // Catch:{ all -> 0x0057 }
            if (r0 == 0) goto L_0x009a
            r5.put(r0)     // Catch:{ Throwable -> 0x0089 }
            java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> r0 = r14.h     // Catch:{ Throwable -> 0x0089 }
            r0.poll()     // Catch:{ Throwable -> 0x0089 }
        L_0x007d:
            int r0 = r3 + 1
            r3 = r0
            goto L_0x0069
        L_0x0081:
            int r3 = r1 + r0
            if (r15 >= r3) goto L_0x016b
            int r0 = r15 - r1
            r15 = r1
            goto L_0x005f
        L_0x0089:
            r0 = move-exception
            java.lang.String r8 = "[UploadManager] Failed to add upload task to temp urgent queue: %s"
            r9 = 1
            java.lang.Object[] r9 = new java.lang.Object[r9]     // Catch:{ all -> 0x0057 }
            r10 = 0
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0057 }
            r9[r10] = r0     // Catch:{ all -> 0x0057 }
            com.tencent.bugly.mimsg.proguard.x.e(r8, r9)     // Catch:{ all -> 0x0057 }
            goto L_0x007d
        L_0x009a:
            r3 = r2
        L_0x009b:
            if (r3 >= r1) goto L_0x00c4
            java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> r0 = r14.i     // Catch:{ all -> 0x0057 }
            java.lang.Object r0 = r0.peek()     // Catch:{ all -> 0x0057 }
            java.lang.Runnable r0 = (java.lang.Runnable) r0     // Catch:{ all -> 0x0057 }
            if (r0 == 0) goto L_0x00c4
            r6.put(r0)     // Catch:{ Throwable -> 0x00b3 }
            java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> r0 = r14.i     // Catch:{ Throwable -> 0x00b3 }
            r0.poll()     // Catch:{ Throwable -> 0x00b3 }
        L_0x00af:
            int r0 = r3 + 1
            r3 = r0
            goto L_0x009b
        L_0x00b3:
            r0 = move-exception
            java.lang.String r8 = "[UploadManager] Failed to add upload task to temp urgent queue: %s"
            r9 = 1
            java.lang.Object[] r9 = new java.lang.Object[r9]     // Catch:{ all -> 0x0057 }
            r10 = 0
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0057 }
            r9[r10] = r0     // Catch:{ all -> 0x0057 }
            com.tencent.bugly.mimsg.proguard.x.e(r8, r9)     // Catch:{ all -> 0x0057 }
            goto L_0x00af
        L_0x00c4:
            monitor-exit(r7)     // Catch:{ all -> 0x0057 }
            if (r15 <= 0) goto L_0x00e8
            java.lang.String r0 = "[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)"
            java.lang.Object[] r3 = new java.lang.Object[r13]
            java.lang.Integer r7 = java.lang.Integer.valueOf(r15)
            r3[r2] = r7
            int r7 = android.os.Process.myPid()
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            r3[r11] = r7
            int r7 = android.os.Process.myTid()
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            r3[r12] = r7
            com.tencent.bugly.mimsg.proguard.x.c(r0, r3)
        L_0x00e8:
            r3 = r2
        L_0x00e9:
            if (r3 >= r15) goto L_0x0139
            java.lang.Object r0 = r5.poll()
            java.lang.Runnable r0 = (java.lang.Runnable) r0
            if (r0 == 0) goto L_0x0139
            java.lang.Object r7 = r14.j
            monitor-enter(r7)
            int r8 = r14.u     // Catch:{ all -> 0x012b }
            if (r8 < r12) goto L_0x0104
            if (r4 == 0) goto L_0x0104
            r4.a(r0)     // Catch:{ all -> 0x012b }
            monitor-exit(r7)     // Catch:{ all -> 0x012b }
        L_0x0100:
            int r0 = r3 + 1
            r3 = r0
            goto L_0x00e9
        L_0x0104:
            monitor-exit(r7)
            java.lang.String r7 = "[UploadManager] Create and start a new thread to execute a upload task: %s"
            java.lang.Object[] r8 = new java.lang.Object[r11]
            java.lang.String r9 = "BUGLY_ASYNC_UPLOAD"
            r8[r2] = r9
            com.tencent.bugly.mimsg.proguard.x.a(r7, r8)
            com.tencent.bugly.mimsg.proguard.u$1 r7 = new com.tencent.bugly.mimsg.proguard.u$1
            r7.<init>(r0)
            java.lang.String r8 = "BUGLY_ASYNC_UPLOAD"
            java.lang.Thread r7 = com.tencent.bugly.mimsg.proguard.z.a(r7, r8)
            if (r7 == 0) goto L_0x012e
            java.lang.Object r7 = r14.j
            monitor-enter(r7)
            int r0 = r14.u     // Catch:{ all -> 0x0128 }
            int r0 = r0 + 1
            r14.u = r0     // Catch:{ all -> 0x0128 }
            monitor-exit(r7)     // Catch:{ all -> 0x0128 }
            goto L_0x0100
        L_0x0128:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        L_0x012b:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        L_0x012e:
            java.lang.String r7 = "[UploadManager] Failed to start a thread to execute asynchronous upload task, will try again next time."
            java.lang.Object[] r8 = new java.lang.Object[r2]
            com.tencent.bugly.mimsg.proguard.x.d(r7, r8)
            r14.a(r0, r11)
            goto L_0x0100
        L_0x0139:
            if (r1 <= 0) goto L_0x015c
            java.lang.String r0 = "[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)"
            java.lang.Object[] r3 = new java.lang.Object[r13]
            java.lang.Integer r5 = java.lang.Integer.valueOf(r1)
            r3[r2] = r5
            int r2 = android.os.Process.myPid()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r3[r11] = r2
            int r2 = android.os.Process.myTid()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r3[r12] = r2
            com.tencent.bugly.mimsg.proguard.x.c(r0, r3)
        L_0x015c:
            if (r4 == 0) goto L_0x000d
            com.tencent.bugly.mimsg.proguard.u$2 r0 = new com.tencent.bugly.mimsg.proguard.u$2
            r0.<init>(r14, r1, r6)
            r4.a(r0)
            goto L_0x000d
        L_0x0168:
            r1 = r0
            goto L_0x0068
        L_0x016b:
            r15 = r1
            goto L_0x005f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.u.c(int):void");
    }

    private boolean a(Runnable runnable, boolean z) {
        if (runnable == null) {
            x.a("[UploadManager] Upload task should not be null", new Object[0]);
            return false;
        }
        try {
            x.c("[UploadManager] Add upload task to queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            synchronized (this.j) {
                if (z) {
                    this.h.put(runnable);
                } else {
                    this.i.put(runnable);
                }
            }
            return true;
        } catch (Throwable th) {
            x.e("[UploadManager] Failed to add upload task to queue: %s", th.getMessage());
            return false;
        }
    }

    /* access modifiers changed from: private */
    public void a(Runnable runnable, long j2) {
        if (runnable == null) {
            x.d("[UploadManager] Upload task should not be null", new Object[0]);
            return;
        }
        x.c("[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        Thread a2 = z.a(runnable, "BUGLY_SYNC_UPLOAD");
        if (a2 == null) {
            x.e("[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue.", new Object[0]);
            a(runnable, true);
            return;
        }
        try {
            a2.join(j2);
        } catch (Throwable th) {
            x.e("[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue.", th.getMessage());
            a(runnable, true);
            c(0);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:0x008a, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("[UploadManager] Initialize security context now (pid=%d | tid=%d)", java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00a5, code lost:
        if (r9 == false) goto L_0x00b7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00a7, code lost:
        a((java.lang.Runnable) new com.tencent.bugly.mimsg.proguard.u.a(r6, r6.d, r7, r10), 0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00b7, code lost:
        a(r7, r8);
        r0 = new com.tencent.bugly.mimsg.proguard.u.a(r6, r6.d);
        com.tencent.bugly.mimsg.proguard.x.a("[UploadManager] Create and start a new thread to execute a task of initializing security context: %s", "BUGLY_ASYNC_UPLOAD");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00d2, code lost:
        if (com.tencent.bugly.mimsg.proguard.z.a((java.lang.Runnable) r0, "BUGLY_ASYNC_UPLOAD") != null) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00d4, code lost:
        com.tencent.bugly.mimsg.proguard.x.d("[UploadManager] Failed to start a thread to execute task of initializing security context, try to post it into thread pool.", new java.lang.Object[0]);
        r1 = com.tencent.bugly.mimsg.proguard.w.a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00df, code lost:
        if (r1 == null) goto L_0x00e6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00e1, code lost:
        r1.a(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00e6, code lost:
        com.tencent.bugly.mimsg.proguard.x.e("[UploadManager] Asynchronous thread pool is unavailable now, try next time.", new java.lang.Object[0]);
        r1 = r6.t;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00ef, code lost:
        monitor-enter(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:?, code lost:
        r6.s = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00f3, code lost:
        monitor-exit(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.lang.Runnable r7, boolean r8, boolean r9, long r10) {
        /*
            r6 = this;
            r5 = 2
            r3 = 1
            r4 = 0
            if (r7 != 0) goto L_0x000c
            java.lang.String r0 = "[UploadManager] Upload task should not be null"
            java.lang.Object[] r1 = new java.lang.Object[r4]
            com.tencent.bugly.mimsg.proguard.x.d(r0, r1)
        L_0x000c:
            java.lang.String r0 = "[UploadManager] Add upload task (pid=%d | tid=%d)"
            java.lang.Object[] r1 = new java.lang.Object[r5]
            int r2 = android.os.Process.myPid()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r4] = r2
            int r2 = android.os.Process.myTid()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r3] = r2
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)
            java.lang.String r0 = r6.p
            if (r0 == 0) goto L_0x0077
            boolean r0 = r6.b()
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = "[UploadManager] Sucessfully got session ID, try to execute upload task now (pid=%d | tid=%d)"
            java.lang.Object[] r1 = new java.lang.Object[r5]
            int r2 = android.os.Process.myPid()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r4] = r2
            int r2 = android.os.Process.myTid()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r3] = r2
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)
            if (r9 == 0) goto L_0x0052
            r6.a(r7, r10)
        L_0x0051:
            return
        L_0x0052:
            r6.a(r7, r8)
            r6.c(r4)
            goto L_0x0051
        L_0x0059:
            java.lang.String r0 = "[UploadManager] Session ID is expired, drop it (pid=%d | tid=%d)"
            java.lang.Object[] r1 = new java.lang.Object[r5]
            int r2 = android.os.Process.myPid()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r4] = r2
            int r2 = android.os.Process.myTid()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r3] = r2
            com.tencent.bugly.mimsg.proguard.x.a(r0, r1)
            r6.b(r4)
        L_0x0077:
            java.lang.Object r1 = r6.t
            monitor-enter(r1)
            boolean r0 = r6.s     // Catch:{ all -> 0x0083 }
            if (r0 == 0) goto L_0x0086
            r6.a(r7, r8)     // Catch:{ all -> 0x0083 }
            monitor-exit(r1)     // Catch:{ all -> 0x0083 }
            goto L_0x0051
        L_0x0083:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        L_0x0086:
            r0 = 1
            r6.s = r0     // Catch:{ all -> 0x0083 }
            monitor-exit(r1)     // Catch:{ all -> 0x0083 }
            java.lang.String r0 = "[UploadManager] Initialize security context now (pid=%d | tid=%d)"
            java.lang.Object[] r1 = new java.lang.Object[r5]
            int r2 = android.os.Process.myPid()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r4] = r2
            int r2 = android.os.Process.myTid()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r3] = r2
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)
            if (r9 == 0) goto L_0x00b7
            com.tencent.bugly.mimsg.proguard.u$a r0 = new com.tencent.bugly.mimsg.proguard.u$a
            android.content.Context r2 = r6.d
            r1 = r6
            r3 = r7
            r4 = r10
            r0.<init>(r2, r3, r4)
            r2 = 0
            r6.a(r0, r2)
            goto L_0x0051
        L_0x00b7:
            r6.a(r7, r8)
            com.tencent.bugly.mimsg.proguard.u$a r0 = new com.tencent.bugly.mimsg.proguard.u$a
            android.content.Context r1 = r6.d
            r0.<init>(r1)
            java.lang.String r1 = "[UploadManager] Create and start a new thread to execute a task of initializing security context: %s"
            java.lang.Object[] r2 = new java.lang.Object[r3]
            java.lang.String r3 = "BUGLY_ASYNC_UPLOAD"
            r2[r4] = r3
            com.tencent.bugly.mimsg.proguard.x.a(r1, r2)
            java.lang.String r1 = "BUGLY_ASYNC_UPLOAD"
            java.lang.Thread r1 = com.tencent.bugly.mimsg.proguard.z.a(r0, r1)
            if (r1 != 0) goto L_0x0051
            java.lang.String r1 = "[UploadManager] Failed to start a thread to execute task of initializing security context, try to post it into thread pool."
            java.lang.Object[] r2 = new java.lang.Object[r4]
            com.tencent.bugly.mimsg.proguard.x.d(r1, r2)
            com.tencent.bugly.mimsg.proguard.w r1 = com.tencent.bugly.mimsg.proguard.w.a()
            if (r1 == 0) goto L_0x00e6
            r1.a(r0)
            goto L_0x0051
        L_0x00e6:
            java.lang.String r0 = "[UploadManager] Asynchronous thread pool is unavailable now, try next time."
            java.lang.Object[] r1 = new java.lang.Object[r4]
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)
            java.lang.Object r1 = r6.t
            monitor-enter(r1)
            r0 = 0
            r6.s = r0     // Catch:{ all -> 0x00f6 }
            monitor-exit(r1)     // Catch:{ all -> 0x00f6 }
            goto L_0x0051
        L_0x00f6:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.u.a(java.lang.Runnable, boolean, boolean, long):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x004b, code lost:
        if (r10 == null) goto L_0x012f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x004d, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("[UploadManager] Record security context (pid=%d | tid=%d)", java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        r3 = r10.g;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x006a, code lost:
        if (r3 == null) goto L_0x0102;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0072, code lost:
        if (r3.containsKey("S1") == false) goto L_0x0102;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x007a, code lost:
        if (r3.containsKey("S2") == false) goto L_0x0102;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x007c, code lost:
        r8.m = r10.e - java.lang.System.currentTimeMillis();
        com.tencent.bugly.mimsg.proguard.x.c("[UploadManager] Time lag of server is: %d", java.lang.Long.valueOf(r8.m));
        r8.p = (java.lang.String) r3.get("S1");
        com.tencent.bugly.mimsg.proguard.x.c("[UploadManager] Session ID from server is: %s", r8.p);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00b3, code lost:
        if (r8.p.length() <= 0) goto L_0x0126;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        r8.q = java.lang.Long.parseLong((java.lang.String) r3.get("S2"));
        com.tencent.bugly.mimsg.proguard.x.c("[UploadManager] Session expired time from server is: %d(%s)", java.lang.Long.valueOf(r8.q), new java.util.Date(r8.q).toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00e8, code lost:
        if (r8.q >= 1000) goto L_0x00f7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00ea, code lost:
        com.tencent.bugly.mimsg.proguard.x.d("[UploadManager] Session expired time from server is less than 1 second, will set to default value", new java.lang.Object[0]);
        r8.q = com.mi.milinkforgame.sdk.data.Const.Debug.DefFileKeepPeriod;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:?, code lost:
        com.tencent.bugly.mimsg.proguard.x.d("[UploadManager] Session expired time is invalid, will set to default value", new java.lang.Object[0]);
        r8.q = com.mi.milinkforgame.sdk.data.Const.Debug.DefFileKeepPeriod;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0118, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0119, code lost:
        com.tencent.bugly.mimsg.proguard.x.a(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0126, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("[UploadManager] Session ID from server is invalid, try next time", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x012f, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("[UploadManager] Fail to init security context and clear local info (pid=%d | tid=%d)", java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
        b(false);
     */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0104  */
    /* JADX WARNING: Removed duplicated region for block: B:6:0x002b A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(int r9, com.tencent.bugly.mimsg.proguard.an r10) {
        /*
            r8 = this;
            r4 = 2
            r1 = 1
            r2 = 0
            boolean r0 = r8.a
            if (r0 != 0) goto L_0x0008
        L_0x0007:
            return
        L_0x0008:
            if (r9 != r4) goto L_0x003e
            java.lang.String r0 = "[UploadManager] Session ID is invalid, will clear security context (pid=%d | tid=%d)"
            java.lang.Object[] r3 = new java.lang.Object[r4]
            int r4 = android.os.Process.myPid()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3[r2] = r4
            int r2 = android.os.Process.myTid()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r3[r1] = r2
            com.tencent.bugly.mimsg.proguard.x.c(r0, r3)
            r8.b(r1)
        L_0x0028:
            java.lang.Object r1 = r8.t
            monitor-enter(r1)
            boolean r0 = r8.s     // Catch:{ all -> 0x003b }
            if (r0 == 0) goto L_0x0039
            r0 = 0
            r8.s = r0     // Catch:{ all -> 0x003b }
            android.content.Context r0 = r8.d     // Catch:{ all -> 0x003b }
            java.lang.String r2 = "security_info"
            com.tencent.bugly.mimsg.proguard.z.b(r0, r2)     // Catch:{ all -> 0x003b }
        L_0x0039:
            monitor-exit(r1)     // Catch:{ all -> 0x003b }
            goto L_0x0007
        L_0x003b:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        L_0x003e:
            java.lang.Object r3 = r8.t
            monitor-enter(r3)
            boolean r0 = r8.s     // Catch:{ all -> 0x0047 }
            if (r0 != 0) goto L_0x004a
            monitor-exit(r3)     // Catch:{ all -> 0x0047 }
            goto L_0x0007
        L_0x0047:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        L_0x004a:
            monitor-exit(r3)
            if (r10 == 0) goto L_0x012f
            java.lang.String r0 = "[UploadManager] Record security context (pid=%d | tid=%d)"
            java.lang.Object[] r3 = new java.lang.Object[r4]
            int r4 = android.os.Process.myPid()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3[r2] = r4
            int r4 = android.os.Process.myTid()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3[r1] = r4
            com.tencent.bugly.mimsg.proguard.x.c(r0, r3)
            java.util.Map<java.lang.String, java.lang.String> r3 = r10.g     // Catch:{ Throwable -> 0x0118 }
            if (r3 == 0) goto L_0x0102
            java.lang.String r0 = "S1"
            boolean r0 = r3.containsKey(r0)     // Catch:{ Throwable -> 0x0118 }
            if (r0 == 0) goto L_0x0102
            java.lang.String r0 = "S2"
            boolean r0 = r3.containsKey(r0)     // Catch:{ Throwable -> 0x0118 }
            if (r0 == 0) goto L_0x0102
            long r4 = r10.e     // Catch:{ Throwable -> 0x0118 }
            long r6 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x0118 }
            long r4 = r4 - r6
            r8.m = r4     // Catch:{ Throwable -> 0x0118 }
            java.lang.String r0 = "[UploadManager] Time lag of server is: %d"
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Throwable -> 0x0118 }
            r5 = 0
            long r6 = r8.m     // Catch:{ Throwable -> 0x0118 }
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch:{ Throwable -> 0x0118 }
            r4[r5] = r6     // Catch:{ Throwable -> 0x0118 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r4)     // Catch:{ Throwable -> 0x0118 }
            java.lang.String r0 = "S1"
            java.lang.Object r0 = r3.get(r0)     // Catch:{ Throwable -> 0x0118 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ Throwable -> 0x0118 }
            r8.p = r0     // Catch:{ Throwable -> 0x0118 }
            java.lang.String r0 = "[UploadManager] Session ID from server is: %s"
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Throwable -> 0x0118 }
            r5 = 0
            java.lang.String r6 = r8.p     // Catch:{ Throwable -> 0x0118 }
            r4[r5] = r6     // Catch:{ Throwable -> 0x0118 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r4)     // Catch:{ Throwable -> 0x0118 }
            java.lang.String r0 = r8.p     // Catch:{ Throwable -> 0x0118 }
            int r0 = r0.length()     // Catch:{ Throwable -> 0x0118 }
            if (r0 <= 0) goto L_0x0126
            java.lang.String r0 = "S2"
            java.lang.Object r0 = r3.get(r0)     // Catch:{ NumberFormatException -> 0x0109 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ NumberFormatException -> 0x0109 }
            long r4 = java.lang.Long.parseLong(r0)     // Catch:{ NumberFormatException -> 0x0109 }
            r8.q = r4     // Catch:{ NumberFormatException -> 0x0109 }
            java.lang.String r0 = "[UploadManager] Session expired time from server is: %d(%s)"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ NumberFormatException -> 0x0109 }
            r4 = 0
            long r6 = r8.q     // Catch:{ NumberFormatException -> 0x0109 }
            java.lang.Long r5 = java.lang.Long.valueOf(r6)     // Catch:{ NumberFormatException -> 0x0109 }
            r3[r4] = r5     // Catch:{ NumberFormatException -> 0x0109 }
            r4 = 1
            java.util.Date r5 = new java.util.Date     // Catch:{ NumberFormatException -> 0x0109 }
            long r6 = r8.q     // Catch:{ NumberFormatException -> 0x0109 }
            r5.<init>(r6)     // Catch:{ NumberFormatException -> 0x0109 }
            java.lang.String r5 = r5.toString()     // Catch:{ NumberFormatException -> 0x0109 }
            r3[r4] = r5     // Catch:{ NumberFormatException -> 0x0109 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r3)     // Catch:{ NumberFormatException -> 0x0109 }
            long r4 = r8.q     // Catch:{ NumberFormatException -> 0x0109 }
            r6 = 1000(0x3e8, double:4.94E-321)
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 >= 0) goto L_0x00f7
            java.lang.String r0 = "[UploadManager] Session expired time from server is less than 1 second, will set to default value"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ NumberFormatException -> 0x0109 }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r3)     // Catch:{ NumberFormatException -> 0x0109 }
            r4 = 259200000(0xf731400, double:1.280618154E-315)
            r8.q = r4     // Catch:{ NumberFormatException -> 0x0109 }
        L_0x00f7:
            boolean r0 = r8.d()     // Catch:{ Throwable -> 0x0118 }
            if (r0 == 0) goto L_0x011d
            r1 = r2
        L_0x00fe:
            r0 = 0
            r8.c(r0)     // Catch:{ Throwable -> 0x0118 }
        L_0x0102:
            if (r1 == 0) goto L_0x0028
            r8.b(r2)
            goto L_0x0028
        L_0x0109:
            r0 = move-exception
            java.lang.String r0 = "[UploadManager] Session expired time is invalid, will set to default value"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x0118 }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r3)     // Catch:{ Throwable -> 0x0118 }
            r4 = 259200000(0xf731400, double:1.280618154E-315)
            r8.q = r4     // Catch:{ Throwable -> 0x0118 }
            goto L_0x00f7
        L_0x0118:
            r0 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r0)
            goto L_0x0102
        L_0x011d:
            java.lang.String r0 = "[UploadManager] Failed to record database"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x0118 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r3)     // Catch:{ Throwable -> 0x0118 }
            goto L_0x00fe
        L_0x0126:
            java.lang.String r0 = "[UploadManager] Session ID from server is invalid, try next time"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x0118 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r3)     // Catch:{ Throwable -> 0x0118 }
            goto L_0x0102
        L_0x012f:
            java.lang.String r0 = "[UploadManager] Fail to init security context and clear local info (pid=%d | tid=%d)"
            java.lang.Object[] r3 = new java.lang.Object[r4]
            int r4 = android.os.Process.myPid()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3[r2] = r4
            int r4 = android.os.Process.myTid()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3[r1] = r4
            com.tencent.bugly.mimsg.proguard.x.c(r0, r3)
            r8.b(r2)
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.u.a(int, com.tencent.bugly.mimsg.proguard.an):void");
    }

    public final byte[] a(byte[] bArr) {
        if (this.n != null && (this.n.length << 3) == 128) {
            return z.a(1, bArr, this.n);
        }
        x.d("[UploadManager] AES key is invalid (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        return null;
    }

    public final byte[] b(byte[] bArr) {
        if (this.n != null && (this.n.length << 3) == 128) {
            return z.a(2, bArr, this.n);
        }
        x.d("[UploadManager] AES key is invalid (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        return null;
    }

    public final boolean a(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        x.c("[UploadManager] Integrate security to HTTP headers (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        if (this.p != null) {
            map.put("secureSessionId", this.p);
            return true;
        } else if (this.n == null || (this.n.length << 3) != 128) {
            x.d("[UploadManager] AES key is invalid", new Object[0]);
            return false;
        } else {
            if (this.l == null) {
                this.l = Base64.decode(this.k, 0);
                if (this.l == null) {
                    x.d("[UploadManager] Failed to decode RSA public key", new Object[0]);
                    return false;
                }
            }
            byte[] b2 = z.b(1, this.n, this.l);
            if (b2 == null) {
                x.d("[UploadManager] Failed to encrypt AES key", new Object[0]);
                return false;
            }
            String encodeToString = Base64.encodeToString(b2, 0);
            if (encodeToString == null) {
                x.d("[UploadManager] Failed to encode AES key", new Object[0]);
                return false;
            }
            map.put("raKey", encodeToString);
            return true;
        }
    }
}
