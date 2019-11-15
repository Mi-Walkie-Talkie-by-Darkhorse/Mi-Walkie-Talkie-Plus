package com.tencent.bugly.mimsg.crashreport.crash;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.crashreport.common.strategy.a;
import com.tencent.bugly.mimsg.proguard.w;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.z;
import java.util.Map;

/* compiled from: BUGLY */
public final class d {
    /* access modifiers changed from: private */
    public static d a = null;
    private a b;
    private com.tencent.bugly.mimsg.crashreport.common.info.a c;
    private b d;
    private Context e;

    static /* synthetic */ void a(d dVar) {
        x.c("[ExtraCrashManager] Trying to notify Bugly agents.", new Object[0]);
        try {
            Class cls = Class.forName("com.tencent.bugly.agent.GameAgent");
            String str = "com.tencent.bugly";
            dVar.c.getClass();
            String str2 = "mimsg";
            if (!"".equals(str2)) {
                str = str + "." + str2;
            }
            z.a(cls, "sdkPackageName", (Object) str, (Object) null);
            x.c("[ExtraCrashManager] Bugly game agent has been notified.", new Object[0]);
        } catch (Throwable th) {
            x.a("[ExtraCrashManager] no game agent", new Object[0]);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:63:0x027b A[Catch:{ Throwable -> 0x0274, all -> 0x0287 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(com.tencent.bugly.mimsg.crashreport.crash.d r8, java.lang.Thread r9, int r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, java.util.Map r14) {
        /*
            r2 = 1
            r6 = 0
            switch(r10) {
                case 4: goto L_0x00a3;
                case 5: goto L_0x0013;
                case 6: goto L_0x0013;
                case 7: goto L_0x0005;
                case 8: goto L_0x00a7;
                default: goto L_0x0005;
            }
        L_0x0005:
            java.lang.String r0 = "[ExtraCrashManager] Unknown extra crash type: %d"
            java.lang.Object[] r1 = new java.lang.Object[r2]
            java.lang.Integer r2 = java.lang.Integer.valueOf(r10)
            r1[r6] = r2
            com.tencent.bugly.mimsg.proguard.x.d(r0, r1)
        L_0x0012:
            return
        L_0x0013:
            java.lang.String r0 = "Cocos"
        L_0x0015:
            java.lang.String r1 = "[ExtraCrashManager] %s Crash Happen"
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r6] = r0
            com.tencent.bugly.mimsg.proguard.x.e(r1, r2)
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r1 = r8.b     // Catch:{ Throwable -> 0x0274 }
            boolean r1 = r1.b()     // Catch:{ Throwable -> 0x0274 }
            if (r1 != 0) goto L_0x0042
            java.lang.String r1 = "waiting for remote sync"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.proguard.x.e(r1, r2)     // Catch:{ Throwable -> 0x0274 }
            r1 = r6
        L_0x002f:
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r2 = r8.b     // Catch:{ Throwable -> 0x0274 }
            boolean r2 = r2.b()     // Catch:{ Throwable -> 0x0274 }
            if (r2 != 0) goto L_0x0042
            r2 = 500(0x1f4, double:2.47E-321)
            com.tencent.bugly.mimsg.proguard.z.b(r2)     // Catch:{ Throwable -> 0x0274 }
            int r1 = r1 + 500
            r2 = 3000(0xbb8, float:4.204E-42)
            if (r1 < r2) goto L_0x002f
        L_0x0042:
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r1 = r8.b     // Catch:{ Throwable -> 0x0274 }
            boolean r1 = r1.b()     // Catch:{ Throwable -> 0x0274 }
            if (r1 != 0) goto L_0x0052
            java.lang.String r1 = "[ExtraCrashManager] There is no remote strategy, but still store it."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.proguard.x.d(r1, r2)     // Catch:{ Throwable -> 0x0274 }
        L_0x0052:
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r1 = r8.b     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.strategy.StrategyBean r1 = r1.c()     // Catch:{ Throwable -> 0x0274 }
            boolean r2 = r1.g     // Catch:{ Throwable -> 0x0274 }
            if (r2 != 0) goto L_0x00ab
            com.tencent.bugly.mimsg.crashreport.common.strategy.a r2 = r8.b     // Catch:{ Throwable -> 0x0274 }
            boolean r2 = r2.b()     // Catch:{ Throwable -> 0x0274 }
            if (r2 == 0) goto L_0x00ab
            java.lang.String r1 = "[ExtraCrashManager] Crash report was closed by remote , will not upload to Bugly , print local for helpful!"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.proguard.x.e(r1, r2)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = com.tencent.bugly.mimsg.proguard.z.a()     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r2 = r8.c     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r2 = r2.d     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0274 }
            r3.<init>()     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r3 = r3.append(r11)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r4 = "\n"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r3 = r3.append(r12)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r4 = "\n"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r3 = r3.append(r13)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r4 = r3.toString()     // Catch:{ Throwable -> 0x0274 }
            r5 = 0
            r3 = r9
            com.tencent.bugly.mimsg.crashreport.crash.b.a(r0, r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r0 = "[ExtraCrashManager] Successfully handled."
            java.lang.Object[] r1 = new java.lang.Object[r6]
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)
            goto L_0x0012
        L_0x00a3:
            java.lang.String r0 = "Unity"
            goto L_0x0015
        L_0x00a7:
            java.lang.String r0 = "H5"
            goto L_0x0015
        L_0x00ab:
            switch(r10) {
                case 4: goto L_0x00ae;
                case 5: goto L_0x01f7;
                case 6: goto L_0x01f7;
                case 7: goto L_0x00ae;
                case 8: goto L_0x020f;
                default: goto L_0x00ae;
            }
        L_0x00ae:
            r1 = 8
            if (r10 != r1) goto L_0x00b3
            r10 = 5
        L_0x00b3:
            com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean r5 = new com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean     // Catch:{ Throwable -> 0x0274 }
            r5.<init>()     // Catch:{ Throwable -> 0x0274 }
            long r2 = com.tencent.bugly.mimsg.crashreport.common.info.b.g()     // Catch:{ Throwable -> 0x0274 }
            r5.B = r2     // Catch:{ Throwable -> 0x0274 }
            long r2 = com.tencent.bugly.mimsg.crashreport.common.info.b.e()     // Catch:{ Throwable -> 0x0274 }
            r5.C = r2     // Catch:{ Throwable -> 0x0274 }
            long r2 = com.tencent.bugly.mimsg.crashreport.common.info.b.i()     // Catch:{ Throwable -> 0x0274 }
            r5.D = r2     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            long r2 = r1.p()     // Catch:{ Throwable -> 0x0274 }
            r5.E = r2     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            long r2 = r1.o()     // Catch:{ Throwable -> 0x0274 }
            r5.F = r2     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            long r2 = r1.q()     // Catch:{ Throwable -> 0x0274 }
            r5.G = r2     // Catch:{ Throwable -> 0x0274 }
            android.content.Context r1 = r8.e     // Catch:{ Throwable -> 0x0274 }
            int r2 = com.tencent.bugly.mimsg.crashreport.crash.c.e     // Catch:{ Throwable -> 0x0274 }
            r3 = 0
            java.lang.String r1 = com.tencent.bugly.mimsg.proguard.z.a(r1, r2, r3)     // Catch:{ Throwable -> 0x0274 }
            r5.w = r1     // Catch:{ Throwable -> 0x0274 }
            r5.b = r10     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = r1.h()     // Catch:{ Throwable -> 0x0274 }
            r5.e = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = r1.j     // Catch:{ Throwable -> 0x0274 }
            r5.f = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = r1.w()     // Catch:{ Throwable -> 0x0274 }
            r5.g = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = r1.g()     // Catch:{ Throwable -> 0x0274 }
            r5.m = r1     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0274 }
            r1.<init>()     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r1 = r1.append(r11)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = r1.toString()     // Catch:{ Throwable -> 0x0274 }
            r5.n = r1     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0274 }
            r1.<init>()     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r1 = r1.append(r12)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = r1.toString()     // Catch:{ Throwable -> 0x0274 }
            r5.o = r1     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = ""
            if (r13 == 0) goto L_0x0227
            java.lang.String r2 = "\n"
            java.lang.String[] r2 = r13.split(r2)     // Catch:{ Throwable -> 0x0274 }
            int r3 = r2.length     // Catch:{ Throwable -> 0x0274 }
            if (r3 <= 0) goto L_0x013b
            r1 = 0
            r1 = r2[r1]     // Catch:{ Throwable -> 0x0274 }
        L_0x013b:
            r2 = r1
            r1 = r13
        L_0x013d:
            r5.p = r2     // Catch:{ Throwable -> 0x0274 }
            r5.q = r1     // Catch:{ Throwable -> 0x0274 }
            long r2 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x0274 }
            r5.r = r2     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = r5.q     // Catch:{ Throwable -> 0x0274 }
            byte[] r1 = r1.getBytes()     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = com.tencent.bugly.mimsg.proguard.z.b(r1)     // Catch:{ Throwable -> 0x0274 }
            r5.u = r1     // Catch:{ Throwable -> 0x0274 }
            int r1 = com.tencent.bugly.mimsg.crashreport.crash.c.f     // Catch:{ Throwable -> 0x0274 }
            r2 = 0
            java.util.Map r1 = com.tencent.bugly.mimsg.proguard.z.a(r1, r2)     // Catch:{ Throwable -> 0x0274 }
            r5.y = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = r1.d     // Catch:{ Throwable -> 0x0274 }
            r5.z = r1     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0274 }
            r1.<init>()     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r2 = r9.getName()     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r2 = "("
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x0274 }
            long r2 = r9.getId()     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r2 = ")"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = r1.toString()     // Catch:{ Throwable -> 0x0274 }
            r5.A = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r1 = r1.y()     // Catch:{ Throwable -> 0x0274 }
            r5.H = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            java.util.Map r1 = r1.v()     // Catch:{ Throwable -> 0x0274 }
            r5.h = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            long r2 = r1.a     // Catch:{ Throwable -> 0x0274 }
            r5.L = r2     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            boolean r1 = r1.a()     // Catch:{ Throwable -> 0x0274 }
            r5.M = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            int r1 = r1.F()     // Catch:{ Throwable -> 0x0274 }
            r5.O = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            int r1 = r1.G()     // Catch:{ Throwable -> 0x0274 }
            r5.P = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            java.util.Map r1 = r1.z()     // Catch:{ Throwable -> 0x0274 }
            r5.Q = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r1 = r8.c     // Catch:{ Throwable -> 0x0274 }
            java.util.Map r1 = r1.E()     // Catch:{ Throwable -> 0x0274 }
            r5.R = r1     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.crash.b r1 = r8.d     // Catch:{ Throwable -> 0x0274 }
            r1.c(r5)     // Catch:{ Throwable -> 0x0274 }
            byte[] r1 = com.tencent.bugly.mimsg.proguard.y.a()     // Catch:{ Throwable -> 0x0274 }
            r5.x = r1     // Catch:{ Throwable -> 0x0274 }
            java.util.Map<java.lang.String, java.lang.String> r1 = r5.N     // Catch:{ Throwable -> 0x0274 }
            if (r1 != 0) goto L_0x01dd
            java.util.LinkedHashMap r1 = new java.util.LinkedHashMap     // Catch:{ Throwable -> 0x0274 }
            r1.<init>()     // Catch:{ Throwable -> 0x0274 }
            r5.N = r1     // Catch:{ Throwable -> 0x0274 }
        L_0x01dd:
            if (r14 == 0) goto L_0x01e4
            java.util.Map<java.lang.String, java.lang.String> r1 = r5.N     // Catch:{ Throwable -> 0x0274 }
            r1.putAll(r14)     // Catch:{ Throwable -> 0x0274 }
        L_0x01e4:
            if (r5 != 0) goto L_0x022e
            java.lang.String r0 = "[ExtraCrashManager] Failed to package crash data."
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r0 = "[ExtraCrashManager] Successfully handled."
            java.lang.Object[] r1 = new java.lang.Object[r6]
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)
            goto L_0x0012
        L_0x01f7:
            boolean r1 = r1.l     // Catch:{ Throwable -> 0x0274 }
            if (r1 != 0) goto L_0x00ae
            java.lang.String r1 = "[ExtraCrashManager] %s report is disabled."
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0274 }
            r3 = 0
            r2[r3] = r0     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.proguard.x.e(r1, r2)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r0 = "[ExtraCrashManager] Successfully handled."
            java.lang.Object[] r1 = new java.lang.Object[r6]
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)
            goto L_0x0012
        L_0x020f:
            boolean r1 = r1.m     // Catch:{ Throwable -> 0x0274 }
            if (r1 != 0) goto L_0x00ae
            java.lang.String r1 = "[ExtraCrashManager] %s report is disabled."
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0274 }
            r3 = 0
            r2[r3] = r0     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.proguard.x.e(r1, r2)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r0 = "[ExtraCrashManager] Successfully handled."
            java.lang.Object[] r1 = new java.lang.Object[r6]
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)
            goto L_0x0012
        L_0x0227:
            java.lang.String r2 = ""
            r7 = r2
            r2 = r1
            r1 = r7
            goto L_0x013d
        L_0x022e:
            java.lang.String r1 = com.tencent.bugly.mimsg.proguard.z.a()     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.common.info.a r2 = r8.c     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r2 = r2.d     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0274 }
            r3.<init>()     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r3 = r3.append(r11)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r4 = "\n"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r3 = r3.append(r12)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r4 = "\n"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x0274 }
            java.lang.StringBuilder r3 = r3.append(r13)     // Catch:{ Throwable -> 0x0274 }
            java.lang.String r4 = r3.toString()     // Catch:{ Throwable -> 0x0274 }
            r3 = r9
            com.tencent.bugly.mimsg.crashreport.crash.b.a(r0, r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0274 }
            com.tencent.bugly.mimsg.crashreport.crash.b r0 = r8.d     // Catch:{ Throwable -> 0x0274 }
            boolean r0 = r0.a(r5)     // Catch:{ Throwable -> 0x0274 }
            if (r0 != 0) goto L_0x026b
            com.tencent.bugly.mimsg.crashreport.crash.b r0 = r8.d     // Catch:{ Throwable -> 0x0274 }
            r2 = 3000(0xbb8, double:1.482E-320)
            r1 = 0
            r0.a(r5, r2, r1)     // Catch:{ Throwable -> 0x0274 }
        L_0x026b:
            java.lang.String r0 = "[ExtraCrashManager] Successfully handled."
            java.lang.Object[] r1 = new java.lang.Object[r6]
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)
            goto L_0x0012
        L_0x0274:
            r0 = move-exception
            boolean r1 = com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ all -> 0x0287 }
            if (r1 != 0) goto L_0x027e
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0287 }
        L_0x027e:
            java.lang.String r0 = "[ExtraCrashManager] Successfully handled."
            java.lang.Object[] r1 = new java.lang.Object[r6]
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)
            goto L_0x0012
        L_0x0287:
            r0 = move-exception
            java.lang.String r1 = "[ExtraCrashManager] Successfully handled."
            java.lang.Object[] r2 = new java.lang.Object[r6]
            com.tencent.bugly.mimsg.proguard.x.e(r1, r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.crashreport.crash.d.a(com.tencent.bugly.mimsg.crashreport.crash.d, java.lang.Thread, int, java.lang.String, java.lang.String, java.lang.String, java.util.Map):void");
    }

    private d(Context context) {
        c a2 = c.a();
        if (a2 != null) {
            this.b = a.a();
            this.c = com.tencent.bugly.mimsg.crashreport.common.info.a.a(context);
            this.d = a2.o;
            this.e = context;
            w.a().a(new Runnable() {
                public final void run() {
                    d.a(d.this);
                }
            });
        }
    }

    public static d a(Context context) {
        if (a == null) {
            a = new d(context);
        }
        return a;
    }

    public static void a(Thread thread, int i, String str, String str2, String str3, Map<String, String> map) {
        final Thread thread2 = thread;
        final int i2 = i;
        final String str4 = str;
        final String str5 = str2;
        final String str6 = str3;
        final Map<String, String> map2 = map;
        w.a().a(new Runnable() {
            public final void run() {
                try {
                    if (d.a == null) {
                        x.e("[ExtraCrashManager] Extra crash manager has not been initialized.", new Object[0]);
                    } else {
                        d.a(d.a, thread2, i2, str4, str5, str6, map2);
                    }
                } catch (Throwable th) {
                    if (!x.b(th)) {
                        ThrowableExtension.printStackTrace(th);
                    }
                    x.e("[ExtraCrashManager] Crash error %s %s %s", str4, str5, str6);
                }
            }
        });
    }
}
