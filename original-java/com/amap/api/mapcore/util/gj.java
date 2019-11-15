package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.mipush.sdk.Constants;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: LogProcessor */
public abstract class gj {
    static final List<b> a = Collections.synchronizedList(new ArrayList());
    private fx b;
    private int c;
    private hl d;
    private hk e;

    /* compiled from: LogProcessor */
    class a implements hl {
        private gt b;

        a(gt gtVar) {
            this.b = gtVar;
        }

        public void a(String str) {
            try {
                this.b.b(str, gd.a(gj.this.c()));
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    /* compiled from: LogProcessor */
    public interface b {
        void a(Context context);
    }

    /* access modifiers changed from: protected */
    public abstract String a(List<fx> list);

    /* access modifiers changed from: protected */
    public abstract boolean a(Context context);

    public static List<b> a() {
        return a;
    }

    protected gj(int i) {
        this.c = i;
    }

    private void f(Context context) {
        try {
            this.e = b(context, b());
        } catch (Throwable th) {
            gc.a(th, "LogProcessor", "LogUpDateProcessor");
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(fx fxVar, Context context, Throwable th, String str, String str2, String str3) {
        a(fxVar, context, c(th), str, str2, str3);
    }

    /* access modifiers changed from: 0000 */
    public void a(fx fxVar, Context context, String str, String str2, String str3, String str4) {
        a(fxVar);
        String a2 = id.a();
        String a3 = a(context, fxVar);
        String a4 = fo.a(context);
        if (str != null && !"".equals(str)) {
            int c2 = c();
            StringBuilder sb = new StringBuilder();
            if (str3 != null) {
                sb.append("class:").append(str3);
            }
            if (str4 != null) {
                sb.append(" method:").append(str4).append("$").append("<br/>");
            }
            sb.append(str2);
            String a5 = a(str2);
            String a6 = id.a(a4, a3, a2, c2, str, sb.toString());
            if (a6 != null && !"".equals(a6)) {
                String a7 = a(context, a6);
                String b2 = b();
                synchronized (Looper.getMainLooper()) {
                    gt gtVar = new gt(context);
                    boolean a8 = a(context, a5, b2, a7, gtVar);
                    a(gtVar, fxVar.a(), a5, c2, a8);
                }
            }
        }
    }

    public static String a(Context context, fx fxVar) {
        return id.a(context, fxVar);
    }

    /* access modifiers changed from: 0000 */
    public void a(Context context, Throwable th, String str, String str2) {
        List<fx> g = g(context);
        if (g != null && g.size() != 0) {
            String a2 = a(th);
            if (a2 != null && !"".equals(a2)) {
                for (fx fxVar : g) {
                    if (a(fxVar.g(), a2)) {
                        a(fxVar, context, th, a2.replaceAll("\n", "<br/>"), str, str2);
                        return;
                    }
                }
                if (a2.contains("com.amap.api.col")) {
                    try {
                        a(fy.a(), context, th, a2, str, str2);
                    } catch (fn e2) {
                        ThrowableExtension.printStackTrace(e2);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void b(Context context) {
        List g = g(context);
        if (g != null && g.size() != 0) {
            String a2 = a(g);
            if (a2 != null && !"".equals(a2)) {
                String a3 = id.a();
                String a4 = id.a(context, this.b);
                int c2 = c();
                String a5 = id.a(fo.a(context), a4, a3, c2, "ANR", a2);
                if (a5 != null && !"".equals(a5)) {
                    String a6 = a(a2);
                    String a7 = a(context, a5);
                    String b2 = b();
                    synchronized (Looper.getMainLooper()) {
                        gt gtVar = new gt(context);
                        boolean a8 = a(context, a6, b2, a7, gtVar);
                        a(gtVar, this.b.a(), a6, c2, a8);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(fx fxVar) {
        this.b = fxVar;
    }

    private List<fx> g(Context context) {
        List<fx> list;
        Throwable th;
        List<fx> list2 = null;
        try {
            synchronized (Looper.getMainLooper()) {
                try {
                    list = new gv(context, false).a();
                    try {
                    } catch (Throwable th2) {
                        Throwable th3 = th2;
                        list2 = list;
                        th = th3;
                        try {
                            throw th;
                        } catch (Throwable th4) {
                            Throwable th5 = th4;
                            list = list2;
                            th = th5;
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }
        } catch (Throwable th7) {
            Throwable th8 = th7;
            list = null;
            th = th8;
            ThrowableExtension.printStackTrace(th);
            return list;
        }
    }

    private void a(gt gtVar, String str, String str2, int i, boolean z) {
        gu b2 = gd.b(i);
        b2.a(0);
        b2.b(str);
        b2.a(str2);
        gtVar.a(b2);
    }

    /* access modifiers changed from: protected */
    public String a(String str) {
        return fu.c(str);
    }

    /* access modifiers changed from: protected */
    public hl a(gt gtVar) {
        try {
            if (this.d == null) {
                this.d = new a(gtVar);
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return this.d;
    }

    private String a(Context context, String str) {
        boolean z = false;
        try {
            return fr.e(context, fy.a(str));
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return z;
        }
    }

    /* access modifiers changed from: protected */
    public String a(Throwable th) {
        boolean z = false;
        try {
            return b(th);
        } catch (Throwable th2) {
            ThrowableExtension.printStackTrace(th2);
            return z;
        }
    }

    private String c(Throwable th) {
        return th.toString();
    }

    private boolean a(Context context, String str, String str2, String str3, gt gtVar) {
        OutputStream outputStream = null;
        hk hkVar = null;
        com.amap.api.mapcore.util.hk.b bVar = null;
        try {
            File file = new File(gd.a(context, str2));
            if (file.exists() || file.mkdirs()) {
                hkVar = hk.a(file, 1, 1, 20480);
                hkVar.a(a(gtVar));
                com.amap.api.mapcore.util.hk.b a2 = hkVar.a(str);
                if (a2 != null) {
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Throwable th) {
                            ThrowableExtension.printStackTrace(th);
                        }
                    }
                    if (a2 != null) {
                        try {
                            a2.close();
                        } catch (Throwable th2) {
                            ThrowableExtension.printStackTrace(th2);
                        }
                    }
                    if (hkVar == null || hkVar.d()) {
                        return false;
                    }
                    try {
                        hkVar.close();
                        return false;
                    } catch (Throwable th3) {
                        ThrowableExtension.printStackTrace(th3);
                        return false;
                    }
                } else {
                    byte[] a3 = fy.a(str3);
                    com.amap.api.mapcore.util.hk.a b2 = hkVar.b(str);
                    outputStream = b2.a(0);
                    outputStream.write(a3);
                    b2.a();
                    hkVar.e();
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Throwable th4) {
                            ThrowableExtension.printStackTrace(th4);
                        }
                    }
                    if (a2 != null) {
                        try {
                            a2.close();
                        } catch (Throwable th5) {
                            ThrowableExtension.printStackTrace(th5);
                        }
                    }
                    if (hkVar == null || hkVar.d()) {
                        return true;
                    }
                    try {
                        hkVar.close();
                        return true;
                    } catch (Throwable th6) {
                        ThrowableExtension.printStackTrace(th6);
                        return true;
                    }
                }
            } else {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th7) {
                        ThrowableExtension.printStackTrace(th7);
                    }
                }
                if (bVar != null) {
                    try {
                        bVar.close();
                    } catch (Throwable th8) {
                        ThrowableExtension.printStackTrace(th8);
                    }
                }
                if (hkVar == null || hkVar.d()) {
                    return false;
                }
                try {
                    hkVar.close();
                    return false;
                } catch (Throwable th9) {
                    ThrowableExtension.printStackTrace(th9);
                    return false;
                }
            }
            if (hkVar != null && !hkVar.d()) {
                hkVar.close();
            }
            return false;
            if (bVar != null) {
                bVar.close();
            }
            if (hkVar != null && !hkVar.d()) {
                hkVar.close();
            }
            return false;
            return false;
            hkVar.close();
            return false;
            if (bVar != null) {
                bVar.close();
            }
            hkVar.close();
            return false;
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th10) {
            ThrowableExtension.printStackTrace(th10);
        }
    }

    public static boolean a(String[] strArr, String str) {
        if (strArr == null || str == null) {
            return false;
        }
        try {
            for (String trim : str.split("\n")) {
                if (b(strArr, trim.trim())) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public static boolean b(String[] strArr, String str) {
        if (strArr == null || str == null) {
            return false;
        }
        try {
            for (String str2 : strArr) {
                str = str.trim();
                if (str.startsWith("at ") && str.contains(str2 + ".") && str.endsWith(")") && !str.contains("uncaughtException")) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:28:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:?, code lost:
        return;
     */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(android.content.Context r6) {
        /*
            r5 = this;
            boolean r0 = r5.a(r6)     // Catch:{ Throwable -> 0x0035 }
            if (r0 != 0) goto L_0x0007
        L_0x0006:
            return
        L_0x0007:
            android.os.Looper r1 = android.os.Looper.getMainLooper()     // Catch:{ Throwable -> 0x0035 }
            monitor-enter(r1)     // Catch:{ Throwable -> 0x0035 }
            r5.f(r6)     // Catch:{ all -> 0x0032 }
            com.amap.api.mapcore.util.gt r0 = new com.amap.api.mapcore.util.gt     // Catch:{ all -> 0x0032 }
            r0.<init>(r6)     // Catch:{ all -> 0x0032 }
            int r2 = r5.c()     // Catch:{ all -> 0x0032 }
            r5.a(r0, r2)     // Catch:{ all -> 0x0032 }
            r2 = 0
            int r3 = r5.c()     // Catch:{ all -> 0x0032 }
            java.lang.Class r3 = com.amap.api.mapcore.util.gd.a(r3)     // Catch:{ all -> 0x0032 }
            java.util.List r2 = r0.a(r2, r3)     // Catch:{ all -> 0x0032 }
            if (r2 == 0) goto L_0x0030
            int r3 = r2.size()     // Catch:{ all -> 0x0032 }
            if (r3 != 0) goto L_0x003e
        L_0x0030:
            monitor-exit(r1)     // Catch:{ all -> 0x0032 }
            goto L_0x0006
        L_0x0032:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0032 }
            throw r0     // Catch:{ Throwable -> 0x0035 }
        L_0x0035:
            r0 = move-exception
            java.lang.String r1 = "lg"
            java.lang.String r2 = "pul"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)
            goto L_0x0006
        L_0x003e:
            java.lang.String r3 = r5.a(r2, r6)     // Catch:{ all -> 0x0032 }
            if (r3 != 0) goto L_0x0046
            monitor-exit(r1)     // Catch:{ all -> 0x0032 }
            goto L_0x0006
        L_0x0046:
            int r3 = b(r3)     // Catch:{ all -> 0x0032 }
            r4 = 1
            if (r3 != r4) goto L_0x0054
            int r3 = r5.c()     // Catch:{ all -> 0x0032 }
            r5.a(r2, r0, r3)     // Catch:{ all -> 0x0032 }
        L_0x0054:
            monitor-exit(r1)     // Catch:{ all -> 0x0032 }
            goto L_0x0006
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.gj.c(android.content.Context):void");
    }

    private boolean c(String str) {
        boolean z = false;
        if (this.e == null) {
            return z;
        }
        try {
            return this.e.c(str);
        } catch (Throwable th) {
            gc.a(th, "lg", "dl-" + str);
            return z;
        }
    }

    /* access modifiers changed from: protected */
    public String b() {
        return gd.c(this.c);
    }

    /* access modifiers changed from: protected */
    public int c() {
        return this.c;
    }

    private void a(gt gtVar, int i) {
        try {
            a(gtVar.a(2, gd.a(i)), gtVar, i);
        } catch (Throwable th) {
            gc.a(th, "lg", "pdf");
        }
    }

    public static int b(String str) {
        int i = 0;
        try {
            byte[] b2 = hp.a().b(new ge(fy.c(fy.a(str))));
            if (b2 == null) {
                return 0;
            }
            try {
                JSONObject jSONObject = new JSONObject(fy.a(b2));
                String str2 = "code";
                if (jSONObject.has(str2)) {
                    return jSONObject.getInt(str2);
                }
                return 0;
            } catch (JSONException e2) {
                gc.a((Throwable) e2, "lg", "pru");
                return 1;
            }
        } catch (fn e3) {
            if (e3.e() != 27) {
                i = 1;
            }
            gc.a((Throwable) e3, "lg", "pru");
            return i;
        }
    }

    private void a(List<? extends gu> list, gt gtVar, int i) {
        if (list != null && list.size() > 0) {
            for (gu guVar : list) {
                if (c(guVar.b())) {
                    gtVar.a(guVar.b(), guVar.getClass());
                } else {
                    guVar.a(2);
                    gtVar.b(guVar);
                }
            }
        }
    }

    public static String d(Context context) {
        String str = "";
        String str2 = "EImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJwa2ciOiIlcyIsIm1vZGVsIjoiJXMiLCJhcHBuYW1lIjoiJXMiLCJhcHB2ZXJzaW9uIjoiJXMiLCJzeXN2ZXJzaW9uIjoiJXMiLA==";
        try {
            return String.format(fy.c(new String(ga.a(9))), new Object[]{fo.f(context), fs.t(context), fo.c(context), Build.MODEL, fo.b(context), fo.d(context), VERSION.RELEASE});
        } catch (Throwable th) {
            gc.a(th, "lg", "gpi");
            return str;
        }
    }

    public static String e(Context context) {
        try {
            String d2 = d(context);
            if ("".equals(d2)) {
                return null;
            }
            return fr.b(context, fy.a(d2));
        } catch (Throwable th) {
            gc.a(th, "lg", "gpi");
            return null;
        }
    }

    private String a(List<? extends gu> list, Context context) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        sb.append("{\"pinfo\":\"").append(e(context)).append("\",\"els\":[");
        boolean z2 = true;
        Iterator it = list.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            gu guVar = (gu) it.next();
            String d2 = d(guVar.b());
            if (d2 != null && !"".equals(d2)) {
                String str = d2 + "||" + guVar.c();
                if (z) {
                    z = false;
                } else {
                    sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                }
                sb.append("{\"log\":\"").append(str).append("\"}");
            }
            z2 = z;
        }
        if (z) {
            return null;
        }
        sb.append("]}");
        return sb.toString();
    }

    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r3v1, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r3v3 */
    /* JADX WARNING: type inference failed for: r3v4, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v6, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r3v15 */
    /* JADX WARNING: type inference failed for: r2v18 */
    /* JADX WARNING: type inference failed for: r3v16 */
    /* JADX WARNING: type inference failed for: r3v17 */
    /* JADX WARNING: type inference failed for: r3v18 */
    /* JADX WARNING: type inference failed for: r2v19 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00b4 A[SYNTHETIC, Splitter:B:68:0x00b4] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x00b9 A[SYNTHETIC, Splitter:B:71:0x00b9] */
    /* JADX WARNING: Unknown variable types count: 4 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String d(java.lang.String r7) {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            r2 = 0
            com.amap.api.mapcore.util.hk r3 = r6.e     // Catch:{ Throwable -> 0x00d5, all -> 0x00ae }
            if (r3 != 0) goto L_0x0024
            if (r0 == 0) goto L_0x000c
            r2.close()     // Catch:{ IOException -> 0x0012 }
        L_0x000c:
            if (r0 == 0) goto L_0x0011
            r1.close()     // Catch:{ IOException -> 0x001b }
        L_0x0011:
            return r0
        L_0x0012:
            r2 = move-exception
            java.lang.String r3 = "lg"
            java.lang.String r4 = "rlg1"
            com.amap.api.mapcore.util.gc.a(r2, r3, r4)
            goto L_0x000c
        L_0x001b:
            r1 = move-exception
            java.lang.String r2 = "lg"
            java.lang.String r3 = "rlg2"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x0011
        L_0x0024:
            com.amap.api.mapcore.util.hk r3 = r6.e     // Catch:{ Throwable -> 0x00d5, all -> 0x00ae }
            com.amap.api.mapcore.util.hk$b r3 = r3.a(r7)     // Catch:{ Throwable -> 0x00d5, all -> 0x00ae }
            if (r3 != 0) goto L_0x0049
            if (r0 == 0) goto L_0x0031
            r2.close()     // Catch:{ IOException -> 0x0040 }
        L_0x0031:
            if (r0 == 0) goto L_0x0011
            r1.close()     // Catch:{ IOException -> 0x0037 }
            goto L_0x0011
        L_0x0037:
            r1 = move-exception
            java.lang.String r2 = "lg"
            java.lang.String r3 = "rlg2"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x0011
        L_0x0040:
            r2 = move-exception
            java.lang.String r3 = "lg"
            java.lang.String r4 = "rlg1"
            com.amap.api.mapcore.util.gc.a(r2, r3, r4)
            goto L_0x0031
        L_0x0049:
            r1 = 0
            java.io.InputStream r3 = r3.a(r1)     // Catch:{ Throwable -> 0x00d5, all -> 0x00ae }
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ Throwable -> 0x00d9, all -> 0x00cf }
            r2.<init>()     // Catch:{ Throwable -> 0x00d9, all -> 0x00cf }
            r1 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r1]     // Catch:{ Throwable -> 0x0063 }
        L_0x0057:
            int r4 = r3.read(r1)     // Catch:{ Throwable -> 0x0063 }
            r5 = -1
            if (r4 == r5) goto L_0x007f
            r5 = 0
            r2.write(r1, r5, r4)     // Catch:{ Throwable -> 0x0063 }
            goto L_0x0057
        L_0x0063:
            r1 = move-exception
        L_0x0064:
            java.lang.String r4 = "lg"
            java.lang.String r5 = "rlg"
            com.amap.api.mapcore.util.gc.a(r1, r4, r5)     // Catch:{ all -> 0x00d3 }
            if (r2 == 0) goto L_0x0070
            r2.close()     // Catch:{ IOException -> 0x00a5 }
        L_0x0070:
            if (r3 == 0) goto L_0x0011
            r3.close()     // Catch:{ IOException -> 0x0076 }
            goto L_0x0011
        L_0x0076:
            r1 = move-exception
            java.lang.String r2 = "lg"
            java.lang.String r3 = "rlg2"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x0011
        L_0x007f:
            byte[] r1 = r2.toByteArray()     // Catch:{ Throwable -> 0x0063 }
            java.lang.String r0 = com.amap.api.mapcore.util.fy.a(r1)     // Catch:{ Throwable -> 0x0063 }
            if (r2 == 0) goto L_0x008c
            r2.close()     // Catch:{ IOException -> 0x009c }
        L_0x008c:
            if (r3 == 0) goto L_0x0011
            r3.close()     // Catch:{ IOException -> 0x0092 }
            goto L_0x0011
        L_0x0092:
            r1 = move-exception
            java.lang.String r2 = "lg"
            java.lang.String r3 = "rlg2"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x0011
        L_0x009c:
            r1 = move-exception
            java.lang.String r2 = "lg"
            java.lang.String r4 = "rlg1"
            com.amap.api.mapcore.util.gc.a(r1, r2, r4)
            goto L_0x008c
        L_0x00a5:
            r1 = move-exception
            java.lang.String r2 = "lg"
            java.lang.String r4 = "rlg1"
            com.amap.api.mapcore.util.gc.a(r1, r2, r4)
            goto L_0x0070
        L_0x00ae:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
        L_0x00b2:
            if (r2 == 0) goto L_0x00b7
            r2.close()     // Catch:{ IOException -> 0x00bd }
        L_0x00b7:
            if (r3 == 0) goto L_0x00bc
            r3.close()     // Catch:{ IOException -> 0x00c6 }
        L_0x00bc:
            throw r0
        L_0x00bd:
            r1 = move-exception
            java.lang.String r2 = "lg"
            java.lang.String r4 = "rlg1"
            com.amap.api.mapcore.util.gc.a(r1, r2, r4)
            goto L_0x00b7
        L_0x00c6:
            r1 = move-exception
            java.lang.String r2 = "lg"
            java.lang.String r3 = "rlg2"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x00bc
        L_0x00cf:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x00b2
        L_0x00d3:
            r0 = move-exception
            goto L_0x00b2
        L_0x00d5:
            r1 = move-exception
            r2 = r0
            r3 = r0
            goto L_0x0064
        L_0x00d9:
            r1 = move-exception
            r2 = r0
            goto L_0x0064
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.gj.d(java.lang.String):java.lang.String");
    }

    /* access modifiers changed from: 0000 */
    public void d() {
        try {
            if (this.e != null && !this.e.d()) {
                this.e.close();
            }
        } catch (IOException e2) {
            gc.a((Throwable) e2, "lg", "cdru");
        } catch (Throwable th) {
            gc.a(th, "lg", "cdru");
        }
    }

    private hk b(Context context, String str) {
        try {
            File file = new File(gd.a(context, str));
            if (file.exists() || file.mkdirs()) {
                return hk.a(file, 1, 1, 20480);
            }
            return null;
        } catch (IOException e2) {
            gc.a((Throwable) e2, "lg", "id");
            return null;
        } catch (Throwable th) {
            gc.a(th, "lg", "id");
            return null;
        }
    }

    public static String b(Throwable th) {
        return fy.a(th);
    }
}
