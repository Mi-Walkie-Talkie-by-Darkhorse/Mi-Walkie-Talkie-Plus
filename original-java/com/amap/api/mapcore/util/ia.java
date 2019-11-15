package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.mipush.sdk.Constants;
import java.io.File;
import java.io.FileInputStream;

/* compiled from: OfflineLocManager */
public class ia {
    static int a = 1000;
    static boolean b = false;

    public static synchronized void a(int i, boolean z) {
        synchronized (ia.class) {
            a = i;
            b = z;
        }
    }

    public static synchronized void a(final hz hzVar, final Context context) {
        synchronized (ia.class) {
            gf.c().submit(new Runnable() {
                /* JADX WARNING: Removed duplicated region for block: B:35:0x006b A[SYNTHETIC, Splitter:B:35:0x006b] */
                /* JADX WARNING: Removed duplicated region for block: B:38:0x0070 A[SYNTHETIC, Splitter:B:38:0x0070] */
                /* JADX WARNING: Unknown top exception splitter block from list: {B:40:0x0073=Splitter:B:40:0x0073, B:12:0x0049=Splitter:B:12:0x0049} */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public void run() {
                    /*
                        r8 = this;
                        r1 = 0
                        java.lang.Class<com.amap.api.mapcore.util.ia> r3 = com.amap.api.mapcore.util.ia.class
                        monitor-enter(r3)
                        com.amap.api.mapcore.util.hz r0 = r3     // Catch:{ Throwable -> 0x004b, all -> 0x0067 }
                        byte[] r0 = r0.a()     // Catch:{ Throwable -> 0x004b, all -> 0x0067 }
                        android.content.Context r2 = r4     // Catch:{ Throwable -> 0x004b, all -> 0x0067 }
                        java.lang.String r4 = com.amap.api.mapcore.util.gd.h     // Catch:{ Throwable -> 0x004b, all -> 0x0067 }
                        java.lang.String r2 = com.amap.api.mapcore.util.gd.a(r2, r4)     // Catch:{ Throwable -> 0x004b, all -> 0x0067 }
                        java.io.File r4 = new java.io.File     // Catch:{ Throwable -> 0x004b, all -> 0x0067 }
                        r4.<init>(r2)     // Catch:{ Throwable -> 0x004b, all -> 0x0067 }
                        r2 = 1
                        r5 = 1
                        r6 = 2097152(0x200000, double:1.0361308E-317)
                        com.amap.api.mapcore.util.hk r2 = com.amap.api.mapcore.util.hk.a(r4, r2, r5, r6)     // Catch:{ Throwable -> 0x004b, all -> 0x0067 }
                        int r4 = com.amap.api.mapcore.util.ia.a     // Catch:{ Throwable -> 0x008f }
                        r2.a(r4)     // Catch:{ Throwable -> 0x008f }
                        long r4 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x008f }
                        java.lang.String r4 = java.lang.Long.toString(r4)     // Catch:{ Throwable -> 0x008f }
                        com.amap.api.mapcore.util.hk$a r4 = r2.b(r4)     // Catch:{ Throwable -> 0x008f }
                        r5 = 0
                        java.io.OutputStream r1 = r4.a(r5)     // Catch:{ Throwable -> 0x008f }
                        r1.write(r0)     // Catch:{ Throwable -> 0x008f }
                        r4.a()     // Catch:{ Throwable -> 0x008f }
                        r2.e()     // Catch:{ Throwable -> 0x008f }
                        if (r1 == 0) goto L_0x0044
                        r1.close()     // Catch:{ Throwable -> 0x0083 }
                    L_0x0044:
                        if (r2 == 0) goto L_0x0049
                        r2.close()     // Catch:{ Throwable -> 0x0088 }
                    L_0x0049:
                        monitor-exit(r3)     // Catch:{ all -> 0x0064 }
                        return
                    L_0x004b:
                        r0 = move-exception
                        r2 = r1
                    L_0x004d:
                        java.lang.String r4 = "OfflineLocManager"
                        java.lang.String r5 = "applyOfflineLocEntity"
                        com.amap.api.mapcore.util.gc.a(r0, r4, r5)     // Catch:{ all -> 0x008d }
                        if (r1 == 0) goto L_0x0059
                        r1.close()     // Catch:{ Throwable -> 0x007e }
                    L_0x0059:
                        if (r2 == 0) goto L_0x0049
                        r2.close()     // Catch:{ Throwable -> 0x005f }
                        goto L_0x0049
                    L_0x005f:
                        r0 = move-exception
                        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0064 }
                        goto L_0x0049
                    L_0x0064:
                        r0 = move-exception
                        monitor-exit(r3)     // Catch:{ all -> 0x0064 }
                        throw r0
                    L_0x0067:
                        r0 = move-exception
                        r2 = r1
                    L_0x0069:
                        if (r1 == 0) goto L_0x006e
                        r1.close()     // Catch:{ Throwable -> 0x0074 }
                    L_0x006e:
                        if (r2 == 0) goto L_0x0073
                        r2.close()     // Catch:{ Throwable -> 0x0079 }
                    L_0x0073:
                        throw r0     // Catch:{ all -> 0x0064 }
                    L_0x0074:
                        r1 = move-exception
                        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0064 }
                        goto L_0x006e
                    L_0x0079:
                        r1 = move-exception
                        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0064 }
                        goto L_0x0073
                    L_0x007e:
                        r0 = move-exception
                        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0064 }
                        goto L_0x0059
                    L_0x0083:
                        r0 = move-exception
                        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0064 }
                        goto L_0x0044
                    L_0x0088:
                        r0 = move-exception
                        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0064 }
                        goto L_0x0049
                    L_0x008d:
                        r0 = move-exception
                        goto L_0x0069
                    L_0x008f:
                        r0 = move-exception
                        goto L_0x004d
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ia.AnonymousClass1.run():void");
                }
            });
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:54:0x00a8 A[SYNTHETIC, Splitter:B:54:0x00a8] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r7) {
        /*
            r2 = 0
            r6 = 1
            r0 = 0
            boolean r1 = d(r7)     // Catch:{ Throwable -> 0x0087, all -> 0x00a4 }
            if (r1 != 0) goto L_0x0015
            if (r2 == 0) goto L_0x0014
            boolean r1 = r0.d()     // Catch:{ Throwable -> 0x00b6 }
            if (r1 != 0) goto L_0x0014
            r0.close()     // Catch:{ Throwable -> 0x00b8 }
        L_0x0014:
            return
        L_0x0015:
            java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x0087, all -> 0x00a4 }
            java.lang.String r1 = com.amap.api.mapcore.util.gd.h     // Catch:{ Throwable -> 0x0087, all -> 0x00a4 }
            java.lang.String r1 = com.amap.api.mapcore.util.gd.a(r7, r1)     // Catch:{ Throwable -> 0x0087, all -> 0x00a4 }
            r0.<init>(r1)     // Catch:{ Throwable -> 0x0087, all -> 0x00a4 }
            r1 = 1
            r3 = 1
            r4 = 2097152(0x200000, double:1.0361308E-317)
            com.amap.api.mapcore.util.hk r1 = com.amap.api.mapcore.util.hk.a(r0, r1, r3, r4)     // Catch:{ Throwable -> 0x0087, all -> 0x00a4 }
            java.lang.String r0 = a(r7, r1)     // Catch:{ Throwable -> 0x00bc }
            boolean r3 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x00bc }
            if (r3 == 0) goto L_0x0044
            if (r1 == 0) goto L_0x0014
            boolean r0 = r1.d()     // Catch:{ Throwable -> 0x00b4 }
            if (r0 != 0) goto L_0x0014
            r1.close()     // Catch:{ Throwable -> 0x003f }
            goto L_0x0014
        L_0x003f:
            r0 = move-exception
        L_0x0040:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0014
        L_0x0044:
            byte[] r0 = com.amap.api.mapcore.util.fy.a(r0)     // Catch:{ Throwable -> 0x00bc }
            byte[] r0 = com.amap.api.mapcore.util.fy.c(r0)     // Catch:{ Throwable -> 0x00bc }
            com.amap.api.mapcore.util.ge r3 = new com.amap.api.mapcore.util.ge     // Catch:{ Throwable -> 0x00bc }
            java.lang.String r4 = "6"
            r3.<init>(r0, r4)     // Catch:{ Throwable -> 0x00bc }
            com.amap.api.mapcore.util.hp r0 = com.amap.api.mapcore.util.hp.a()     // Catch:{ Throwable -> 0x00bc }
            byte[] r0 = r0.b(r3)     // Catch:{ Throwable -> 0x00bc }
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch:{ Throwable -> 0x00bc }
            java.lang.String r4 = new java.lang.String     // Catch:{ Throwable -> 0x00bc }
            r4.<init>(r0)     // Catch:{ Throwable -> 0x00bc }
            r3.<init>(r4)     // Catch:{ Throwable -> 0x00bc }
            java.lang.String r0 = "code"
            boolean r0 = r3.has(r0)     // Catch:{ Throwable -> 0x00bc }
            if (r0 == 0) goto L_0x0079
            java.lang.String r0 = "code"
            int r0 = r3.getInt(r0)     // Catch:{ Throwable -> 0x00bc }
            if (r0 != r6) goto L_0x0079
            b(r1)     // Catch:{ Throwable -> 0x00bc }
            r1 = r2
        L_0x0079:
            if (r1 == 0) goto L_0x0014
            boolean r0 = r1.d()     // Catch:{ Throwable -> 0x00b2 }
            if (r0 != 0) goto L_0x0014
            r1.close()     // Catch:{ Throwable -> 0x0085 }
            goto L_0x0014
        L_0x0085:
            r0 = move-exception
            goto L_0x0040
        L_0x0087:
            r0 = move-exception
            r1 = r2
        L_0x0089:
            java.lang.String r2 = "OfflineLocManager"
            java.lang.String r3 = "updateOfflineLocData"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)     // Catch:{ all -> 0x00ba }
            if (r1 == 0) goto L_0x0014
            boolean r0 = r1.d()     // Catch:{ Throwable -> 0x009d }
            if (r0 != 0) goto L_0x0014
            r1.close()     // Catch:{ Throwable -> 0x009d }
            goto L_0x0014
        L_0x009d:
            r0 = move-exception
            goto L_0x0040
        L_0x009f:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
        L_0x00a3:
            throw r0
        L_0x00a4:
            r0 = move-exception
            r1 = r2
        L_0x00a6:
            if (r1 == 0) goto L_0x00a3
            boolean r2 = r1.d()     // Catch:{ Throwable -> 0x009f }
            if (r2 != 0) goto L_0x00a3
            r1.close()     // Catch:{ Throwable -> 0x009f }
            goto L_0x00a3
        L_0x00b2:
            r0 = move-exception
            goto L_0x0040
        L_0x00b4:
            r0 = move-exception
            goto L_0x0040
        L_0x00b6:
            r0 = move-exception
            goto L_0x0040
        L_0x00b8:
            r0 = move-exception
            goto L_0x0040
        L_0x00ba:
            r0 = move-exception
            goto L_0x00a6
        L_0x00bc:
            r0 = move-exception
            goto L_0x0089
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ia.a(android.content.Context):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x003d A[SYNTHETIC, Splitter:B:16:0x003d] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0049 A[SYNTHETIC, Splitter:B:22:0x0049] */
    /* JADX WARNING: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(android.content.Context r5, long r6) {
        /*
            r1 = 0
            java.lang.String r0 = "f.log"
            java.lang.String r0 = com.amap.api.mapcore.util.gd.a(r5, r0)     // Catch:{ Throwable -> 0x0033 }
            java.io.File r3 = new java.io.File     // Catch:{ Throwable -> 0x0033 }
            r3.<init>(r0)     // Catch:{ Throwable -> 0x0033 }
            java.io.File r0 = r3.getParentFile()     // Catch:{ Throwable -> 0x0033 }
            boolean r0 = r0.exists()     // Catch:{ Throwable -> 0x0033 }
            if (r0 != 0) goto L_0x001d
            java.io.File r0 = r3.getParentFile()     // Catch:{ Throwable -> 0x0033 }
            r0.mkdirs()     // Catch:{ Throwable -> 0x0033 }
        L_0x001d:
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ Throwable -> 0x0033 }
            r2.<init>(r3)     // Catch:{ Throwable -> 0x0033 }
            java.lang.String r0 = java.lang.String.valueOf(r6)     // Catch:{ Throwable -> 0x0057, all -> 0x0054 }
            byte[] r0 = com.amap.api.mapcore.util.fy.a(r0)     // Catch:{ Throwable -> 0x0057, all -> 0x0054 }
            r2.write(r0)     // Catch:{ Throwable -> 0x0057, all -> 0x0054 }
            if (r2 == 0) goto L_0x0032
            r2.close()     // Catch:{ Throwable -> 0x0052 }
        L_0x0032:
            return
        L_0x0033:
            r0 = move-exception
        L_0x0034:
            java.lang.String r2 = "OfflineLocManager"
            java.lang.String r3 = "updateLogUpdateTime"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)     // Catch:{ all -> 0x0046 }
            if (r1 == 0) goto L_0x0032
            r1.close()     // Catch:{ Throwable -> 0x0041 }
            goto L_0x0032
        L_0x0041:
            r0 = move-exception
        L_0x0042:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0032
        L_0x0046:
            r0 = move-exception
        L_0x0047:
            if (r1 == 0) goto L_0x004c
            r1.close()     // Catch:{ Throwable -> 0x004d }
        L_0x004c:
            throw r0
        L_0x004d:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x004c
        L_0x0052:
            r0 = move-exception
            goto L_0x0042
        L_0x0054:
            r0 = move-exception
            r1 = r2
            goto L_0x0047
        L_0x0057:
            r0 = move-exception
            r1 = r2
            goto L_0x0034
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ia.a(android.content.Context, long):void");
    }

    private static String a(hk hkVar) {
        String[] list;
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        try {
            File c = hkVar.c();
            if (c != null && c.exists()) {
                for (String str : c.list()) {
                    if (str.contains(".0")) {
                        String a2 = fy.a(id.a(hkVar, str.split("\\.")[0], false));
                        if (z) {
                            z = false;
                        } else {
                            sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                        }
                        sb.append("{\"log\":\"").append(a2).append("\"}");
                    }
                }
            }
        } catch (Throwable th) {
            gc.a(th, "StatisticsManager", "getContent");
        }
        return sb.toString();
    }

    private static void b(hk hkVar) {
        if (hkVar != null) {
            try {
                hkVar.f();
            } catch (Throwable th) {
                gc.a(th, "StatisticsManager", "getContent");
            }
        }
    }

    private static String a(Context context, hk hkVar) {
        String a2 = a(hkVar);
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        String e = e(context);
        StringBuilder sb = new StringBuilder();
        sb.append("{\"pinfo\":\"").append(e).append("\",\"els\":[");
        sb.append(a2);
        sb.append("]}");
        return sb.toString();
    }

    private static long c(Context context) {
        File file = new File(gd.a(context, "f.log"));
        if (!file.exists()) {
            return 0;
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                byte[] bArr = new byte[fileInputStream2.available()];
                fileInputStream2.read(bArr);
                long parseLong = Long.parseLong(fy.a(bArr));
                if (fileInputStream2 == null) {
                    return parseLong;
                }
                try {
                    fileInputStream2.close();
                    return parseLong;
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                    return parseLong;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        ThrowableExtension.printStackTrace(th3);
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            try {
                gc.a(th, "ol", "gut");
                if (file != null) {
                    if (file.exists()) {
                        file.delete();
                    }
                }
            } catch (Throwable th5) {
                th = th5;
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Throwable th6) {
                    ThrowableExtension.printStackTrace(th6);
                }
            }
            return System.currentTimeMillis();
        }
    }

    private static synchronized boolean d(Context context) {
        boolean z = false;
        synchronized (ia.class) {
            try {
                if (fs.p(context) == 1 || b) {
                    if (System.currentTimeMillis() - c(context) >= 14400000) {
                        a(context, System.currentTimeMillis());
                        z = true;
                    }
                }
            } catch (Throwable th) {
                gc.a(th, "StatisticsManager", "isUpdate");
            }
        }
        return z;
    }

    private static String e(Context context) {
        return fr.b(context, fy.a(b(context)));
    }

    static String b(Context context) {
        String str = "";
        String str2 = "GImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJtYWMiOiIlcyIsInRpZCI6IiVzIiwidW1pZHQiOiIlcyIsIm1hbnVmYWN0dXJlIjoiJXMiLCJkZXZpY2UiOiIlcyIsInNpbSI6IiVzIiwicGtnIjoiJXMiLCJtb2RlbCI6IiVzIiwiYXBwdmVyc2lvbiI6IiVzIiwiYXBwbmFtZSI6IiVzIg==\n";
        try {
            return String.format(fy.c(new String(ga.a(10))), new Object[]{fo.f(context), fs.t(context), fs.l(context), fs.h(context), fs.a(), Build.MANUFACTURER, Build.DEVICE, fs.u(context), fo.c(context), Build.MODEL, fo.d(context), fo.b(context)});
        } catch (Throwable th) {
            gc.a(th, "ol", "gpj");
            return str;
        }
    }
}
