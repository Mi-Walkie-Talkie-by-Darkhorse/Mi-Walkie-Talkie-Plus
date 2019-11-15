package com.amap.api.col.sl;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;

/* compiled from: ClientInfo */
public final class bs {

    /* compiled from: ClientInfo */
    private static class a {
        String a;
        String b;
        String c;
        String d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        String l;
        String m;
        String n;
        String o;
        String p;
        String q;
        String r;
        String s;
        String t;
        String u;
        String v;
        String w;
        String x;
        String y;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }

    public static String a(Context context, String str, String str2) {
        boolean z = false;
        try {
            return bw.b(bp.e(context) + ":" + str.substring(0, str.length() - 3) + ":" + str2);
        } catch (Throwable th) {
            cj.a(th, "CI", "Sco");
            return z;
        }
    }

    public static String a() {
        Throwable th;
        String str;
        String str2 = null;
        try {
            String valueOf = String.valueOf(System.currentTimeMillis());
            String str3 = "1";
            try {
                if (!bp.a()) {
                    str3 = "0";
                }
                int length = valueOf.length();
                return valueOf.substring(0, length - 2) + str3 + valueOf.substring(length - 1);
            } catch (Throwable th2) {
                Throwable th3 = th2;
                str = valueOf;
                th = th3;
                cj.a(th, "CI", "TS");
                return str;
            }
        } catch (Throwable th4) {
            Throwable th5 = th4;
            str = str2;
            th = th5;
            cj.a(th, "CI", "TS");
            return str;
        }
    }

    @Deprecated
    public static byte[] a(Context context, boolean z) {
        try {
            return a(b(context, z));
        } catch (Throwable th) {
            cj.a(th, "CI", "gz");
            return null;
        }
    }

    public static String a(Context context) {
        try {
            return bv.b(a(b(context, false)));
        } catch (Throwable th) {
            cj.a(th, "CI", "gCX");
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x00e2 A[SYNTHETIC, Splitter:B:27:0x00e2] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static byte[] a(com.amap.api.col.sl.bs.a r8) {
        /*
            r1 = 0
            r5 = 117(0x75, float:1.64E-43)
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ Throwable -> 0x00c9, all -> 0x00de }
            r2.<init>()     // Catch:{ Throwable -> 0x00c9, all -> 0x00de }
            java.lang.String r0 = r8.a     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.b     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.c     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.d     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.e     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.f     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.g     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.h     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.i     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.j     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.k     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.l     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.m     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.n     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.o     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.p     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.q     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.r     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.s     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.t     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.u     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.v     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.w     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.x     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            java.lang.String r0 = r8.y     // Catch:{ Throwable -> 0x00ed }
            a(r2, r0)     // Catch:{ Throwable -> 0x00ed }
            byte[] r0 = r2.toByteArray()     // Catch:{ Throwable -> 0x00ed }
            byte[] r3 = com.amap.api.col.sl.ca.b(r0)     // Catch:{ Throwable -> 0x00ed }
            java.security.PublicKey r0 = com.amap.api.col.sl.ca.c()     // Catch:{ Throwable -> 0x00ed }
            int r4 = r3.length     // Catch:{ Throwable -> 0x00ed }
            if (r4 <= r5) goto L_0x00bf
            r4 = 117(0x75, float:1.64E-43)
            byte[] r4 = new byte[r4]     // Catch:{ Throwable -> 0x00ed }
            r5 = 0
            r6 = 0
            r7 = 117(0x75, float:1.64E-43)
            java.lang.System.arraycopy(r3, r5, r4, r6, r7)     // Catch:{ Throwable -> 0x00ed }
            byte[] r4 = com.amap.api.col.sl.bv.a(r4, r0)     // Catch:{ Throwable -> 0x00ed }
            int r0 = r3.length     // Catch:{ Throwable -> 0x00ed }
            int r0 = r0 + 128
            int r0 = r0 + -117
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x00ed }
            r5 = 0
            r6 = 0
            r7 = 128(0x80, float:1.794E-43)
            java.lang.System.arraycopy(r4, r5, r0, r6, r7)     // Catch:{ Throwable -> 0x00ed }
            r4 = 117(0x75, float:1.64E-43)
            r5 = 128(0x80, float:1.794E-43)
            int r6 = r3.length     // Catch:{ Throwable -> 0x00ed }
            int r6 = r6 + -117
            java.lang.System.arraycopy(r3, r4, r0, r5, r6)     // Catch:{ Throwable -> 0x00ed }
        L_0x00bb:
            r2.close()     // Catch:{ Throwable -> 0x00c4 }
        L_0x00be:
            return r0
        L_0x00bf:
            byte[] r0 = com.amap.api.col.sl.bv.a(r3, r0)     // Catch:{ Throwable -> 0x00ed }
            goto L_0x00bb
        L_0x00c4:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00be
        L_0x00c9:
            r0 = move-exception
            r2 = r1
        L_0x00cb:
            java.lang.String r3 = "CI"
            java.lang.String r4 = "gzx"
            com.amap.api.col.sl.cj.a(r0, r3, r4)     // Catch:{ all -> 0x00eb }
            if (r2 == 0) goto L_0x00d7
            r2.close()     // Catch:{ Throwable -> 0x00d9 }
        L_0x00d7:
            r0 = r1
            goto L_0x00be
        L_0x00d9:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x00d7
        L_0x00de:
            r0 = move-exception
            r2 = r1
        L_0x00e0:
            if (r2 == 0) goto L_0x00e5
            r2.close()     // Catch:{ Throwable -> 0x00e6 }
        L_0x00e5:
            throw r0
        L_0x00e6:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00e5
        L_0x00eb:
            r0 = move-exception
            goto L_0x00e0
        L_0x00ed:
            r0 = move-exception
            goto L_0x00cb
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.bs.a(com.amap.api.col.sl.bs$a):byte[]");
    }

    private static void a(ByteArrayOutputStream byteArrayOutputStream, String str) {
        byte length;
        if (!TextUtils.isEmpty(str)) {
            if (str.getBytes().length > 255) {
                length = -1;
            } else {
                length = (byte) str.getBytes().length;
            }
            ca.a(byteArrayOutputStream, length, ca.a(str));
            return;
        }
        ca.a(byteArrayOutputStream, 0, new byte[0]);
    }

    @Deprecated
    private static a b(Context context, boolean z) {
        a aVar = new a(0);
        aVar.a = bu.t(context);
        aVar.b = bu.l(context);
        String h = bu.h(context);
        if (h == null) {
            h = "";
        }
        aVar.c = h;
        aVar.d = bp.c(context);
        aVar.e = Build.MODEL;
        aVar.f = Build.MANUFACTURER;
        aVar.g = Build.DEVICE;
        aVar.h = bp.b(context);
        aVar.i = bp.d(context);
        aVar.j = String.valueOf(VERSION.SDK_INT);
        aVar.k = bu.u(context);
        aVar.l = bu.s(context);
        aVar.m = bu.p(context);
        aVar.n = bu.o(context);
        aVar.o = bu.v(context);
        aVar.p = bu.n(context);
        if (z) {
            aVar.q = "";
        } else {
            aVar.q = bu.k(context);
        }
        if (z) {
            aVar.r = "";
        } else {
            aVar.r = bu.j(context);
        }
        if (z) {
            aVar.s = "";
            aVar.t = "";
        } else {
            String[] m = bu.m(context);
            aVar.s = m[0];
            aVar.t = m[1];
        }
        aVar.w = bu.a();
        String b = bu.b(context);
        if (!TextUtils.isEmpty(b)) {
            aVar.x = b;
        } else {
            aVar.x = "";
        }
        aVar.y = new String(ch.a(11)) + bu.i(context) + "|" + new String(ch.a(12)) + bu.c();
        String a2 = bu.a(context);
        if (TextUtils.isEmpty(a2)) {
            aVar.y += "|adiuExtras=" + a2;
        }
        return aVar;
    }
}
