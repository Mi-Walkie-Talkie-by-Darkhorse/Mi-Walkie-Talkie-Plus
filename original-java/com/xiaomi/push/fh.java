package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMJobService;

/* loaded from: classes2.dex */
public final class fh {

    /* renamed from: a  reason: collision with other field name */
    private static a f347a;

    /* renamed from: a  reason: collision with other field name */
    private static final String f348a = XMJobService.class.getCanonicalName();

    /* renamed from: a  reason: collision with root package name */
    private static int f8941a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface a {
        /* renamed from: a */
        void mo276a();

        void a(long j);

        void a(boolean z);

        /* renamed from: a  reason: collision with other method in class */
        boolean m274a();
    }

    public static synchronized void a() {
        synchronized (fh.class) {
            if (f347a != null) {
                b.m1a("[Alarm] stop alarm.");
                f347a.mo276a();
            }
        }
    }

    public static void a(long j) {
        a aVar = f347a;
        if (aVar != null) {
            aVar.a(j);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        if (com.xiaomi.push.fh.f348a.equals(com.xiaomi.push.u.a(r9, r6.name).getSuperclass().getCanonicalName()) != false) goto L_0x0048;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(android.content.Context r9) {
        /*
            java.lang.String r0 = "android.permission.BIND_JOB_SERVICE"
            android.content.Context r9 = r9.getApplicationContext()
            java.lang.String r1 = r9.getPackageName()
            java.lang.String r2 = "com.xiaomi.xmsf"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x001b
            com.xiaomi.push.fi r0 = new com.xiaomi.push.fi
            r0.<init>(r9)
        L_0x0017:
            com.xiaomi.push.fh.f347a = r0
            goto L_0x00d4
        L_0x001b:
            android.content.pm.PackageManager r1 = r9.getPackageManager()
            r2 = 0
            java.lang.String r3 = r9.getPackageName()     // Catch: Exception -> 0x0081
            r4 = 4
            android.content.pm.PackageInfo r1 = r1.getPackageInfo(r3, r4)     // Catch: Exception -> 0x0081
            android.content.pm.ServiceInfo[] r3 = r1.services     // Catch: Exception -> 0x0081
            r4 = 1
            if (r3 == 0) goto L_0x009a
            android.content.pm.ServiceInfo[] r1 = r1.services     // Catch: Exception -> 0x0081
            int r3 = r1.length     // Catch: Exception -> 0x0081
            r5 = 0
        L_0x0032:
            if (r2 >= r3) goto L_0x007f
            r6 = r1[r2]     // Catch: Exception -> 0x007c
            java.lang.String r7 = r6.permission     // Catch: Exception -> 0x007c
            boolean r7 = r0.equals(r7)     // Catch: Exception -> 0x007c
            if (r7 == 0) goto L_0x0065
            java.lang.String r7 = com.xiaomi.push.fh.f348a     // Catch: Exception -> 0x007c
            java.lang.String r8 = r6.name     // Catch: Exception -> 0x007c
            boolean r7 = r7.equals(r8)     // Catch: Exception -> 0x007c
            if (r7 == 0) goto L_0x004a
        L_0x0048:
            r5 = 1
            goto L_0x0062
        L_0x004a:
            java.lang.String r7 = r6.name     // Catch: Exception -> 0x0061
            java.lang.Class r7 = com.xiaomi.push.u.a(r9, r7)     // Catch: Exception -> 0x0061
            java.lang.String r8 = com.xiaomi.push.fh.f348a     // Catch: Exception -> 0x0061
            java.lang.Class r7 = r7.getSuperclass()     // Catch: Exception -> 0x0061
            java.lang.String r7 = r7.getCanonicalName()     // Catch: Exception -> 0x0061
            boolean r7 = r8.equals(r7)     // Catch: Exception -> 0x0061
            if (r7 == 0) goto L_0x0062
            goto L_0x0048
        L_0x0061:
        L_0x0062:
            if (r5 != r4) goto L_0x0065
            goto L_0x007f
        L_0x0065:
            java.lang.String r7 = com.xiaomi.push.fh.f348a     // Catch: Exception -> 0x007c
            java.lang.String r8 = r6.name     // Catch: Exception -> 0x007c
            boolean r7 = r7.equals(r8)     // Catch: Exception -> 0x007c
            if (r7 == 0) goto L_0x0079
            java.lang.String r6 = r6.permission     // Catch: Exception -> 0x007c
            boolean r6 = r0.equals(r6)     // Catch: Exception -> 0x007c
            if (r6 == 0) goto L_0x0079
            r2 = 1
            goto L_0x009a
        L_0x0079:
            int r2 = r2 + 1
            goto L_0x0032
        L_0x007c:
            r1 = move-exception
            r2 = r5
            goto L_0x0082
        L_0x007f:
            r2 = r5
            goto L_0x009a
        L_0x0081:
            r1 = move-exception
        L_0x0082:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "check service err : "
            r3.append(r4)
            java.lang.String r1 = r1.getMessage()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            com.xiaomi.channel.commonutils.logger.b.m1a(r1)
        L_0x009a:
            if (r2 != 0) goto L_0x00c9
            boolean r1 = com.xiaomi.push.u.m662a(r9)
            if (r1 != 0) goto L_0x00a3
            goto L_0x00c9
        L_0x00a3:
            java.lang.RuntimeException r9 = new java.lang.RuntimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Should export service: "
            r1.append(r2)
            java.lang.String r2 = com.xiaomi.push.fh.f348a
            r1.append(r2)
            java.lang.String r2 = " with permission "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = " in AndroidManifest.xml file"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r9.<init>(r0)
            throw r9
        L_0x00c9:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            com.xiaomi.push.fi r0 = new com.xiaomi.push.fi
            r0.<init>(r9)
            goto L_0x0017
        L_0x00d4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.fh.a(android.content.Context):void");
    }

    public static synchronized void a(Context context, int i) {
        synchronized (fh.class) {
            int i2 = f8941a;
            if (!"com.xiaomi.xmsf".equals(context.getPackageName())) {
                if (i == 2) {
                    f8941a = 2;
                } else {
                    f8941a = 0;
                }
            }
            if (i2 != f8941a && f8941a == 2) {
                a();
                f347a = new fk(context);
            }
        }
    }

    public static synchronized void a(boolean z) {
        synchronized (fh.class) {
            if (f347a == null) {
                b.m1a("timer is not initialized");
                return;
            }
            b.m1a("[Alarm] register alarm. (" + z + ")");
            f347a.a(z);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static synchronized boolean m273a() {
        synchronized (fh.class) {
            if (f347a == null) {
                return false;
            }
            return f347a.m274a();
        }
    }
}
