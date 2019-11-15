package com.tencent.bugly.mimsg.proguard;

import android.content.Context;
import com.tencent.bugly.mimsg.crashreport.common.info.a;
import java.util.Map;
import java.util.UUID;

/* compiled from: BUGLY */
public final class v implements Runnable {
    private int a;
    private int b;
    private final Context c;
    private final int d;
    private final byte[] e;
    private final a f;
    private final com.tencent.bugly.mimsg.crashreport.common.strategy.a g;
    private final s h;
    private final u i;
    private final int j;
    private final t k;
    private final t l;
    private String m;
    private final String n;
    private final Map<String, String> o;
    private int p;
    private long q;
    private long r;
    private boolean s;
    private boolean t;

    public v(Context context, int i2, int i3, byte[] bArr, String str, String str2, t tVar, boolean z, boolean z2) {
        this(context, i2, i3, bArr, str, str2, tVar, z, 2, 30000, z2, null);
    }

    public v(Context context, int i2, int i3, byte[] bArr, String str, String str2, t tVar, boolean z, int i4, int i5, boolean z2, Map<String, String> map) {
        this.a = 2;
        this.b = 30000;
        this.m = null;
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.s = true;
        this.t = false;
        this.c = context;
        this.f = a.a(context);
        this.e = bArr;
        this.g = com.tencent.bugly.mimsg.crashreport.common.strategy.a.a();
        this.h = s.a(context);
        this.i = u.a();
        this.j = i2;
        this.m = str;
        this.n = str2;
        this.k = tVar;
        u uVar = this.i;
        this.l = null;
        this.s = z;
        this.d = i3;
        if (i4 > 0) {
            this.a = i4;
        }
        if (i5 > 0) {
            this.b = i5;
        }
        this.t = z2;
        this.o = map;
    }

    private void a(an anVar, boolean z, int i2, String str, int i3) {
        String str2;
        switch (this.d) {
            case 630:
            case 830:
                str2 = "crash";
                break;
            case 640:
            case 840:
                str2 = "userinfo";
                break;
            default:
                str2 = String.valueOf(this.d);
                break;
        }
        if (z) {
            x.a("[Upload] Success: %s", str2);
        } else {
            x.e("[Upload] Failed to upload(%d) %s: %s", Integer.valueOf(i2), str2, str);
            if (this.s) {
                this.i.a(i3, (an) null);
            }
        }
        if (this.q + this.r > 0) {
            this.i.a(this.i.a(this.t) + this.q + this.r, this.t);
        }
        if (this.k != null) {
            t tVar = this.k;
            int i4 = this.d;
            long j2 = this.q;
            long j3 = this.r;
            tVar.a(z);
        }
        if (this.l != null) {
            t tVar2 = this.l;
            int i5 = this.d;
            long j4 = this.q;
            long j5 = this.r;
            tVar2.a(z);
        }
    }

    private static boolean a(an anVar, a aVar, com.tencent.bugly.mimsg.crashreport.common.strategy.a aVar2) {
        if (anVar == null) {
            x.d("resp == null!", new Object[0]);
            return false;
        } else if (anVar.a != 0) {
            x.e("resp result error %d", Byte.valueOf(anVar.a));
            return false;
        } else {
            try {
                if (!z.a(anVar.d) && !a.b().i().equals(anVar.d)) {
                    p.a().a(com.tencent.bugly.mimsg.crashreport.common.strategy.a.a, "key_ip", anVar.d.getBytes("UTF-8"), (o) null, true);
                    aVar.d(anVar.d);
                }
                if (!z.a(anVar.f) && !a.b().j().equals(anVar.f)) {
                    p.a().a(com.tencent.bugly.mimsg.crashreport.common.strategy.a.a, "key_imei", anVar.f.getBytes("UTF-8"), (o) null, true);
                    aVar.e(anVar.f);
                }
            } catch (Throwable th) {
                x.a(th);
            }
            aVar.i = anVar.e;
            if (anVar.b == 510) {
                if (anVar.c == null) {
                    x.e("[Upload] Strategy data is null. Response cmd: %d", Integer.valueOf(anVar.b));
                    return false;
                }
                ap apVar = (ap) a.a(anVar.c, ap.class);
                if (apVar == null) {
                    x.e("[Upload] Failed to decode strategy from server. Response cmd: %d", Integer.valueOf(anVar.b));
                    return false;
                }
                aVar2.a(apVar);
            }
            return true;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:101:0x03c0, code lost:
        a(null, false, 1, "status of server is " + r5, r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:152:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:153:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0331, code lost:
        if (r5 == 0) goto L_0x03d8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x0334, code lost:
        if (r5 != 2) goto L_0x03c0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:0x033f, code lost:
        if ((r11.q + r11.r) <= 0) goto L_0x0356;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x0341, code lost:
        r11.i.a((r11.i.a(r11.t) + r11.q) + r11.r, r11.t);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x0356, code lost:
        r11.i.a(r5, (com.tencent.bugly.mimsg.proguard.an) null);
        com.tencent.bugly.mimsg.proguard.x.a("[Upload] Session ID is invalid, will try again immediately (pid=%d | tid=%d).", java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
        r11.i.a(r11.j, r11.d, r11.e, r11.m, r11.n, r11.k, r11.a, r11.b, true, r11.o);
     */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
            r11 = this;
            r0 = 0
            r11.p = r0     // Catch:{ Throwable -> 0x0030 }
            r0 = 0
            r11.q = r0     // Catch:{ Throwable -> 0x0030 }
            r0 = 0
            r11.r = r0     // Catch:{ Throwable -> 0x0030 }
            byte[] r0 = r11.e     // Catch:{ Throwable -> 0x0030 }
            android.content.Context r1 = r11.c     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r1 = com.tencent.bugly.mimsg.crashreport.common.info.b.e(r1)     // Catch:{ Throwable -> 0x0030 }
            if (r1 != 0) goto L_0x0020
            r1 = 0
            r2 = 0
            r3 = 0
            java.lang.String r4 = "network is not available"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
        L_0x001f:
            return
        L_0x0020:
            if (r0 == 0) goto L_0x0025
            int r1 = r0.length     // Catch:{ Throwable -> 0x0030 }
            if (r1 != 0) goto L_0x003b
        L_0x0025:
            r1 = 0
            r2 = 0
            r3 = 0
            java.lang.String r4 = "request package is empty!"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x0030:
            r0 = move-exception
            boolean r1 = com.tencent.bugly.mimsg.proguard.x.a(r0)
            if (r1 != 0) goto L_0x001f
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x001f
        L_0x003b:
            com.tencent.bugly.mimsg.proguard.u r1 = r11.i     // Catch:{ Throwable -> 0x0030 }
            boolean r2 = r11.t     // Catch:{ Throwable -> 0x0030 }
            long r2 = r1.a(r2)     // Catch:{ Throwable -> 0x0030 }
            int r1 = r0.length     // Catch:{ Throwable -> 0x0030 }
            long r4 = (long) r1     // Catch:{ Throwable -> 0x0030 }
            long r4 = r4 + r2
            r6 = 2097152(0x200000, double:1.0361308E-317)
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 < 0) goto L_0x0086
            java.lang.String r0 = "[Upload] Upload too much data, try next time: %d/%d"
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x0030 }
            r4 = 0
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ Throwable -> 0x0030 }
            r1[r4] = r2     // Catch:{ Throwable -> 0x0030 }
            r2 = 1
            r4 = 2097152(0x200000, double:1.0361308E-317)
            java.lang.Long r3 = java.lang.Long.valueOf(r4)     // Catch:{ Throwable -> 0x0030 }
            r1[r2] = r3     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)     // Catch:{ Throwable -> 0x0030 }
            r1 = 0
            r2 = 0
            r3 = 0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r4 = "over net consume: "
            r0.<init>(r4)     // Catch:{ Throwable -> 0x0030 }
            r4 = 2048(0x800, double:1.0118E-320)
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r4 = "K"
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r4 = r0.toString()     // Catch:{ Throwable -> 0x0030 }
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x0086:
            java.lang.String r1 = "[Upload] Run upload task with cmd: %d"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0030 }
            r3 = 0
            int r4 = r11.d     // Catch:{ Throwable -> 0x0030 }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ Throwable -> 0x0030 }
            r2[r3] = r4     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)     // Catch:{ Throwable -> 0x0030 }
            android.content.Context r1 = r11.c     // Catch:{ Throwable -> 0x0030 }
            if (r1 == 0) goto L_0x00a7
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r11.f     // Catch:{ Throwable -> 0x0030 }
            if (r1 == 0) goto L_0x00a7
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r1 = r11.g     // Catch:{ Throwable -> 0x0030 }
            if (r1 == 0) goto L_0x00a7
            com.tencent.bugly.mimsg.proguard.s r1 = r11.h     // Catch:{ Throwable -> 0x0030 }
            if (r1 != 0) goto L_0x00b3
        L_0x00a7:
            r1 = 0
            r2 = 0
            r3 = 0
            java.lang.String r4 = "illegal access error"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x00b3:
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r1 = r11.g     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.crashreport.common.strategy.StrategyBean r1 = r1.c()     // Catch:{ Throwable -> 0x0030 }
            if (r1 != 0) goto L_0x00c7
            r1 = 0
            r2 = 0
            r3 = 0
            java.lang.String r4 = "illegal local strategy"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x00c7:
            r3 = 0
            java.util.HashMap r7 = new java.util.HashMap     // Catch:{ Throwable -> 0x0030 }
            r7.<init>()     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r2 = "prodId"
            com.tencent.bugly.mimsg.crashreport.common.info.a r4 = r11.f     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r4 = r4.f()     // Catch:{ Throwable -> 0x0030 }
            r7.put(r2, r4)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r2 = "bundleId"
            com.tencent.bugly.mimsg.crashreport.common.info.a r4 = r11.f     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r4 = r4.c     // Catch:{ Throwable -> 0x0030 }
            r7.put(r2, r4)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r2 = "appVer"
            com.tencent.bugly.mimsg.crashreport.common.info.a r4 = r11.f     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r4 = r4.j     // Catch:{ Throwable -> 0x0030 }
            r7.put(r2, r4)     // Catch:{ Throwable -> 0x0030 }
            java.util.Map<java.lang.String, java.lang.String> r2 = r11.o     // Catch:{ Throwable -> 0x0030 }
            if (r2 == 0) goto L_0x00f3
            java.util.Map<java.lang.String, java.lang.String> r2 = r11.o     // Catch:{ Throwable -> 0x0030 }
            r7.putAll(r2)     // Catch:{ Throwable -> 0x0030 }
        L_0x00f3:
            boolean r2 = r11.s     // Catch:{ Throwable -> 0x0030 }
            if (r2 == 0) goto L_0x015e
            java.lang.String r2 = "cmd"
            int r4 = r11.d     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r4 = java.lang.Integer.toString(r4)     // Catch:{ Throwable -> 0x0030 }
            r7.put(r2, r4)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r2 = "platformId"
            r4 = 1
            java.lang.String r4 = java.lang.Byte.toString(r4)     // Catch:{ Throwable -> 0x0030 }
            r7.put(r2, r4)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r2 = "sdkVer"
            com.tencent.bugly.mimsg.crashreport.common.info.a r4 = r11.f     // Catch:{ Throwable -> 0x0030 }
            r4.getClass()     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r4 = "2.6.5"
            r7.put(r2, r4)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r2 = "strategylastUpdateTime"
            long r4 = r1.p     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r1 = java.lang.Long.toString(r4)     // Catch:{ Throwable -> 0x0030 }
            r7.put(r2, r1)     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.u r1 = r11.i     // Catch:{ Throwable -> 0x0030 }
            boolean r1 = r1.a(r7)     // Catch:{ Throwable -> 0x0030 }
            if (r1 != 0) goto L_0x0137
            r1 = 0
            r2 = 0
            r3 = 0
            java.lang.String r4 = "failed to add security info to HTTP headers"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x0137:
            r1 = 2
            byte[] r0 = com.tencent.bugly.mimsg.proguard.z.a(r0, r1)     // Catch:{ Throwable -> 0x0030 }
            if (r0 != 0) goto L_0x014a
            r1 = 0
            r2 = 0
            r3 = 0
            java.lang.String r4 = "failed to zip request body"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x014a:
            com.tencent.bugly.mimsg.proguard.u r1 = r11.i     // Catch:{ Throwable -> 0x0030 }
            byte[] r0 = r1.a(r0)     // Catch:{ Throwable -> 0x0030 }
            if (r0 != 0) goto L_0x015e
            r1 = 0
            r2 = 0
            r3 = 0
            java.lang.String r4 = "failed to encrypt request body"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x015e:
            r6 = r0
            com.tencent.bugly.mimsg.proguard.u r0 = r11.i     // Catch:{ Throwable -> 0x0030 }
            int r1 = r11.j     // Catch:{ Throwable -> 0x0030 }
            long r4 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x0030 }
            r0.a(r1, r4)     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.t r0 = r11.k     // Catch:{ Throwable -> 0x0030 }
            if (r0 == 0) goto L_0x0172
            com.tencent.bugly.mimsg.proguard.t r0 = r11.k     // Catch:{ Throwable -> 0x0030 }
            int r0 = r11.d     // Catch:{ Throwable -> 0x0030 }
        L_0x0172:
            com.tencent.bugly.mimsg.proguard.t r0 = r11.l     // Catch:{ Throwable -> 0x0030 }
            if (r0 == 0) goto L_0x017a
            com.tencent.bugly.mimsg.proguard.t r0 = r11.l     // Catch:{ Throwable -> 0x0030 }
            int r0 = r11.d     // Catch:{ Throwable -> 0x0030 }
        L_0x017a:
            java.lang.String r2 = r11.m     // Catch:{ Throwable -> 0x0030 }
            r5 = -1
            r0 = 0
            r1 = r0
            r0 = r2
        L_0x0180:
            int r4 = r1 + 1
            int r2 = r11.a     // Catch:{ Throwable -> 0x0030 }
            if (r1 >= r2) goto L_0x04ac
            r1 = 1
            if (r4 <= r1) goto L_0x01b1
            java.lang.String r1 = "[Upload] Failed to upload last time, wait and try(%d) again."
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0030 }
            r3 = 0
            java.lang.Integer r8 = java.lang.Integer.valueOf(r4)     // Catch:{ Throwable -> 0x0030 }
            r2[r3] = r8     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.d(r1, r2)     // Catch:{ Throwable -> 0x0030 }
            int r1 = r11.b     // Catch:{ Throwable -> 0x0030 }
            long r2 = (long) r1     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.z.b(r2)     // Catch:{ Throwable -> 0x0030 }
            int r1 = r11.a     // Catch:{ Throwable -> 0x0030 }
            if (r4 != r1) goto L_0x01b1
            java.lang.String r0 = "[Upload] Use the back-up url at the last time: %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x0030 }
            r2 = 0
            java.lang.String r3 = r11.n     // Catch:{ Throwable -> 0x0030 }
            r1[r2] = r3     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r1)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r0 = r11.n     // Catch:{ Throwable -> 0x0030 }
        L_0x01b1:
            java.lang.String r1 = "[Upload] Send %d bytes"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0030 }
            r3 = 0
            int r8 = r6.length     // Catch:{ Throwable -> 0x0030 }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ Throwable -> 0x0030 }
            r2[r3] = r8     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)     // Catch:{ Throwable -> 0x0030 }
            boolean r1 = r11.s     // Catch:{ Throwable -> 0x0030 }
            if (r1 == 0) goto L_0x04b7
            java.lang.String r0 = a(r0)     // Catch:{ Throwable -> 0x0030 }
            r2 = r0
        L_0x01ca:
            java.lang.String r0 = "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."
            r1 = 4
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x0030 }
            r3 = 0
            r1[r3] = r2     // Catch:{ Throwable -> 0x0030 }
            r3 = 1
            int r8 = r11.d     // Catch:{ Throwable -> 0x0030 }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ Throwable -> 0x0030 }
            r1[r3] = r8     // Catch:{ Throwable -> 0x0030 }
            r3 = 2
            int r8 = android.os.Process.myPid()     // Catch:{ Throwable -> 0x0030 }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ Throwable -> 0x0030 }
            r1[r3] = r8     // Catch:{ Throwable -> 0x0030 }
            r3 = 3
            int r8 = android.os.Process.myTid()     // Catch:{ Throwable -> 0x0030 }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ Throwable -> 0x0030 }
            r1[r3] = r8     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.s r0 = r11.h     // Catch:{ Throwable -> 0x0030 }
            byte[] r1 = r0.a(r2, r6, r11, r7)     // Catch:{ Throwable -> 0x0030 }
            if (r1 != 0) goto L_0x0216
            java.lang.String r0 = "Failed to upload for no response!"
            java.lang.String r1 = "[Upload] Failed to upload(%d): %s"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x0030 }
            r8 = 0
            r9 = 1
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ Throwable -> 0x0030 }
            r3[r8] = r9     // Catch:{ Throwable -> 0x0030 }
            r8 = 1
            r3[r8] = r0     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.e(r1, r3)     // Catch:{ Throwable -> 0x0030 }
            r3 = 1
            r1 = r4
            r0 = r2
            goto L_0x0180
        L_0x0216:
            com.tencent.bugly.mimsg.proguard.s r0 = r11.h     // Catch:{ Throwable -> 0x0030 }
            java.util.Map<java.lang.String, java.lang.String> r3 = r0.a     // Catch:{ Throwable -> 0x0030 }
            boolean r0 = r11.s     // Catch:{ Throwable -> 0x0030 }
            if (r0 == 0) goto L_0x03d8
            if (r3 == 0) goto L_0x0226
            int r0 = r3.size()     // Catch:{ Throwable -> 0x0030 }
            if (r0 != 0) goto L_0x0298
        L_0x0226:
            java.lang.String r0 = "[Upload] Headers is empty."
            r8 = 0
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r8)     // Catch:{ Throwable -> 0x0030 }
            r0 = 0
        L_0x022f:
            if (r0 != 0) goto L_0x0300
            java.lang.String r0 = "[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d)."
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x0030 }
            r8 = 0
            int r9 = android.os.Process.myPid()     // Catch:{ Throwable -> 0x0030 }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ Throwable -> 0x0030 }
            r1[r8] = r9     // Catch:{ Throwable -> 0x0030 }
            r8 = 1
            int r9 = android.os.Process.myTid()     // Catch:{ Throwable -> 0x0030 }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ Throwable -> 0x0030 }
            r1[r8] = r9     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r0 = "[Upload] Failed to upload for no status header."
            java.lang.String r1 = "[Upload] Failed to upload(%d): %s"
            r8 = 2
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch:{ Throwable -> 0x0030 }
            r9 = 0
            r10 = 1
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch:{ Throwable -> 0x0030 }
            r8[r9] = r10     // Catch:{ Throwable -> 0x0030 }
            r9 = 1
            r8[r9] = r0     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.e(r1, r8)     // Catch:{ Throwable -> 0x0030 }
            if (r3 == 0) goto L_0x02f3
            java.util.Set r0 = r3.entrySet()     // Catch:{ Throwable -> 0x0030 }
            java.util.Iterator r1 = r0.iterator()     // Catch:{ Throwable -> 0x0030 }
        L_0x026e:
            boolean r0 = r1.hasNext()     // Catch:{ Throwable -> 0x0030 }
            if (r0 == 0) goto L_0x02f3
            java.lang.Object r0 = r1.next()     // Catch:{ Throwable -> 0x0030 }
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r3 = "[key]: %s, [value]: %s"
            r8 = 2
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch:{ Throwable -> 0x0030 }
            r9 = 0
            java.lang.Object r10 = r0.getKey()     // Catch:{ Throwable -> 0x0030 }
            r8[r9] = r10     // Catch:{ Throwable -> 0x0030 }
            r9 = 1
            java.lang.Object r0 = r0.getValue()     // Catch:{ Throwable -> 0x0030 }
            r8[r9] = r0     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r0 = java.lang.String.format(r3, r8)     // Catch:{ Throwable -> 0x0030 }
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r3)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x026e
        L_0x0298:
            java.lang.String r0 = "status"
            boolean r0 = r3.containsKey(r0)     // Catch:{ Throwable -> 0x0030 }
            if (r0 != 0) goto L_0x02af
            java.lang.String r0 = "[Upload] Headers does not contain %s"
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch:{ Throwable -> 0x0030 }
            r9 = 0
            java.lang.String r10 = "status"
            r8[r9] = r10     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r8)     // Catch:{ Throwable -> 0x0030 }
            r0 = 0
            goto L_0x022f
        L_0x02af:
            java.lang.String r0 = "Bugly-Version"
            boolean r0 = r3.containsKey(r0)     // Catch:{ Throwable -> 0x0030 }
            if (r0 != 0) goto L_0x02c7
            java.lang.String r0 = "[Upload] Headers does not contain %s"
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch:{ Throwable -> 0x0030 }
            r9 = 0
            java.lang.String r10 = "Bugly-Version"
            r8[r9] = r10     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r8)     // Catch:{ Throwable -> 0x0030 }
            r0 = 0
            goto L_0x022f
        L_0x02c7:
            java.lang.String r0 = "Bugly-Version"
            java.lang.Object r0 = r3.get(r0)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r8 = "bugly"
            boolean r8 = r0.contains(r8)     // Catch:{ Throwable -> 0x0030 }
            if (r8 != 0) goto L_0x02e5
            java.lang.String r8 = "[Upload] Bugly version is not valid: %s"
            r9 = 1
            java.lang.Object[] r9 = new java.lang.Object[r9]     // Catch:{ Throwable -> 0x0030 }
            r10 = 0
            r9[r10] = r0     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.d(r8, r9)     // Catch:{ Throwable -> 0x0030 }
            r0 = 0
            goto L_0x022f
        L_0x02e5:
            java.lang.String r8 = "[Upload] Bugly version from headers is: %s"
            r9 = 1
            java.lang.Object[] r9 = new java.lang.Object[r9]     // Catch:{ Throwable -> 0x0030 }
            r10 = 0
            r9[r10] = r0     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.c(r8, r9)     // Catch:{ Throwable -> 0x0030 }
            r0 = 1
            goto L_0x022f
        L_0x02f3:
            java.lang.String r0 = "[Upload] Failed to upload for no status header."
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)     // Catch:{ Throwable -> 0x0030 }
            r3 = 1
            r1 = r4
            r0 = r2
            goto L_0x0180
        L_0x0300:
            java.lang.String r0 = "status"
            java.lang.Object r0 = r3.get(r0)     // Catch:{ Throwable -> 0x0394 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ Throwable -> 0x0394 }
            int r5 = java.lang.Integer.parseInt(r0)     // Catch:{ Throwable -> 0x0394 }
            java.lang.String r0 = "[Upload] Status from server is %d (pid=%d | tid=%d)."
            r8 = 3
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch:{ Throwable -> 0x0394 }
            r9 = 0
            java.lang.Integer r10 = java.lang.Integer.valueOf(r5)     // Catch:{ Throwable -> 0x0394 }
            r8[r9] = r10     // Catch:{ Throwable -> 0x0394 }
            r9 = 1
            int r10 = android.os.Process.myPid()     // Catch:{ Throwable -> 0x0394 }
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch:{ Throwable -> 0x0394 }
            r8[r9] = r10     // Catch:{ Throwable -> 0x0394 }
            r9 = 2
            int r10 = android.os.Process.myTid()     // Catch:{ Throwable -> 0x0394 }
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch:{ Throwable -> 0x0394 }
            r8[r9] = r10     // Catch:{ Throwable -> 0x0394 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r8)     // Catch:{ Throwable -> 0x0394 }
            if (r5 == 0) goto L_0x03d8
            r0 = 2
            if (r5 != r0) goto L_0x03c0
            long r0 = r11.q     // Catch:{ Throwable -> 0x0030 }
            long r2 = r11.r     // Catch:{ Throwable -> 0x0030 }
            long r0 = r0 + r2
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L_0x0356
            com.tencent.bugly.mimsg.proguard.u r0 = r11.i     // Catch:{ Throwable -> 0x0030 }
            boolean r1 = r11.t     // Catch:{ Throwable -> 0x0030 }
            long r0 = r0.a(r1)     // Catch:{ Throwable -> 0x0030 }
            long r2 = r11.q     // Catch:{ Throwable -> 0x0030 }
            long r0 = r0 + r2
            long r2 = r11.r     // Catch:{ Throwable -> 0x0030 }
            long r0 = r0 + r2
            com.tencent.bugly.mimsg.proguard.u r2 = r11.i     // Catch:{ Throwable -> 0x0030 }
            boolean r3 = r11.t     // Catch:{ Throwable -> 0x0030 }
            r2.a(r0, r3)     // Catch:{ Throwable -> 0x0030 }
        L_0x0356:
            com.tencent.bugly.mimsg.proguard.u r0 = r11.i     // Catch:{ Throwable -> 0x0030 }
            r1 = 0
            r0.a(r5, r1)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r0 = "[Upload] Session ID is invalid, will try again immediately (pid=%d | tid=%d)."
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x0030 }
            r2 = 0
            int r3 = android.os.Process.myPid()     // Catch:{ Throwable -> 0x0030 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ Throwable -> 0x0030 }
            r1[r2] = r3     // Catch:{ Throwable -> 0x0030 }
            r2 = 1
            int r3 = android.os.Process.myTid()     // Catch:{ Throwable -> 0x0030 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ Throwable -> 0x0030 }
            r1[r2] = r3     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.a(r0, r1)     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.u r0 = r11.i     // Catch:{ Throwable -> 0x0030 }
            int r1 = r11.j     // Catch:{ Throwable -> 0x0030 }
            int r2 = r11.d     // Catch:{ Throwable -> 0x0030 }
            byte[] r3 = r11.e     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r4 = r11.m     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r5 = r11.n     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.t r6 = r11.k     // Catch:{ Throwable -> 0x0030 }
            int r7 = r11.a     // Catch:{ Throwable -> 0x0030 }
            int r8 = r11.b     // Catch:{ Throwable -> 0x0030 }
            r9 = 1
            java.util.Map<java.lang.String, java.lang.String> r10 = r11.o     // Catch:{ Throwable -> 0x0030 }
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x0394:
            r0 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r1 = "[Upload] Failed to upload for format of status header is invalid: "
            r0.<init>(r1)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r1 = java.lang.Integer.toString(r5)     // Catch:{ Throwable -> 0x0030 }
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r1 = "[Upload] Failed to upload(%d): %s"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x0030 }
            r8 = 0
            r9 = 1
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ Throwable -> 0x0030 }
            r3[r8] = r9     // Catch:{ Throwable -> 0x0030 }
            r8 = 1
            r3[r8] = r0     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.e(r1, r3)     // Catch:{ Throwable -> 0x0030 }
            r3 = 1
            r1 = r4
            r0 = r2
            goto L_0x0180
        L_0x03c0:
            r1 = 0
            r2 = 0
            r3 = 1
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r4 = "status of server is "
            r0.<init>(r4)     // Catch:{ Throwable -> 0x0030 }
            java.lang.StringBuilder r0 = r0.append(r5)     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r4 = r0.toString()     // Catch:{ Throwable -> 0x0030 }
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x03d8:
            java.lang.String r0 = "[Upload] Received %d bytes"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0030 }
            r4 = 0
            int r6 = r1.length     // Catch:{ Throwable -> 0x0030 }
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ Throwable -> 0x0030 }
            r2[r4] = r6     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r2)     // Catch:{ Throwable -> 0x0030 }
            boolean r0 = r11.s     // Catch:{ Throwable -> 0x0030 }
            if (r0 == 0) goto L_0x044d
            int r0 = r1.length     // Catch:{ Throwable -> 0x0030 }
            if (r0 != 0) goto L_0x0426
            java.util.Set r0 = r3.entrySet()     // Catch:{ Throwable -> 0x0030 }
            java.util.Iterator r1 = r0.iterator()     // Catch:{ Throwable -> 0x0030 }
        L_0x03f7:
            boolean r0 = r1.hasNext()     // Catch:{ Throwable -> 0x0030 }
            if (r0 == 0) goto L_0x041a
            java.lang.Object r0 = r1.next()     // Catch:{ Throwable -> 0x0030 }
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch:{ Throwable -> 0x0030 }
            java.lang.String r2 = "[Upload] HTTP headers from server: key = %s, value = %s"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x0030 }
            r4 = 0
            java.lang.Object r5 = r0.getKey()     // Catch:{ Throwable -> 0x0030 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0030 }
            r4 = 1
            java.lang.Object r0 = r0.getValue()     // Catch:{ Throwable -> 0x0030 }
            r3[r4] = r0     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.c(r2, r3)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x03f7
        L_0x041a:
            r1 = 0
            r2 = 0
            r3 = 1
            java.lang.String r4 = "response data from server is empty"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x0426:
            com.tencent.bugly.mimsg.proguard.u r0 = r11.i     // Catch:{ Throwable -> 0x0030 }
            byte[] r0 = r0.b(r1)     // Catch:{ Throwable -> 0x0030 }
            if (r0 != 0) goto L_0x043a
            r1 = 0
            r2 = 0
            r3 = 1
            java.lang.String r4 = "failed to decrypt response from server"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x043a:
            r1 = 2
            byte[] r0 = com.tencent.bugly.mimsg.proguard.z.b(r0, r1)     // Catch:{ Throwable -> 0x0030 }
            if (r0 != 0) goto L_0x044e
            r1 = 0
            r2 = 0
            r3 = 1
            java.lang.String r4 = "failed unzip(Gzip) response from server"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x044d:
            r0 = r1
        L_0x044e:
            boolean r1 = r11.s     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.an r1 = com.tencent.bugly.mimsg.proguard.a.a(r0, r1)     // Catch:{ Throwable -> 0x0030 }
            if (r1 != 0) goto L_0x0462
            r1 = 0
            r2 = 0
            r3 = 1
            java.lang.String r4 = "failed to decode response package"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x0462:
            boolean r0 = r11.s     // Catch:{ Throwable -> 0x0030 }
            if (r0 == 0) goto L_0x046b
            com.tencent.bugly.mimsg.proguard.u r0 = r11.i     // Catch:{ Throwable -> 0x0030 }
            r0.a(r5, r1)     // Catch:{ Throwable -> 0x0030 }
        L_0x046b:
            java.lang.String r2 = "[Upload] Response cmd is: %d, length of sBuffer is: %d"
            r0 = 2
            java.lang.Object[] r3 = new java.lang.Object[r0]     // Catch:{ Throwable -> 0x0030 }
            r0 = 0
            int r4 = r1.b     // Catch:{ Throwable -> 0x0030 }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ Throwable -> 0x0030 }
            r3[r0] = r4     // Catch:{ Throwable -> 0x0030 }
            r4 = 1
            byte[] r0 = r1.c     // Catch:{ Throwable -> 0x0030 }
            if (r0 != 0) goto L_0x049d
            r0 = 0
        L_0x047f:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ Throwable -> 0x0030 }
            r3[r4] = r0     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.proguard.x.c(r2, r3)     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r0 = r11.f     // Catch:{ Throwable -> 0x0030 }
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r2 = r11.g     // Catch:{ Throwable -> 0x0030 }
            boolean r0 = a(r1, r0, r2)     // Catch:{ Throwable -> 0x0030 }
            if (r0 != 0) goto L_0x04a1
            r2 = 0
            r3 = 2
            java.lang.String r4 = "failed to process response package"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x049d:
            byte[] r0 = r1.c     // Catch:{ Throwable -> 0x0030 }
            int r0 = r0.length     // Catch:{ Throwable -> 0x0030 }
            goto L_0x047f
        L_0x04a1:
            r2 = 1
            r3 = 2
            java.lang.String r4 = "successfully uploaded"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x04ac:
            r1 = 0
            r2 = 0
            java.lang.String r4 = "failed after many attempts"
            r5 = 0
            r0 = r11
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0030 }
            goto L_0x001f
        L_0x04b7:
            r2 = r0
            goto L_0x01ca
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.v.run():void");
    }

    public final void a(long j2) {
        this.p++;
        this.q += j2;
    }

    public final void b(long j2) {
        this.r += j2;
    }

    private static String a(String str) {
        if (z.a(str)) {
            return str;
        }
        try {
            return String.format("%s?aid=%s", new Object[]{str, UUID.randomUUID().toString()});
        } catch (Throwable th) {
            x.a(th);
            return str;
        }
    }
}
