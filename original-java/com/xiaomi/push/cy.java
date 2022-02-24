package com.xiaomi.push;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.List;
import org.bouncycastle.crypto.tls.CipherSuite;

/* loaded from: classes2.dex */
public abstract class cy {

    /* loaded from: classes2.dex */
    public static class a extends cx {
        public a() {
            super(1);
        }

        @Override // com.xiaomi.push.cx
        public String a(Context context, String str, List<bh> list) {
            URL url;
            if (list == null) {
                url = new URL(str);
            } else {
                Uri.Builder buildUpon = Uri.parse(str).buildUpon();
                for (bh bhVar : list) {
                    buildUpon.appendQueryParameter(bhVar.a(), bhVar.b());
                }
                url = new URL(buildUpon.toString());
            }
            return bi.a(context, url);
        }
    }

    static int a(int i, int i2) {
        return (((i2 + 243) / 1448) * CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA) + 1080 + i + i2;
    }

    static int a(int i, int i2, int i3) {
        return (((i2 + 200) / 1448) * CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA) + GLMapStaticValue.AM_PARAMETERNAME_RASTER_ENABLE + i2 + i + i3;
    }

    private static int a(cx cxVar, String str, List<bh> list, String str2) {
        if (cxVar.a() == 1) {
            return a(str.length(), a(str2));
        }
        if (cxVar.a() != 2) {
            return -1;
        }
        return a(str.length(), a(list), a(str2));
    }

    static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return str.getBytes("UTF-8").length;
        } catch (UnsupportedEncodingException unused) {
            return 0;
        }
    }

    static int a(List<bh> list) {
        int i = 0;
        for (bh bhVar : list) {
            if (!TextUtils.isEmpty(bhVar.a())) {
                i += bhVar.a().length();
            }
            if (!TextUtils.isEmpty(bhVar.b())) {
                i += bhVar.b().length();
            }
        }
        return i * 2;
    }

    public static String a(Context context, String str, List<bh> list) {
        return a(context, str, list, new a(), true);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00aa A[Catch: MalformedURLException -> 0x00c3, TRY_ENTER, TryCatch #4 {MalformedURLException -> 0x00c3, blocks: (B:4:0x000f, B:6:0x0016, B:8:0x0020, B:11:0x0027, B:13:0x002d, B:14:0x0030, B:15:0x0035, B:17:0x003b, B:19:0x0044, B:21:0x004c, B:46:0x00aa, B:47:0x00bc), top: B:61:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(android.content.Context r20, java.lang.String r21, java.util.List<com.xiaomi.push.bh> r22, com.xiaomi.push.cx r23, boolean r24) {
        /*
            r1 = r20
            r0 = r21
            r2 = r22
            r3 = r23
            boolean r4 = com.xiaomi.push.bi.b(r20)
            r5 = 0
            if (r4 == 0) goto L_0x00c7
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: MalformedURLException -> 0x00c3
            r4.<init>()     // Catch: MalformedURLException -> 0x00c3
            if (r24 == 0) goto L_0x0026
            com.xiaomi.push.cu r6 = com.xiaomi.push.cu.a()     // Catch: MalformedURLException -> 0x00c3
            com.xiaomi.push.cq r6 = r6.m150a(r0)     // Catch: MalformedURLException -> 0x00c3
            if (r6 == 0) goto L_0x0024
            java.util.ArrayList r4 = r6.a(r0)     // Catch: MalformedURLException -> 0x00c3
        L_0x0024:
            r13 = r6
            goto L_0x0027
        L_0x0026:
            r13 = r5
        L_0x0027:
            boolean r6 = r4.contains(r0)     // Catch: MalformedURLException -> 0x00c3
            if (r6 != 0) goto L_0x0030
            r4.add(r0)     // Catch: MalformedURLException -> 0x00c3
        L_0x0030:
            java.util.Iterator r4 = r4.iterator()     // Catch: MalformedURLException -> 0x00c3
            r6 = r5
        L_0x0035:
            boolean r0 = r4.hasNext()     // Catch: MalformedURLException -> 0x00c3
            if (r0 == 0) goto L_0x00c2
            java.lang.Object r0 = r4.next()     // Catch: MalformedURLException -> 0x00c3
            r14 = r0
            java.lang.String r14 = (java.lang.String) r14     // Catch: MalformedURLException -> 0x00c3
            if (r2 == 0) goto L_0x004b
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: MalformedURLException -> 0x00c3
            r0.<init>(r2)     // Catch: MalformedURLException -> 0x00c3
            r15 = r0
            goto L_0x004c
        L_0x004b:
            r15 = r5
        L_0x004c:
            long r16 = java.lang.System.currentTimeMillis()     // Catch: MalformedURLException -> 0x00c3
            boolean r0 = r3.m159a(r1, r14, r15)     // Catch: IOException -> 0x00a4
            if (r0 != 0) goto L_0x0058
            goto L_0x00c2
        L_0x0058:
            java.lang.String r12 = r3.a(r1, r14, r15)     // Catch: IOException -> 0x00a4
            boolean r0 = android.text.TextUtils.isEmpty(r12)     // Catch: IOException -> 0x009a
            if (r0 != 0) goto L_0x007c
            if (r13 == 0) goto L_0x007a
            long r6 = java.lang.System.currentTimeMillis()     // Catch: IOException -> 0x0075
            long r8 = r6 - r16
            int r0 = a(r3, r14, r15, r12)     // Catch: IOException -> 0x0075
            long r10 = (long) r0     // Catch: IOException -> 0x0075
            r6 = r13
            r7 = r14
            r6.a(r7, r8, r10)     // Catch: IOException -> 0x0075
            goto L_0x007a
        L_0x0075:
            r0 = move-exception
            r18 = r0
            r0 = r12
            goto L_0x00a8
        L_0x007a:
            r6 = r12
            goto L_0x00c2
        L_0x007c:
            if (r13 == 0) goto L_0x0095
            long r6 = java.lang.System.currentTimeMillis()     // Catch: IOException -> 0x009a
            long r8 = r6 - r16
            int r0 = a(r3, r14, r15, r12)     // Catch: IOException -> 0x009a
            long r10 = (long) r0
            r0 = 0
            r6 = r13
            r7 = r14
            r18 = r12
            r12 = r0
            r6.a(r7, r8, r10, r12)     // Catch: IOException -> 0x0093
            goto L_0x0097
        L_0x0093:
            r0 = move-exception
            goto L_0x009d
        L_0x0095:
            r18 = r12
        L_0x0097:
            r6 = r18
            goto L_0x0035
        L_0x009a:
            r0 = move-exception
            r18 = r12
        L_0x009d:
            r19 = r18
            r18 = r0
            r0 = r19
            goto L_0x00a8
        L_0x00a4:
            r0 = move-exception
            r18 = r0
            r0 = r6
        L_0x00a8:
            if (r13 == 0) goto L_0x00bc
            long r6 = java.lang.System.currentTimeMillis()     // Catch: MalformedURLException -> 0x00c3
            long r8 = r6 - r16
            int r6 = a(r3, r14, r15, r0)     // Catch: MalformedURLException -> 0x00c3
            long r10 = (long) r6     // Catch: MalformedURLException -> 0x00c3
            r6 = r13
            r7 = r14
            r12 = r18
            r6.a(r7, r8, r10, r12)     // Catch: MalformedURLException -> 0x00c3
        L_0x00bc:
            r18.printStackTrace()     // Catch: MalformedURLException -> 0x00c3
            r6 = r0
            goto L_0x0035
        L_0x00c2:
            return r6
        L_0x00c3:
            r0 = move-exception
            r0.printStackTrace()
        L_0x00c7:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.cy.a(android.content.Context, java.lang.String, java.util.List, com.xiaomi.push.cx, boolean):java.lang.String");
    }
}
