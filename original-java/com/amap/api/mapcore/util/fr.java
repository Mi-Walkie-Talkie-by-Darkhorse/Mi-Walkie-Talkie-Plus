package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.data.Error;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;

/* compiled from: ClientInfo */
public class fr {

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
    }

    public static String a(Context context, String str, String str2) {
        boolean z = false;
        try {
            return fu.b(fo.e(context) + ":" + str.substring(0, str.length() - 3) + ":" + str2);
        } catch (Throwable th) {
            gc.a(th, "CI", "Sco");
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
                if (!fo.a()) {
                    str3 = "0";
                }
                int length = valueOf.length();
                return valueOf.substring(0, length - 2) + str3 + valueOf.substring(length - 1);
            } catch (Throwable th2) {
                Throwable th3 = th2;
                str = valueOf;
                th = th3;
                gc.a(th, "CI", "TS");
                return str;
            }
        } catch (Throwable th4) {
            Throwable th5 = th4;
            str = str2;
            th = th5;
            gc.a(th, "CI", "TS");
            return str;
        }
    }

    public static String a(Context context) {
        boolean z = false;
        try {
            a aVar = new a();
            aVar.d = fo.c(context);
            aVar.i = fo.d(context);
            return a(context, aVar);
        } catch (Throwable th) {
            gc.a(th, "CI", "IX");
            return z;
        }
    }

    public static byte[] a(Context context, byte[] bArr) throws CertificateException, InvalidKeySpecException, NoSuchAlgorithmException, NullPointerException, IOException, InvalidKeyException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException {
        KeyGenerator instance = KeyGenerator.getInstance("AES");
        if (instance == null) {
            return null;
        }
        instance.init(256);
        byte[] encoded = instance.generateKey().getEncoded();
        PublicKey b = fy.b(context);
        if (b == null) {
            return null;
        }
        byte[] a2 = ft.a(encoded, (Key) b);
        byte[] a3 = ft.a(encoded, bArr);
        byte[] bArr2 = new byte[(a2.length + a3.length)];
        System.arraycopy(a2, 0, bArr2, 0, a2.length);
        System.arraycopy(a3, 0, bArr2, a2.length, a3.length);
        return bArr2;
    }

    public static byte[] a(Context context, boolean z) {
        try {
            return b(context, b(context, z));
        } catch (Throwable th) {
            gc.a(th, "CI", "gz");
            return null;
        }
    }

    public static String b(Context context) {
        try {
            return a(context, b(context, false));
        } catch (Throwable th) {
            gc.a(th, "CI", "gCX");
            return null;
        }
    }

    @Deprecated
    public static String a(Context context, fx fxVar, Map<String, String> map, boolean z) {
        try {
            return a(context, b(context, z));
        } catch (Throwable th) {
            gc.a(th, "ci", "rsc");
            return null;
        }
    }

    public static String b(Context context, byte[] bArr) {
        try {
            return d(context, bArr);
        } catch (Throwable th) {
            gc.a(th, "ci", "aed");
            return "";
        }
    }

    public static byte[] c(Context context, byte[] bArr) throws CertificateException, InvalidKeySpecException, NoSuchAlgorithmException, NullPointerException, IOException, InvalidKeyException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException {
        PublicKey b = fy.b(context);
        if (bArr.length <= 117) {
            return ft.a(bArr, (Key) b);
        }
        byte[] bArr2 = new byte[Error.E_REG_SESSION_GET_FAILED];
        System.arraycopy(bArr, 0, bArr2, 0, Error.E_REG_SESSION_GET_FAILED);
        byte[] a2 = ft.a(bArr2, (Key) b);
        byte[] bArr3 = new byte[((bArr.length + 128) - 117)];
        System.arraycopy(a2, 0, bArr3, 0, 128);
        System.arraycopy(bArr, Error.E_REG_SESSION_GET_FAILED, bArr3, 128, bArr.length - 117);
        return bArr3;
    }

    private static String a(Context context, a aVar) {
        return ft.a(b(context, aVar));
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00ab A[SYNTHETIC, Splitter:B:24:0x00ab] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static byte[] b(android.content.Context r5, com.amap.api.mapcore.util.fr.a r6) {
        /*
            r0 = 0
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ Throwable -> 0x0092, all -> 0x00a6 }
            r2.<init>()     // Catch:{ Throwable -> 0x0092, all -> 0x00a6 }
            java.lang.String r1 = r6.a     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.b     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.c     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.d     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.e     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.f     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.g     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.h     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.i     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.j     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.k     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.l     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.m     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.n     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.o     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.p     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.q     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.r     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.s     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.t     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.u     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.v     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.w     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.x     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            java.lang.String r1 = r6.y     // Catch:{ Throwable -> 0x00b6 }
            a(r2, r1)     // Catch:{ Throwable -> 0x00b6 }
            byte[] r0 = a(r5, r2)     // Catch:{ Throwable -> 0x00b6 }
            if (r2 == 0) goto L_0x008c
            r2.close()     // Catch:{ Throwable -> 0x008d }
        L_0x008c:
            return r0
        L_0x008d:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x008c
        L_0x0092:
            r1 = move-exception
            r2 = r0
        L_0x0094:
            java.lang.String r3 = "ci"
            java.lang.String r4 = "gzx"
            com.amap.api.mapcore.util.gc.a(r1, r3, r4)     // Catch:{ all -> 0x00b4 }
            if (r2 == 0) goto L_0x008c
            r2.close()     // Catch:{ Throwable -> 0x00a1 }
            goto L_0x008c
        L_0x00a1:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x008c
        L_0x00a6:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x00a9:
            if (r2 == 0) goto L_0x00ae
            r2.close()     // Catch:{ Throwable -> 0x00af }
        L_0x00ae:
            throw r0
        L_0x00af:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00ae
        L_0x00b4:
            r0 = move-exception
            goto L_0x00a9
        L_0x00b6:
            r1 = move-exception
            goto L_0x0094
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fr.b(android.content.Context, com.amap.api.mapcore.util.fr$a):byte[]");
    }

    private static byte[] a(Context context, ByteArrayOutputStream byteArrayOutputStream) throws CertificateException, NoSuchAlgorithmException, IOException, BadPaddingException, IllegalBlockSizeException, NoSuchPaddingException, InvalidKeyException, InvalidKeySpecException {
        return c(context, fy.b(byteArrayOutputStream.toByteArray()));
    }

    static String d(Context context, byte[] bArr) throws InvalidKeyException, IOException, InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, CertificateException {
        byte[] b = fy.b(a(context, bArr));
        if (b != null) {
            return ft.a(b);
        }
        return "";
    }

    public static void a(ByteArrayOutputStream byteArrayOutputStream, String str) {
        byte length;
        if (!TextUtils.isEmpty(str)) {
            if (str.getBytes().length > 255) {
                length = -1;
            } else {
                length = (byte) str.getBytes().length;
            }
            fy.a(byteArrayOutputStream, length, fy.a(str));
            return;
        }
        fy.a(byteArrayOutputStream, 0, new byte[0]);
    }

    public static String e(Context context, byte[] bArr) {
        try {
            return d(context, bArr);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return "";
        }
    }

    private static a b(Context context, boolean z) {
        a aVar = new a();
        aVar.a = fs.t(context);
        aVar.b = fs.l(context);
        String h = fs.h(context);
        if (h == null) {
            h = "";
        }
        aVar.c = h;
        aVar.d = fo.c(context);
        aVar.e = Build.MODEL;
        aVar.f = Build.MANUFACTURER;
        aVar.g = Build.DEVICE;
        aVar.h = fo.b(context);
        aVar.i = fo.d(context);
        aVar.j = String.valueOf(VERSION.SDK_INT);
        aVar.k = fs.u(context);
        aVar.l = fs.s(context);
        aVar.m = fs.p(context) + "";
        aVar.n = fs.o(context) + "";
        aVar.o = fs.v(context);
        aVar.p = fs.n(context);
        if (z) {
            aVar.q = "";
        } else {
            aVar.q = fs.k(context);
        }
        if (z) {
            aVar.r = "";
        } else {
            aVar.r = fs.j(context);
        }
        if (z) {
            aVar.s = "";
            aVar.t = "";
        } else {
            String[] m = fs.m(context);
            aVar.s = m[0];
            aVar.t = m[1];
        }
        aVar.w = fs.a();
        String b = fs.b(context);
        if (!TextUtils.isEmpty(b)) {
            aVar.x = b;
        } else {
            aVar.x = "";
        }
        aVar.y = new String(ga.a(11)) + fs.i(context) + "|" + new String(ga.a(12)) + fs.c();
        String a2 = fs.a(context);
        if (TextUtils.isEmpty(a2)) {
            aVar.y += "|adiuExtras=" + a2;
        }
        return aVar;
    }
}
