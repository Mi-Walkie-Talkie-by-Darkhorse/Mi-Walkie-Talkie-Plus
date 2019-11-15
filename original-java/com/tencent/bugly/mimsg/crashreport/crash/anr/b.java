package com.tencent.bugly.mimsg.crashreport.crash.anr;

import android.content.Context;
import android.os.FileObserver;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.crashreport.common.info.a;
import com.tencent.bugly.mimsg.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.mimsg.crashreport.crash.c;
import com.tencent.bugly.mimsg.proguard.w;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.y;
import com.tencent.bugly.mimsg.proguard.z;
import java.io.File;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: BUGLY */
public final class b {
    private AtomicInteger a = new AtomicInteger(0);
    private long b = -1;
    private final Context c;
    private final a d;
    private final w e;
    private final com.tencent.bugly.mimsg.crashreport.common.strategy.a f;
    private final String g;
    private final com.tencent.bugly.mimsg.crashreport.crash.b h;
    private FileObserver i;
    private boolean j = true;

    public b(Context context, com.tencent.bugly.mimsg.crashreport.common.strategy.a aVar, a aVar2, w wVar, com.tencent.bugly.mimsg.crashreport.crash.b bVar) {
        this.c = z.a(context);
        this.g = context.getDir("bugly", 0).getAbsolutePath();
        this.d = aVar2;
        this.e = wVar;
        this.f = aVar;
        this.h = bVar;
    }

    private CrashDetailBean a(a aVar) {
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        try {
            crashDetailBean.B = com.tencent.bugly.mimsg.crashreport.common.info.b.g();
            crashDetailBean.C = com.tencent.bugly.mimsg.crashreport.common.info.b.e();
            crashDetailBean.D = com.tencent.bugly.mimsg.crashreport.common.info.b.i();
            crashDetailBean.E = this.d.p();
            crashDetailBean.F = this.d.o();
            crashDetailBean.G = this.d.q();
            crashDetailBean.w = z.a(this.c, c.e, (String) null);
            crashDetailBean.b = 3;
            crashDetailBean.e = this.d.h();
            crashDetailBean.f = this.d.j;
            crashDetailBean.g = this.d.w();
            crashDetailBean.m = this.d.g();
            crashDetailBean.n = "ANR_EXCEPTION";
            crashDetailBean.o = aVar.f;
            crashDetailBean.q = aVar.g;
            crashDetailBean.N = new HashMap();
            crashDetailBean.N.put("BUGLY_CR_01", aVar.e);
            int i2 = -1;
            if (crashDetailBean.q != null) {
                i2 = crashDetailBean.q.indexOf("\n");
            }
            crashDetailBean.p = i2 > 0 ? crashDetailBean.q.substring(0, i2) : "GET_FAIL";
            crashDetailBean.r = aVar.c;
            if (crashDetailBean.q != null) {
                crashDetailBean.u = z.b(crashDetailBean.q.getBytes());
            }
            crashDetailBean.y = aVar.b;
            crashDetailBean.z = this.d.d;
            crashDetailBean.A = "main(1)";
            crashDetailBean.H = this.d.y();
            crashDetailBean.h = this.d.v();
            crashDetailBean.i = this.d.I();
            crashDetailBean.v = aVar.d;
            crashDetailBean.K = this.d.n;
            crashDetailBean.L = this.d.a;
            crashDetailBean.M = this.d.a();
            crashDetailBean.O = this.d.F();
            crashDetailBean.P = this.d.G();
            crashDetailBean.Q = this.d.z();
            crashDetailBean.R = this.d.E();
            this.h.c(crashDetailBean);
            crashDetailBean.x = y.a();
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
        }
        return crashDetailBean;
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x017d A[Catch:{ all -> 0x01e7 }] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x01b0 A[SYNTHETIC, Splitter:B:52:0x01b0] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x01d6 A[SYNTHETIC, Splitter:B:69:0x01d6] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean a(java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            r11 = 3
            r5 = 2
            r3 = 1
            r4 = 0
            com.tencent.bugly.mimsg.crashreport.crash.anr.TraceFileHelper$a r6 = com.tencent.bugly.mimsg.crashreport.crash.anr.TraceFileHelper.readTargetDumpInfo(r14, r12, r3)
            if (r6 == 0) goto L_0x0016
            java.util.Map<java.lang.String, java.lang.String[]> r1 = r6.d
            if (r1 == 0) goto L_0x0016
            java.util.Map<java.lang.String, java.lang.String[]> r1 = r6.d
            int r1 = r1.size()
            if (r1 > 0) goto L_0x0021
        L_0x0016:
            java.lang.String r1 = "not found trace dump for %s"
            java.lang.Object[] r2 = new java.lang.Object[r3]
            r2[r4] = r14
            com.tencent.bugly.mimsg.proguard.x.e(r1, r2)
            r1 = r4
        L_0x0020:
            return r1
        L_0x0021:
            java.io.File r1 = new java.io.File
            r1.<init>(r13)
            boolean r2 = r1.exists()     // Catch:{ Exception -> 0x0057 }
            if (r2 != 0) goto L_0x0040
            java.io.File r2 = r1.getParentFile()     // Catch:{ Exception -> 0x0057 }
            boolean r2 = r2.exists()     // Catch:{ Exception -> 0x0057 }
            if (r2 != 0) goto L_0x003d
            java.io.File r2 = r1.getParentFile()     // Catch:{ Exception -> 0x0057 }
            r2.mkdirs()     // Catch:{ Exception -> 0x0057 }
        L_0x003d:
            r1.createNewFile()     // Catch:{ Exception -> 0x0057 }
        L_0x0040:
            boolean r2 = r1.exists()
            if (r2 == 0) goto L_0x004c
            boolean r2 = r1.canWrite()
            if (r2 != 0) goto L_0x0091
        L_0x004c:
            java.lang.String r1 = "backup file create fail %s"
            java.lang.Object[] r2 = new java.lang.Object[r3]
            r2[r4] = r13
            com.tencent.bugly.mimsg.proguard.x.e(r1, r2)
            r1 = r4
            goto L_0x0020
        L_0x0057:
            r1 = move-exception
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r1)
            if (r2 != 0) goto L_0x0061
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
        L_0x0061:
            java.lang.String r2 = "backup file create error! %s  %s"
            java.lang.Object[] r5 = new java.lang.Object[r5]
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.Class r7 = r1.getClass()
            java.lang.String r7 = r7.getName()
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r7 = ":"
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r1 = r1.getMessage()
            java.lang.StringBuilder r1 = r6.append(r1)
            java.lang.String r1 = r1.toString()
            r5[r4] = r1
            r5[r3] = r13
            com.tencent.bugly.mimsg.proguard.x.e(r2, r5)
            r1 = r4
            goto L_0x0020
        L_0x0091:
            r2 = 0
            java.io.BufferedWriter r5 = new java.io.BufferedWriter     // Catch:{ IOException -> 0x01ea, all -> 0x01d2 }
            java.io.FileWriter r7 = new java.io.FileWriter     // Catch:{ IOException -> 0x01ea, all -> 0x01d2 }
            r8 = 0
            r7.<init>(r1, r8)     // Catch:{ IOException -> 0x01ea, all -> 0x01d2 }
            r5.<init>(r7)     // Catch:{ IOException -> 0x01ea, all -> 0x01d2 }
            java.util.Map<java.lang.String, java.lang.String[]> r1 = r6.d     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r2 = "main"
            java.lang.Object r1 = r1.get(r2)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String[] r1 = (java.lang.String[]) r1     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            if (r1 == 0) goto L_0x00e4
            int r2 = r1.length     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            if (r2 < r11) goto L_0x00e4
            r2 = 0
            r2 = r1[r2]     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            r7 = 1
            r7 = r1[r7]     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            r8 = 2
            r1 = r1[r8]     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r9 = "\"main\" tid="
            r8.<init>(r9)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.StringBuilder r1 = r8.append(r1)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r8 = " :\n"
            java.lang.StringBuilder r1 = r1.append(r8)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r2 = "\n"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.StringBuilder r1 = r1.append(r7)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r2 = "\n\n"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r1 = r1.toString()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            r5.write(r1)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            r5.flush()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
        L_0x00e4:
            java.util.Map<java.lang.String, java.lang.String[]> r1 = r6.d     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.util.Set r1 = r1.entrySet()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.util.Iterator r6 = r1.iterator()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
        L_0x00ee:
            boolean r1 = r6.hasNext()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            if (r1 == 0) goto L_0x01b6
            java.lang.Object r1 = r6.next()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            r0 = r1
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            r2 = r0
            java.lang.Object r1 = r2.getKey()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r7 = "main"
            boolean r1 = r1.equals(r7)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            if (r1 != 0) goto L_0x00ee
            java.lang.Object r1 = r2.getValue()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            if (r1 == 0) goto L_0x00ee
            java.lang.Object r1 = r2.getValue()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String[] r1 = (java.lang.String[]) r1     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            int r1 = r1.length     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            if (r1 < r11) goto L_0x00ee
            java.lang.Object r1 = r2.getValue()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String[] r1 = (java.lang.String[]) r1     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            r7 = 0
            r7 = r1[r7]     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.Object r1 = r2.getValue()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String[] r1 = (java.lang.String[]) r1     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            r8 = 1
            r8 = r1[r8]     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.Object r1 = r2.getValue()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String[] r1 = (java.lang.String[]) r1     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            r9 = 2
            r9 = r1[r9]     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r1 = "\""
            r10.<init>(r1)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.Object r1 = r2.getKey()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.StringBuilder r1 = r10.append(r1)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r2 = "\" tid="
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.StringBuilder r1 = r1.append(r9)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r2 = " :\n"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.StringBuilder r1 = r1.append(r7)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r2 = "\n"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.StringBuilder r1 = r1.append(r8)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r2 = "\n\n"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            java.lang.String r1 = r1.toString()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            r5.write(r1)     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            r5.flush()     // Catch:{ IOException -> 0x0175, all -> 0x01e5 }
            goto L_0x00ee
        L_0x0175:
            r1 = move-exception
            r2 = r5
        L_0x0177:
            boolean r3 = com.tencent.bugly.mimsg.proguard.x.a(r1)     // Catch:{ all -> 0x01e7 }
            if (r3 != 0) goto L_0x0180
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x01e7 }
        L_0x0180:
            java.lang.String r3 = "dump trace fail %s"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ all -> 0x01e7 }
            r6 = 0
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x01e7 }
            r7.<init>()     // Catch:{ all -> 0x01e7 }
            java.lang.Class r8 = r1.getClass()     // Catch:{ all -> 0x01e7 }
            java.lang.String r8 = r8.getName()     // Catch:{ all -> 0x01e7 }
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch:{ all -> 0x01e7 }
            java.lang.String r8 = ":"
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch:{ all -> 0x01e7 }
            java.lang.String r1 = r1.getMessage()     // Catch:{ all -> 0x01e7 }
            java.lang.StringBuilder r1 = r7.append(r1)     // Catch:{ all -> 0x01e7 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x01e7 }
            r5[r6] = r1     // Catch:{ all -> 0x01e7 }
            com.tencent.bugly.mimsg.proguard.x.e(r3, r5)     // Catch:{ all -> 0x01e7 }
            if (r2 == 0) goto L_0x01b3
            r2.close()     // Catch:{ IOException -> 0x01c7 }
        L_0x01b3:
            r1 = r4
            goto L_0x0020
        L_0x01b6:
            r5.close()     // Catch:{ IOException -> 0x01bc }
        L_0x01b9:
            r1 = r3
            goto L_0x0020
        L_0x01bc:
            r1 = move-exception
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r1)
            if (r2 != 0) goto L_0x01b9
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x01b9
        L_0x01c7:
            r1 = move-exception
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r1)
            if (r2 != 0) goto L_0x01b3
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x01b3
        L_0x01d2:
            r1 = move-exception
            r5 = r2
        L_0x01d4:
            if (r5 == 0) goto L_0x01d9
            r5.close()     // Catch:{ IOException -> 0x01da }
        L_0x01d9:
            throw r1
        L_0x01da:
            r2 = move-exception
            boolean r3 = com.tencent.bugly.mimsg.proguard.x.a(r2)
            if (r3 != 0) goto L_0x01d9
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x01d9
        L_0x01e5:
            r1 = move-exception
            goto L_0x01d4
        L_0x01e7:
            r1 = move-exception
            r5 = r2
            goto L_0x01d4
        L_0x01ea:
            r1 = move-exception
            goto L_0x0177
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.crashreport.crash.anr.b.a(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public final boolean a() {
        return this.a.get() != 0;
    }

    /* JADX INFO: used method not loaded: com.tencent.bugly.mimsg.crashreport.crash.b.a(com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean):null, types can be incorrect */
    /* JADX INFO: used method not loaded: com.tencent.bugly.mimsg.crashreport.crash.b.a(com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean, long, boolean):null, types can be incorrect */
    /* JADX INFO: used method not loaded: com.tencent.bugly.mimsg.crashreport.crash.b.b(com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean):null, types can be incorrect */
    /* JADX WARNING: Code restructure failed: missing block: B:100:0x025b, code lost:
        com.tencent.bugly.mimsg.proguard.x.d("ANR Report is closed!", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:101:0x0264, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:102:0x0265, code lost:
        r12.a.set(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:103:0x026b, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:106:?, code lost:
        com.tencent.bugly.mimsg.proguard.x.a("found visiable anr , start to upload!", new java.lang.Object[0]);
        r5 = a(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:107:0x0278, code lost:
        if (r5 != null) goto L_0x0283;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:108:0x027a, code lost:
        com.tencent.bugly.mimsg.proguard.x.e("pack anr fail!", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:109:0x0283, code lost:
        com.tencent.bugly.mimsg.crashreport.crash.c.a().a(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("read trace first dump for create time!", new java.lang.Object[0]);
        r0 = -1;
        r2 = com.tencent.bugly.mimsg.crashreport.crash.anr.TraceFileHelper.readFirstDumpInfo(r13, false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:110:0x0290, code lost:
        if (r5.a < 0) goto L_0x02e4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x0292, code lost:
        com.tencent.bugly.mimsg.proguard.x.a("backup anr record success!", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x029a, code lost:
        if (r13 == null) goto L_0x02bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:114:0x02a5, code lost:
        if (new java.io.File(r13).exists() == false) goto L_0x02bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:115:0x02a7, code lost:
        r12.a.set(3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:0x02b5, code lost:
        if (a(r13, r7.d, r7.a) == false) goto L_0x02bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:117:0x02b7, code lost:
        com.tencent.bugly.mimsg.proguard.x.a("backup trace success", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x02bf, code lost:
        com.tencent.bugly.mimsg.crashreport.crash.b.a("ANR", com.tencent.bugly.mimsg.proguard.z.a(), r7.a, null, r7.e, r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x02d3, code lost:
        if (r12.h.a(r5) != false) goto L_0x02dd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0029, code lost:
        if (r2 == null) goto L_0x002d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x02d5, code lost:
        r12.h.a(r5, 3000, true);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:0x02dd, code lost:
        r12.h.b(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:0x02e4, code lost:
        com.tencent.bugly.mimsg.proguard.x.d("backup anr record fail!", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x02f0, code lost:
        r4 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002b, code lost:
        r0 = r2.c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:135:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:138:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0031, code lost:
        if (r0 != -1) goto L_0x02f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0033, code lost:
        com.tencent.bugly.mimsg.proguard.x.d("trace dump fail could not get time!", new java.lang.Object[0]);
        r4 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x004c, code lost:
        if (java.lang.Math.abs(r4 - r12.b) >= com.mi.milinkforgame.sdk.base.debug.FileTracerConfig.DEF_FLUSH_INTERVAL) goto L_0x0069;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x004e, code lost:
        com.tencent.bugly.mimsg.proguard.x.d("should not process ANR too Fre in %d", java.lang.Integer.valueOf(10000));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x005f, code lost:
        r12.a.set(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
        r12.b = r4;
        r12.a.set(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        r6 = com.tencent.bugly.mimsg.proguard.z.a(com.tencent.bugly.mimsg.crashreport.crash.c.f, false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0078, code lost:
        if (r6 == null) goto L_0x0080;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x007e, code lost:
        if (r6.size() > 0) goto L_0x00a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0080, code lost:
        com.tencent.bugly.mimsg.proguard.x.d("can't get all thread skip this anr", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0088, code lost:
        r12.a.set(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x008f, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:?, code lost:
        com.tencent.bugly.mimsg.proguard.x.a(r0);
        com.tencent.bugly.mimsg.proguard.x.e("get all thread stack fail!", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x009b, code lost:
        r12.a.set(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:?, code lost:
        r7 = r12.c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00ab, code lost:
        if (com.mi.milinkforgame.sdk.base.debug.FileTracerConfig.DEF_FLUSH_INTERVAL >= 0) goto L_0x0103;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00ad, code lost:
        r2 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00b0, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("to find!", new java.lang.Object[0]);
        r0 = (android.app.ActivityManager) r7.getSystemService("activity");
        r8 = r2 / 500;
        r1 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00c6, code lost:
        r2 = r1;
        com.tencent.bugly.mimsg.proguard.x.c("waiting!", new java.lang.Object[0]);
        r1 = r0.getProcessesInErrorState();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00d2, code lost:
        if (r1 == null) goto L_0x0107;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00d4, code lost:
        r3 = r1.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00dc, code lost:
        if (r3.hasNext() == false) goto L_0x0107;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00de, code lost:
        r1 = (android.app.ActivityManager.ProcessErrorStateInfo) r3.next();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00e7, code lost:
        if (r1.condition != 2) goto L_0x00d8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00e9, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("found!", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00f1, code lost:
        if (r1 != null) goto L_0x011d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00f3, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("proc state is unvisiable!", new java.lang.Object[0]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00fb, code lost:
        r12.a.set(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0103, code lost:
        r2 = 10000;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:?, code lost:
        com.tencent.bugly.mimsg.proguard.z.b(500);
        r1 = r2 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0111, code lost:
        if (((long) r2) < r8) goto L_0x02ed;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0113, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("end!", new java.lang.Object[0]);
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0123, code lost:
        if (r1.pid == android.os.Process.myPid()) goto L_0x013a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0125, code lost:
        com.tencent.bugly.mimsg.proguard.x.c("not mind proc!", r1.processName);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0132, code lost:
        r12.a.set(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:?, code lost:
        com.tencent.bugly.mimsg.proguard.x.a("found visiable anr , start to process!", new java.lang.Object[0]);
        r2 = r12.c;
        r12.f.c();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x014f, code lost:
        if (r12.f.b() != false) goto L_0x016d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0151, code lost:
        com.tencent.bugly.mimsg.proguard.x.e("waiting for remote sync", new java.lang.Object[0]);
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0160, code lost:
        if (r12.f.b() != false) goto L_0x016d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0162, code lost:
        com.tencent.bugly.mimsg.proguard.z.b(500);
        r0 = r0 + 500;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x016b, code lost:
        if (r0 < 3000) goto L_0x015a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x016d, code lost:
        r0 = new java.io.File(r2.getFilesDir(), "bugly/bugly_trace_" + r4 + ".txt");
        r7 = new com.tencent.bugly.mimsg.crashreport.crash.anr.a();
        r7.c = r4;
        r7.d = r0.getAbsolutePath();
        r7.a = r1.processName;
        r7.f = r1.shortMsg;
        r7.e = r1.longMsg;
        r7.b = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x01a6, code lost:
        if (r6 == null) goto L_0x01f2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x01a8, code lost:
        r1 = r6.keySet().iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x01b4, code lost:
        if (r1.hasNext() == false) goto L_0x01f2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x01b6, code lost:
        r0 = (java.lang.String) r1.next();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x01c2, code lost:
        if (r0.startsWith("main(") == false) goto L_0x01b0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x01c4, code lost:
        r7.g = (java.lang.String) r6.get(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x01cd, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x01d2, code lost:
        if (com.tencent.bugly.mimsg.proguard.x.a(r0) == false) goto L_0x01d4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x01d4, code lost:
        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x01d7, code lost:
        com.tencent.bugly.mimsg.proguard.x.e("handle anr error %s", r0.getClass().toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x01f2, code lost:
        r1 = "anr tm:%d\ntr:%s\nproc:%s\nsMsg:%s\n lMsg:%s\n threads:%d";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:?, code lost:
        r2 = new java.lang.Object[6];
        r2[0] = java.lang.Long.valueOf(r7.c);
        r2[1] = r7.d;
        r2[2] = r7.a;
        r2[3] = r7.f;
        r2[4] = r7.e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x0217, code lost:
        if (r7.b != null) goto L_0x024a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0219, code lost:
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x021a, code lost:
        r2[5] = java.lang.Integer.valueOf(r0);
        com.tencent.bugly.mimsg.proguard.x.c(r1, r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x0229, code lost:
        if (r12.f.b() != false) goto L_0x0251;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x022b, code lost:
        com.tencent.bugly.mimsg.proguard.x.e("crash report sync remote fail, will not upload to Bugly , print local for helpful!", new java.lang.Object[0]);
        com.tencent.bugly.mimsg.crashreport.crash.b.a("ANR", com.tencent.bugly.mimsg.proguard.z.a(), r7.a, null, r7.e, null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x0242, code lost:
        r12.a.set(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:?, code lost:
        r0 = r7.b.size();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x0259, code lost:
        if (r12.f.c().j != false) goto L_0x026c;
     */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.lang.String r13) {
        /*
            r12 = this;
            monitor-enter(r12)
            java.util.concurrent.atomic.AtomicInteger r0 = r12.a     // Catch:{ all -> 0x0066 }
            int r0 = r0.get()     // Catch:{ all -> 0x0066 }
            if (r0 == 0) goto L_0x0013
            java.lang.String r0 = "trace started return "
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ all -> 0x0066 }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)     // Catch:{ all -> 0x0066 }
            monitor-exit(r12)     // Catch:{ all -> 0x0066 }
        L_0x0012:
            return
        L_0x0013:
            java.util.concurrent.atomic.AtomicInteger r0 = r12.a     // Catch:{ all -> 0x0066 }
            r1 = 1
            r0.set(r1)     // Catch:{ all -> 0x0066 }
            monitor-exit(r12)     // Catch:{ all -> 0x0066 }
            java.lang.String r0 = "read trace first dump for create time!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            r0 = -1
            r2 = 0
            com.tencent.bugly.mimsg.crashreport.crash.anr.TraceFileHelper$a r2 = com.tencent.bugly.mimsg.crashreport.crash.anr.TraceFileHelper.readFirstDumpInfo(r13, r2)     // Catch:{ Throwable -> 0x01cd }
            if (r2 == 0) goto L_0x002d
            long r0 = r2.c     // Catch:{ Throwable -> 0x01cd }
        L_0x002d:
            r2 = -1
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 != 0) goto L_0x02f0
            java.lang.String r0 = "trace dump fail could not get time!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            long r0 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x01cd }
            r4 = r0
        L_0x0040:
            long r0 = r12.b     // Catch:{ Throwable -> 0x01cd }
            long r0 = r4 - r0
            long r0 = java.lang.Math.abs(r0)     // Catch:{ Throwable -> 0x01cd }
            r2 = 10000(0x2710, double:4.9407E-320)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L_0x0069
            java.lang.String r0 = "should not process ANR too Fre in %d"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            r2 = 0
            r3 = 10000(0x2710, float:1.4013E-41)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ Throwable -> 0x01cd }
            r1[r2] = r3     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            java.util.concurrent.atomic.AtomicInteger r0 = r12.a
            r1 = 0
            r0.set(r1)
            goto L_0x0012
        L_0x0066:
            r0 = move-exception
            monitor-exit(r12)
            throw r0
        L_0x0069:
            r12.b = r4     // Catch:{ Throwable -> 0x01cd }
            java.util.concurrent.atomic.AtomicInteger r0 = r12.a     // Catch:{ Throwable -> 0x01cd }
            r1 = 1
            r0.set(r1)     // Catch:{ Throwable -> 0x01cd }
            int r0 = com.tencent.bugly.mimsg.crashreport.crash.c.f     // Catch:{ Throwable -> 0x008f }
            r1 = 0
            java.util.Map r6 = com.tencent.bugly.mimsg.proguard.z.a(r0, r1)     // Catch:{ Throwable -> 0x008f }
            if (r6 == 0) goto L_0x0080
            int r0 = r6.size()     // Catch:{ Throwable -> 0x01cd }
            if (r0 > 0) goto L_0x00a3
        L_0x0080:
            java.lang.String r0 = "can't get all thread skip this anr"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            java.util.concurrent.atomic.AtomicInteger r0 = r12.a
            r1 = 0
            r0.set(r1)
            goto L_0x0012
        L_0x008f:
            r0 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r0 = "get all thread stack fail!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            java.util.concurrent.atomic.AtomicInteger r0 = r12.a
            r1 = 0
            r0.set(r1)
            goto L_0x0012
        L_0x00a3:
            android.content.Context r7 = r12.c     // Catch:{ Throwable -> 0x01cd }
            r0 = 10000(0x2710, double:4.9407E-320)
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L_0x0103
            r0 = 0
            r2 = r0
        L_0x00b0:
            java.lang.String r0 = "to find!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r7.getSystemService(r0)     // Catch:{ Throwable -> 0x01cd }
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch:{ Throwable -> 0x01cd }
            r8 = 500(0x1f4, double:2.47E-321)
            long r8 = r2 / r8
            r1 = 0
            r2 = r1
        L_0x00c6:
            java.lang.String r1 = "waiting!"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.c(r1, r3)     // Catch:{ Throwable -> 0x01cd }
            java.util.List r1 = r0.getProcessesInErrorState()     // Catch:{ Throwable -> 0x01cd }
            if (r1 == 0) goto L_0x0107
            java.util.Iterator r3 = r1.iterator()     // Catch:{ Throwable -> 0x01cd }
        L_0x00d8:
            boolean r1 = r3.hasNext()     // Catch:{ Throwable -> 0x01cd }
            if (r1 == 0) goto L_0x0107
            java.lang.Object r1 = r3.next()     // Catch:{ Throwable -> 0x01cd }
            android.app.ActivityManager$ProcessErrorStateInfo r1 = (android.app.ActivityManager.ProcessErrorStateInfo) r1     // Catch:{ Throwable -> 0x01cd }
            int r7 = r1.condition     // Catch:{ Throwable -> 0x01cd }
            r10 = 2
            if (r7 != r10) goto L_0x00d8
            java.lang.String r0 = "found!"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r2)     // Catch:{ Throwable -> 0x01cd }
        L_0x00f1:
            if (r1 != 0) goto L_0x011d
            java.lang.String r0 = "proc state is unvisiable!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            java.util.concurrent.atomic.AtomicInteger r0 = r12.a
            r1 = 0
            r0.set(r1)
            goto L_0x0012
        L_0x0103:
            r0 = 10000(0x2710, double:4.9407E-320)
            r2 = r0
            goto L_0x00b0
        L_0x0107:
            r10 = 500(0x1f4, double:2.47E-321)
            com.tencent.bugly.mimsg.proguard.z.b(r10)     // Catch:{ Throwable -> 0x01cd }
            int r1 = r2 + 1
            long r2 = (long) r2     // Catch:{ Throwable -> 0x01cd }
            int r2 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r2 < 0) goto L_0x02ed
            java.lang.String r0 = "end!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            r1 = 0
            goto L_0x00f1
        L_0x011d:
            int r0 = r1.pid     // Catch:{ Throwable -> 0x01cd }
            int r2 = android.os.Process.myPid()     // Catch:{ Throwable -> 0x01cd }
            if (r0 == r2) goto L_0x013a
            java.lang.String r0 = "not mind proc!"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x01cd }
            r3 = 0
            java.lang.String r1 = r1.processName     // Catch:{ Throwable -> 0x01cd }
            r2[r3] = r1     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.c(r0, r2)     // Catch:{ Throwable -> 0x01cd }
            java.util.concurrent.atomic.AtomicInteger r0 = r12.a
            r1 = 0
            r0.set(r1)
            goto L_0x0012
        L_0x013a:
            java.lang.String r0 = "found visiable anr , start to process!"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.a(r0, r2)     // Catch:{ Throwable -> 0x01cd }
            android.content.Context r2 = r12.c     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r0 = r12.f     // Catch:{ Throwable -> 0x01cd }
            r0.c()     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r0 = r12.f     // Catch:{ Throwable -> 0x01cd }
            boolean r0 = r0.b()     // Catch:{ Throwable -> 0x01cd }
            if (r0 != 0) goto L_0x016d
            java.lang.String r0 = "waiting for remote sync"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.e(r0, r3)     // Catch:{ Throwable -> 0x01cd }
            r0 = 0
        L_0x015a:
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r3 = r12.f     // Catch:{ Throwable -> 0x01cd }
            boolean r3 = r3.b()     // Catch:{ Throwable -> 0x01cd }
            if (r3 != 0) goto L_0x016d
            r8 = 500(0x1f4, double:2.47E-321)
            com.tencent.bugly.mimsg.proguard.z.b(r8)     // Catch:{ Throwable -> 0x01cd }
            int r0 = r0 + 500
            r3 = 3000(0xbb8, float:4.204E-42)
            if (r0 < r3) goto L_0x015a
        L_0x016d:
            java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x01cd }
            java.io.File r2 = r2.getFilesDir()     // Catch:{ Throwable -> 0x01cd }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r7 = "bugly/bugly_trace_"
            r3.<init>(r7)     // Catch:{ Throwable -> 0x01cd }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r7 = ".txt"
            java.lang.StringBuilder r3 = r3.append(r7)     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x01cd }
            r0.<init>(r2, r3)     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.crashreport.crash.anr.a r7 = new com.tencent.bugly.mimsg.crashreport.crash.anr.a     // Catch:{ Throwable -> 0x01cd }
            r7.<init>()     // Catch:{ Throwable -> 0x01cd }
            r7.c = r4     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r0 = r0.getAbsolutePath()     // Catch:{ Throwable -> 0x01cd }
            r7.d = r0     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r0 = r1.processName     // Catch:{ Throwable -> 0x01cd }
            r7.a = r0     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r0 = r1.shortMsg     // Catch:{ Throwable -> 0x01cd }
            r7.f = r0     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r0 = r1.longMsg     // Catch:{ Throwable -> 0x01cd }
            r7.e = r0     // Catch:{ Throwable -> 0x01cd }
            r7.b = r6     // Catch:{ Throwable -> 0x01cd }
            if (r6 == 0) goto L_0x01f2
            java.util.Set r0 = r6.keySet()     // Catch:{ Throwable -> 0x01cd }
            java.util.Iterator r1 = r0.iterator()     // Catch:{ Throwable -> 0x01cd }
        L_0x01b0:
            boolean r0 = r1.hasNext()     // Catch:{ Throwable -> 0x01cd }
            if (r0 == 0) goto L_0x01f2
            java.lang.Object r0 = r1.next()     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r2 = "main("
            boolean r2 = r0.startsWith(r2)     // Catch:{ Throwable -> 0x01cd }
            if (r2 == 0) goto L_0x01b0
            java.lang.Object r0 = r6.get(r0)     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ Throwable -> 0x01cd }
            r7.g = r0     // Catch:{ Throwable -> 0x01cd }
            goto L_0x01b0
        L_0x01cd:
            r0 = move-exception
            boolean r1 = com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ all -> 0x0264 }
            if (r1 != 0) goto L_0x01d7
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0264 }
        L_0x01d7:
            java.lang.String r1 = "handle anr error %s"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x0264 }
            r3 = 0
            java.lang.Class r0 = r0.getClass()     // Catch:{ all -> 0x0264 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0264 }
            r2[r3] = r0     // Catch:{ all -> 0x0264 }
            com.tencent.bugly.mimsg.proguard.x.e(r1, r2)     // Catch:{ all -> 0x0264 }
            java.util.concurrent.atomic.AtomicInteger r0 = r12.a
            r1 = 0
            r0.set(r1)
            goto L_0x0012
        L_0x01f2:
            java.lang.String r1 = "anr tm:%d\ntr:%s\nproc:%s\nsMsg:%s\n lMsg:%s\n threads:%d"
            r0 = 6
            java.lang.Object[] r2 = new java.lang.Object[r0]     // Catch:{ Throwable -> 0x01cd }
            r0 = 0
            long r4 = r7.c     // Catch:{ Throwable -> 0x01cd }
            java.lang.Long r3 = java.lang.Long.valueOf(r4)     // Catch:{ Throwable -> 0x01cd }
            r2[r0] = r3     // Catch:{ Throwable -> 0x01cd }
            r0 = 1
            java.lang.String r3 = r7.d     // Catch:{ Throwable -> 0x01cd }
            r2[r0] = r3     // Catch:{ Throwable -> 0x01cd }
            r0 = 2
            java.lang.String r3 = r7.a     // Catch:{ Throwable -> 0x01cd }
            r2[r0] = r3     // Catch:{ Throwable -> 0x01cd }
            r0 = 3
            java.lang.String r3 = r7.f     // Catch:{ Throwable -> 0x01cd }
            r2[r0] = r3     // Catch:{ Throwable -> 0x01cd }
            r0 = 4
            java.lang.String r3 = r7.e     // Catch:{ Throwable -> 0x01cd }
            r2[r0] = r3     // Catch:{ Throwable -> 0x01cd }
            r3 = 5
            java.util.Map<java.lang.String, java.lang.String> r0 = r7.b     // Catch:{ Throwable -> 0x01cd }
            if (r0 != 0) goto L_0x024a
            r0 = 0
        L_0x021a:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ Throwable -> 0x01cd }
            r2[r3] = r0     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r0 = r12.f     // Catch:{ Throwable -> 0x01cd }
            boolean r0 = r0.b()     // Catch:{ Throwable -> 0x01cd }
            if (r0 != 0) goto L_0x0251
            java.lang.String r0 = "crash report sync remote fail, will not upload to Bugly , print local for helpful!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r0 = "ANR"
            java.lang.String r1 = com.tencent.bugly.mimsg.proguard.z.a()     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r2 = r7.a     // Catch:{ Throwable -> 0x01cd }
            r3 = 0
            java.lang.String r4 = r7.e     // Catch:{ Throwable -> 0x01cd }
            r5 = 0
            com.tencent.bugly.mimsg.crashreport.crash.b.a(r0, r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x01cd }
        L_0x0242:
            java.util.concurrent.atomic.AtomicInteger r0 = r12.a
            r1 = 0
            r0.set(r1)
            goto L_0x0012
        L_0x024a:
            java.util.Map<java.lang.String, java.lang.String> r0 = r7.b     // Catch:{ Throwable -> 0x01cd }
            int r0 = r0.size()     // Catch:{ Throwable -> 0x01cd }
            goto L_0x021a
        L_0x0251:
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r0 = r12.f     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.crashreport.common.strategy.StrategyBean r0 = r0.c()     // Catch:{ Throwable -> 0x01cd }
            boolean r0 = r0.j     // Catch:{ Throwable -> 0x01cd }
            if (r0 != 0) goto L_0x026c
            java.lang.String r0 = "ANR Report is closed!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            goto L_0x0242
        L_0x0264:
            r0 = move-exception
            java.util.concurrent.atomic.AtomicInteger r1 = r12.a
            r2 = 0
            r1.set(r2)
            throw r0
        L_0x026c:
            java.lang.String r0 = "found visiable anr , start to upload!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.a(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean r5 = r12.a(r7)     // Catch:{ Throwable -> 0x01cd }
            if (r5 != 0) goto L_0x0283
            java.lang.String r0 = "pack anr fail!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            goto L_0x0242
        L_0x0283:
            com.tencent.bugly.mimsg.crashreport.crash.c r0 = com.tencent.bugly.mimsg.crashreport.crash.c.a()     // Catch:{ Throwable -> 0x01cd }
            r0.a(r5)     // Catch:{ Throwable -> 0x01cd }
            long r0 = r5.a     // Catch:{ Throwable -> 0x01cd }
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L_0x02e4
            java.lang.String r0 = "backup anr record success!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.a(r0, r1)     // Catch:{ Throwable -> 0x01cd }
        L_0x029a:
            if (r13 == 0) goto L_0x02bf
            java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x01cd }
            r0.<init>(r13)     // Catch:{ Throwable -> 0x01cd }
            boolean r0 = r0.exists()     // Catch:{ Throwable -> 0x01cd }
            if (r0 == 0) goto L_0x02bf
            java.util.concurrent.atomic.AtomicInteger r0 = r12.a     // Catch:{ Throwable -> 0x01cd }
            r1 = 3
            r0.set(r1)     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r0 = r7.d     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r1 = r7.a     // Catch:{ Throwable -> 0x01cd }
            boolean r0 = a(r13, r0, r1)     // Catch:{ Throwable -> 0x01cd }
            if (r0 == 0) goto L_0x02bf
            java.lang.String r0 = "backup trace success"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.a(r0, r1)     // Catch:{ Throwable -> 0x01cd }
        L_0x02bf:
            java.lang.String r0 = "ANR"
            java.lang.String r1 = com.tencent.bugly.mimsg.proguard.z.a()     // Catch:{ Throwable -> 0x01cd }
            java.lang.String r2 = r7.a     // Catch:{ Throwable -> 0x01cd }
            r3 = 0
            java.lang.String r4 = r7.e     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.crashreport.crash.b.a(r0, r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.crashreport.crash.b r0 = r12.h     // Catch:{ Throwable -> 0x01cd }
            boolean r0 = r0.a(r5)     // Catch:{ Throwable -> 0x01cd }
            if (r0 != 0) goto L_0x02dd
            com.tencent.bugly.mimsg.crashreport.crash.b r0 = r12.h     // Catch:{ Throwable -> 0x01cd }
            r2 = 3000(0xbb8, double:1.482E-320)
            r1 = 1
            r0.a(r5, r2, r1)     // Catch:{ Throwable -> 0x01cd }
        L_0x02dd:
            com.tencent.bugly.mimsg.crashreport.crash.b r0 = r12.h     // Catch:{ Throwable -> 0x01cd }
            r0.b(r5)     // Catch:{ Throwable -> 0x01cd }
            goto L_0x0242
        L_0x02e4:
            java.lang.String r0 = "backup anr record fail!"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x01cd }
            com.tencent.bugly.mimsg.proguard.x.d(r0, r1)     // Catch:{ Throwable -> 0x01cd }
            goto L_0x029a
        L_0x02ed:
            r2 = r1
            goto L_0x00c6
        L_0x02f0:
            r4 = r0
            goto L_0x0040
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.crashreport.crash.anr.b.a(java.lang.String):void");
    }

    private synchronized void c() {
        if (e()) {
            x.d("start when started!", new Object[0]);
        } else {
            this.i = new FileObserver("/data/anr/", 8) {
                public final void onEvent(int i, String str) {
                    if (str != null) {
                        String str2 = "/data/anr/" + str;
                        if (!str2.contains("trace")) {
                            x.d("not anr file %s", str2);
                            return;
                        }
                        b.this.a(str2);
                    }
                }
            };
            try {
                this.i.startWatching();
                x.a("start anr monitor!", new Object[0]);
                this.e.a(new Runnable() {
                    public final void run() {
                        b.this.b();
                    }
                });
            } catch (Throwable th) {
                this.i = null;
                x.d("start anr monitor failed!", new Object[0]);
                if (!x.a(th)) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }
    }

    private synchronized void d() {
        if (!e()) {
            x.d("close when closed!", new Object[0]);
        } else {
            try {
                this.i.stopWatching();
                this.i = null;
                x.d("close anr monitor!", new Object[0]);
            } catch (Throwable th) {
                x.d("stop anr monitor failed!", new Object[0]);
                if (!x.a(th)) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }
    }

    private synchronized boolean e() {
        return this.i != null;
    }

    private synchronized void b(boolean z) {
        if (z) {
            c();
        } else {
            d();
        }
    }

    private synchronized boolean f() {
        return this.j;
    }

    private synchronized void c(boolean z) {
        if (this.j != z) {
            x.a("user change anr %b", Boolean.valueOf(z));
            this.j = z;
        }
    }

    public final void a(boolean z) {
        c(z);
        boolean f2 = f();
        com.tencent.bugly.mimsg.crashreport.common.strategy.a a2 = com.tencent.bugly.mimsg.crashreport.common.strategy.a.a();
        if (a2 != null) {
            f2 = f2 && a2.c().g;
        }
        if (f2 != e()) {
            x.a("anr changed to %b", Boolean.valueOf(f2));
            b(f2);
        }
    }

    /* access modifiers changed from: protected */
    public final void b() {
        long b2 = z.b() - c.g;
        File file = new File(this.g);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length != 0) {
                String str = "bugly_trace_";
                String str2 = ".txt";
                int length = str.length();
                int i2 = 0;
                for (File file2 : listFiles) {
                    String name = file2.getName();
                    if (name.startsWith(str)) {
                        try {
                            int indexOf = name.indexOf(str2);
                            if (indexOf > 0 && Long.parseLong(name.substring(length, indexOf)) >= b2) {
                            }
                        } catch (Throwable th) {
                            x.e("tomb format error delete %s", name);
                        }
                        if (file2.delete()) {
                            i2++;
                        }
                    }
                }
                x.c("clean tombs %d", Integer.valueOf(i2));
            }
        }
    }

    public final synchronized void a(StrategyBean strategyBean) {
        boolean z = true;
        synchronized (this) {
            if (strategyBean != null) {
                if (strategyBean.j != e()) {
                    x.d("server anr changed to %b", Boolean.valueOf(strategyBean.j));
                }
                if (!strategyBean.j || !f()) {
                    z = false;
                }
                if (z != e()) {
                    x.a("anr changed to %b", Boolean.valueOf(z));
                    b(z);
                }
            }
        }
    }
}
