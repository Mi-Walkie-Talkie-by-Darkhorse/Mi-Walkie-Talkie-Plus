package com.amap.api.col.sl;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.lang.ref.WeakReference;
import java.util.List;

/* compiled from: ErrorLogManager */
public class cn {
    /* access modifiers changed from: private */
    public static WeakReference<dw> a;
    private static boolean b = true;
    private static WeakReference<ep> c;
    private static WeakReference<ep> d;
    private static String[] e = new String[10];
    private static int f = 0;
    private static boolean g = false;
    private static int h = 0;
    private static bz i;

    private static boolean a(bz bzVar) {
        return bzVar != null && bzVar.e();
    }

    private static void a(Context context, bz bzVar, int i2, String str, String str2) {
        String str3;
        String a2 = ca.a(System.currentTimeMillis());
        String a3 = ed.a(context, bzVar);
        bp.a(context);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(a3).append(",\"timestamp\":\"");
        stringBuffer.append(a2);
        stringBuffer.append("\",\"et\":\"");
        stringBuffer.append(i2);
        stringBuffer.append("\",\"classname\":\"");
        stringBuffer.append(str);
        stringBuffer.append("\",");
        stringBuffer.append("\"detail\":\"");
        stringBuffer.append(str2);
        stringBuffer.append("\"");
        String stringBuffer2 = stringBuffer.toString();
        if (stringBuffer2 != null && !"".equals(stringBuffer2)) {
            String c2 = bw.c(str2);
            if (i2 == 1) {
                str3 = ck.b;
            } else if (i2 == 2) {
                str3 = ck.d;
            } else if (i2 == 0) {
                str3 = ck.c;
            } else {
                return;
            }
            dw a4 = ed.a(a);
            ed.a(context, a4, str3, 1000, 20480, "1");
            if (a4.e == null) {
                a4.e = new cb(new cc(new ce(new cg())));
            }
            try {
                dx.a(c2, ca.a(stringBuffer2), a4);
            } catch (Throwable th) {
            }
        }
    }

    static void a(Context context) {
        List c2 = ck.c(context);
        if (c2 != null && c2.size() != 0) {
            String a2 = a(c2);
            if (a2 != null && !"".equals(a2) && i != null) {
                a(context, i, 2, "ANR", a2);
            }
        }
    }

    public static void a(Context context, Throwable th, int i2, String str, String str2) {
        String a2 = ca.a(th);
        bz a3 = a(context, a2);
        if (a(a3)) {
            String replaceAll = a2.replaceAll("\n", "<br/>");
            String th2 = th.toString();
            if (th2 != null && !"".equals(th2)) {
                StringBuilder sb = new StringBuilder();
                if (str != null) {
                    sb.append("class:").append(str);
                }
                if (str2 != null) {
                    sb.append(" method:").append(str2).append("$<br/>");
                }
                sb.append(replaceAll);
                a(context, a3, i2, th2, sb.toString());
            }
        }
    }

    static void a(bz bzVar, Context context, String str, String str2) {
        if (a(bzVar) && str != null && !"".equals(str)) {
            a(context, bzVar, 0, str, str2);
        }
    }

    static void b(bz bzVar, Context context, String str, String str2) {
        if (a(bzVar) && str != null && !"".equals(str)) {
            a(context, bzVar, 1, str, str2);
        }
    }

    static void b(Context context) {
        en enVar = new en(b);
        b = false;
        a(context, enVar, ck.c);
    }

    static void c(Context context) {
        if (c == null || c.get() == null) {
            c = new WeakReference<>(new eo(3600000, ck.a(context, "h.log"), new eq(context, false)));
        }
        a(context, (ep) c.get(), ck.d);
    }

    static void d(Context context) {
        if (d == null || d.get() == null) {
            d = new WeakReference<>(new eo(3600000, ck.a(context, "g.log"), new eq(context, false)));
        }
        a(context, (ep) d.get(), ck.b);
    }

    private static void a(final Context context, final ep epVar, final String str) {
        cm.d().submit(new Runnable() {
            public final void run() {
                try {
                    synchronized (cn.class) {
                        dw a2 = ed.a(cn.a);
                        ed.a(context, a2, str, 1000, 20480, "1");
                        a2.f = epVar;
                        if (a2.g == null) {
                            a2.g = new eh(new eg(context, new el(), new cc(new ce(new cg())), "EImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJwa2ciOiIlcyIsIm1vZGVsIjoiJXMiLCJhcHBuYW1lIjoiJXMiLCJhcHB2ZXJzaW9uIjoiJXMiLCJzeXN2ZXJzaW9uIjoiJXMiLA=", bp.f(context), bu.t(context), bp.c(context), Build.MODEL, bp.b(context), bp.d(context), VERSION.RELEASE));
                        }
                        a2.h = 3600000;
                        dx.a(a2);
                    }
                } catch (Throwable th) {
                    cm.c(th, "lg", "pul");
                }
            }
        });
    }

    private static bz a(Context context, String str) {
        List<bz> c2 = ck.c(context);
        if (str == null || "".equals(str)) {
            return null;
        }
        for (bz bzVar : c2) {
            if (ck.a(bzVar.f(), str)) {
                return bzVar;
            }
        }
        if (str.contains("com.amap.api.col")) {
            try {
                return ca.a();
            } catch (bo e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:121:0x0169, code lost:
        r0 = r2;
        r2 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00b5, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00b6, code lost:
        com.amap.api.col.sl.cm.c(r0, "alg", "aDa");
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:120:0x0168 A[ExcHandler: FileNotFoundException (e java.io.FileNotFoundException), Splitter:B:19:0x0038] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00be A[Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }, ExcHandler: EOFException (e java.io.EOFException), Splitter:B:19:0x0038] */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00d8 A[SYNTHETIC, Splitter:B:68:0x00d8] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x00dd A[SYNTHETIC, Splitter:B:71:0x00dd] */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x00ef A[SYNTHETIC, Splitter:B:79:0x00ef] */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x00f4 A[SYNTHETIC, Splitter:B:82:0x00f4] */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x00f8  */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0100 A[SYNTHETIC, Splitter:B:89:0x0100] */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x0105 A[SYNTHETIC, Splitter:B:92:0x0105] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(java.util.List<com.amap.api.col.sl.bz> r8) {
        /*
            r6 = 1024000(0xfa000, float:1.43493E-39)
            r5 = 0
            r1 = 0
            r0 = 0
            r2 = 0
            java.io.File r4 = new java.io.File     // Catch:{ FileNotFoundException -> 0x00fb, Throwable -> 0x00cc, all -> 0x00ea }
            java.lang.String r3 = "/data/anr/traces.txt"
            r4.<init>(r3)     // Catch:{ FileNotFoundException -> 0x00fb, Throwable -> 0x00cc, all -> 0x00ea }
            boolean r3 = r4.exists()     // Catch:{ FileNotFoundException -> 0x00fb, Throwable -> 0x00cc, all -> 0x00ea }
            if (r3 != 0) goto L_0x0020
            if (r1 == 0) goto L_0x0019
            r2.close()     // Catch:{ Throwable -> 0x0134 }
        L_0x0019:
            if (r1 == 0) goto L_0x001e
            r0.close()     // Catch:{ Throwable -> 0x013e }
        L_0x001e:
            r0 = r1
        L_0x001f:
            return r0
        L_0x0020:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ FileNotFoundException -> 0x00fb, Throwable -> 0x00cc, all -> 0x00ea }
            r3.<init>(r4)     // Catch:{ FileNotFoundException -> 0x00fb, Throwable -> 0x00cc, all -> 0x00ea }
            int r0 = r3.available()     // Catch:{ FileNotFoundException -> 0x0164, Throwable -> 0x015d, all -> 0x0158 }
            if (r0 <= r6) goto L_0x0030
            int r0 = r0 - r6
            long r6 = (long) r0     // Catch:{ FileNotFoundException -> 0x0164, Throwable -> 0x015d, all -> 0x0158 }
            r3.skip(r6)     // Catch:{ FileNotFoundException -> 0x0164, Throwable -> 0x015d, all -> 0x0158 }
        L_0x0030:
            com.amap.api.col.sl.dk r2 = new com.amap.api.col.sl.dk     // Catch:{ FileNotFoundException -> 0x0164, Throwable -> 0x015d, all -> 0x0158 }
            java.nio.charset.Charset r0 = com.amap.api.col.sl.dl.a     // Catch:{ FileNotFoundException -> 0x0164, Throwable -> 0x015d, all -> 0x0158 }
            r2.<init>(r3, r0)     // Catch:{ FileNotFoundException -> 0x0164, Throwable -> 0x015d, all -> 0x0158 }
            r4 = r5
        L_0x0038:
            java.lang.String r0 = r2.a()     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            java.lang.String r0 = r0.trim()     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            java.lang.String r5 = "pid"
            boolean r5 = r0.contains(r5)     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            if (r5 == 0) goto L_0x016c
        L_0x0048:
            java.lang.String r4 = "\"main\""
            boolean r4 = r0.startsWith(r4)     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            if (r4 != 0) goto L_0x0055
            java.lang.String r0 = r2.a()     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            goto L_0x0048
        L_0x0055:
            r4 = 1
            r5 = r4
            r4 = r0
        L_0x0058:
            java.lang.String r0 = ""
            boolean r0 = r4.equals(r0)     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            if (r0 == 0) goto L_0x0075
            if (r5 == 0) goto L_0x0075
        L_0x0062:
            if (r2 == 0) goto L_0x0067
            r2.close()     // Catch:{ Throwable -> 0x0148 }
        L_0x0067:
            if (r3 == 0) goto L_0x006c
            r3.close()     // Catch:{ Throwable -> 0x0152 }
        L_0x006c:
            boolean r0 = g
            if (r0 == 0) goto L_0x00f8
            java.lang.String r0 = b()
            goto L_0x001f
        L_0x0075:
            if (r5 == 0) goto L_0x00c9
            int r0 = f     // Catch:{ Throwable -> 0x00b5, EOFException -> 0x00be, FileNotFoundException -> 0x0168 }
            r6 = 9
            if (r0 <= r6) goto L_0x0080
            r0 = 0
            f = r0     // Catch:{ Throwable -> 0x00b5, EOFException -> 0x00be, FileNotFoundException -> 0x0168 }
        L_0x0080:
            java.lang.String[] r0 = e     // Catch:{ Throwable -> 0x00b5, EOFException -> 0x00be, FileNotFoundException -> 0x0168 }
            int r6 = f     // Catch:{ Throwable -> 0x00b5, EOFException -> 0x00be, FileNotFoundException -> 0x0168 }
            r0[r6] = r4     // Catch:{ Throwable -> 0x00b5, EOFException -> 0x00be, FileNotFoundException -> 0x0168 }
            int r0 = f     // Catch:{ Throwable -> 0x00b5, EOFException -> 0x00be, FileNotFoundException -> 0x0168 }
            int r0 = r0 + 1
            f = r0     // Catch:{ Throwable -> 0x00b5, EOFException -> 0x00be, FileNotFoundException -> 0x0168 }
        L_0x008c:
            int r0 = h     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            r6 = 5
            if (r0 == r6) goto L_0x0062
            boolean r0 = g     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            if (r0 != 0) goto L_0x00c3
            java.util.Iterator r6 = r8.iterator()     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
        L_0x0099:
            boolean r0 = r6.hasNext()     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            if (r0 == 0) goto L_0x00c0
            java.lang.Object r0 = r6.next()     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            com.amap.api.col.sl.bz r0 = (com.amap.api.col.sl.bz) r0     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            java.lang.String[] r7 = r0.f()     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            boolean r7 = com.amap.api.col.sl.ck.b(r7, r4)     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            g = r7     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            if (r7 == 0) goto L_0x0099
            i = r0     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            r4 = r5
            goto L_0x0038
        L_0x00b5:
            r0 = move-exception
            java.lang.String r6 = "alg"
            java.lang.String r7 = "aDa"
            com.amap.api.col.sl.cm.c(r0, r6, r7)     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            goto L_0x008c
        L_0x00be:
            r0 = move-exception
            goto L_0x0062
        L_0x00c0:
            r4 = r5
            goto L_0x0038
        L_0x00c3:
            int r0 = h     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
            int r0 = r0 + 1
            h = r0     // Catch:{ EOFException -> 0x00be, FileNotFoundException -> 0x0168, Throwable -> 0x0161 }
        L_0x00c9:
            r4 = r5
            goto L_0x0038
        L_0x00cc:
            r0 = move-exception
            r2 = r1
            r3 = r1
        L_0x00cf:
            java.lang.String r4 = "alg"
            java.lang.String r5 = "getA"
            com.amap.api.col.sl.cm.c(r0, r4, r5)     // Catch:{ all -> 0x015b }
            if (r2 == 0) goto L_0x00db
            r2.close()     // Catch:{ Throwable -> 0x012b }
        L_0x00db:
            if (r3 == 0) goto L_0x006c
            r3.close()     // Catch:{ Throwable -> 0x00e1 }
            goto L_0x006c
        L_0x00e1:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
        L_0x00e6:
            com.amap.api.col.sl.cm.c(r0, r2, r3)
            goto L_0x006c
        L_0x00ea:
            r0 = move-exception
            r2 = r1
            r3 = r1
        L_0x00ed:
            if (r2 == 0) goto L_0x00f2
            r2.close()     // Catch:{ Throwable -> 0x0119 }
        L_0x00f2:
            if (r3 == 0) goto L_0x00f7
            r3.close()     // Catch:{ Throwable -> 0x0122 }
        L_0x00f7:
            throw r0
        L_0x00f8:
            r0 = r1
            goto L_0x001f
        L_0x00fb:
            r0 = move-exception
            r0 = r1
            r2 = r1
        L_0x00fe:
            if (r0 == 0) goto L_0x0103
            r0.close()     // Catch:{ Throwable -> 0x0110 }
        L_0x0103:
            if (r2 == 0) goto L_0x006c
            r2.close()     // Catch:{ Throwable -> 0x010a }
            goto L_0x006c
        L_0x010a:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            goto L_0x00e6
        L_0x0110:
            r0 = move-exception
            java.lang.String r3 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.col.sl.cm.c(r0, r3, r4)
            goto L_0x0103
        L_0x0119:
            r1 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.col.sl.cm.c(r1, r2, r4)
            goto L_0x00f2
        L_0x0122:
            r1 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            com.amap.api.col.sl.cm.c(r1, r2, r3)
            goto L_0x00f7
        L_0x012b:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.col.sl.cm.c(r0, r2, r4)
            goto L_0x00db
        L_0x0134:
            r2 = move-exception
            java.lang.String r3 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.col.sl.cm.c(r2, r3, r4)
            goto L_0x0019
        L_0x013e:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            com.amap.api.col.sl.cm.c(r0, r2, r3)
            goto L_0x001e
        L_0x0148:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.col.sl.cm.c(r0, r2, r4)
            goto L_0x0067
        L_0x0152:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            goto L_0x00e6
        L_0x0158:
            r0 = move-exception
            r2 = r1
            goto L_0x00ed
        L_0x015b:
            r0 = move-exception
            goto L_0x00ed
        L_0x015d:
            r0 = move-exception
            r2 = r1
            goto L_0x00cf
        L_0x0161:
            r0 = move-exception
            goto L_0x00cf
        L_0x0164:
            r0 = move-exception
            r0 = r1
            r2 = r3
            goto L_0x00fe
        L_0x0168:
            r0 = move-exception
            r0 = r2
            r2 = r3
            goto L_0x00fe
        L_0x016c:
            r5 = r4
            r4 = r0
            goto L_0x0058
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.cn.a(java.util.List):java.lang.String");
    }

    private static String b() {
        StringBuilder sb = new StringBuilder();
        try {
            int i2 = f;
            while (i2 < 10 && i2 <= 9) {
                sb.append(e[i2]);
                i2++;
            }
            for (int i3 = 0; i3 < f; i3++) {
                sb.append(e[i3]);
            }
        } catch (Throwable th) {
            cm.c(th, "alg", "gLI");
        }
        return sb.toString();
    }
}
