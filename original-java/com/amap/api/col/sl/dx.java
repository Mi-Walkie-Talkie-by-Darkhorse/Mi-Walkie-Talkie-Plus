package com.amap.api.col.sl;

import com.amap.api.col.sl.di.a;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* compiled from: LogEngine */
public final class dx {
    public static void a(String str, byte[] bArr, dw dwVar) throws IOException, CertificateException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, NoSuchPaddingException, InvalidKeyException, InvalidKeySpecException {
        di diVar;
        OutputStream outputStream = null;
        di diVar2 = null;
        OutputStream outputStream2 = null;
        try {
            if (a(dwVar.a, str)) {
                if (0 != 0) {
                    try {
                        outputStream2.close();
                    } catch (Throwable th) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
                if (0 != 0) {
                    try {
                        diVar2.close();
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } else {
                    return;
                }
            } else {
                File file = new File(dwVar.a);
                if (!file.exists()) {
                    file.mkdirs();
                }
                diVar = di.a(file, dwVar.b);
                try {
                    diVar.a(dwVar.d);
                    byte[] b = dwVar.e.b(bArr);
                    a b2 = diVar.b(str);
                    outputStream = b2.a();
                    outputStream.write(b);
                    b2.b();
                    diVar.c();
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Throwable th3) {
                            ThrowableExtension.printStackTrace(th3);
                        }
                    }
                    if (diVar != null) {
                        try {
                            diVar.close();
                            return;
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Throwable th6) {
                            ThrowableExtension.printStackTrace(th6);
                        }
                    }
                    if (diVar != null) {
                        try {
                            diVar.close();
                        } catch (Throwable th7) {
                            ThrowableExtension.printStackTrace(th7);
                        }
                    }
                    throw th;
                }
            }
            ThrowableExtension.printStackTrace(th);
        } catch (Throwable th8) {
            th = th8;
            diVar = null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x0084 A[SYNTHETIC, Splitter:B:41:0x0084] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(com.amap.api.col.sl.dw r7) {
        /*
            r2 = 0
            r6 = 1
            com.amap.api.col.sl.ep r0 = r7.f     // Catch:{ Throwable -> 0x0091, all -> 0x0080 }
            boolean r0 = r0.b()     // Catch:{ Throwable -> 0x0091, all -> 0x0080 }
            if (r0 == 0) goto L_0x005c
            com.amap.api.col.sl.ep r0 = r7.f     // Catch:{ Throwable -> 0x0091, all -> 0x0080 }
            r1 = 1
            r0.a(r1)     // Catch:{ Throwable -> 0x0091, all -> 0x0080 }
            java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x0091, all -> 0x0080 }
            java.lang.String r1 = r7.a     // Catch:{ Throwable -> 0x0091, all -> 0x0080 }
            r0.<init>(r1)     // Catch:{ Throwable -> 0x0091, all -> 0x0080 }
            long r4 = r7.b     // Catch:{ Throwable -> 0x0091, all -> 0x0080 }
            com.amap.api.col.sl.di r1 = com.amap.api.col.sl.di.a(r0, r4)     // Catch:{ Throwable -> 0x0091, all -> 0x0080 }
            com.amap.api.col.sl.ek r0 = r7.g     // Catch:{ Throwable -> 0x0070 }
            byte[] r0 = a(r1, r0)     // Catch:{ Throwable -> 0x0070 }
            if (r0 == 0) goto L_0x0028
            int r3 = r0.length     // Catch:{ Throwable -> 0x0070 }
            if (r3 != 0) goto L_0x002e
        L_0x0028:
            if (r1 == 0) goto L_0x002d
            r1.close()     // Catch:{ Throwable -> 0x008d }
        L_0x002d:
            return
        L_0x002e:
            com.amap.api.col.sl.cl r3 = new com.amap.api.col.sl.cl     // Catch:{ Throwable -> 0x0070 }
            java.lang.String r4 = r7.c     // Catch:{ Throwable -> 0x0070 }
            r3.<init>(r0, r4)     // Catch:{ Throwable -> 0x0070 }
            com.amap.api.col.sl.dn r0 = com.amap.api.col.sl.dn.a()     // Catch:{ Throwable -> 0x0070 }
            byte[] r0 = r0.b(r3)     // Catch:{ Throwable -> 0x0070 }
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch:{ Throwable -> 0x0070 }
            java.lang.String r4 = new java.lang.String     // Catch:{ Throwable -> 0x0070 }
            r4.<init>(r0)     // Catch:{ Throwable -> 0x0070 }
            r3.<init>(r4)     // Catch:{ Throwable -> 0x0070 }
            java.lang.String r0 = "code"
            boolean r0 = r3.has(r0)     // Catch:{ Throwable -> 0x0070 }
            if (r0 == 0) goto L_0x0094
            java.lang.String r0 = "code"
            int r0 = r3.getInt(r0)     // Catch:{ Throwable -> 0x0070 }
            if (r0 != r6) goto L_0x0094
            if (r1 == 0) goto L_0x005c
            r1.d()     // Catch:{ Throwable -> 0x0067 }
        L_0x005c:
            if (r2 == 0) goto L_0x002d
            r2.close()     // Catch:{ Throwable -> 0x0062 }
            goto L_0x002d
        L_0x0062:
            r0 = move-exception
        L_0x0063:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x002d
        L_0x0067:
            r0 = move-exception
            java.lang.String r3 = "ofm"
            java.lang.String r4 = "dlo"
            com.amap.api.col.sl.cm.c(r0, r3, r4)     // Catch:{ Throwable -> 0x0070 }
            goto L_0x005c
        L_0x0070:
            r0 = move-exception
        L_0x0071:
            java.lang.String r2 = "leg"
            java.lang.String r3 = "uts"
            com.amap.api.col.sl.cm.c(r0, r2, r3)     // Catch:{ all -> 0x008f }
            if (r1 == 0) goto L_0x002d
            r1.close()     // Catch:{ Throwable -> 0x007e }
            goto L_0x002d
        L_0x007e:
            r0 = move-exception
            goto L_0x0063
        L_0x0080:
            r0 = move-exception
            r1 = r2
        L_0x0082:
            if (r1 == 0) goto L_0x0087
            r1.close()     // Catch:{ Throwable -> 0x0088 }
        L_0x0087:
            throw r0
        L_0x0088:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0087
        L_0x008d:
            r0 = move-exception
            goto L_0x0063
        L_0x008f:
            r0 = move-exception
            goto L_0x0082
        L_0x0091:
            r0 = move-exception
            r1 = r2
            goto L_0x0071
        L_0x0094:
            r2 = r1
            goto L_0x005c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.dx.a(com.amap.api.col.sl.dw):void");
    }

    private static byte[] a(di diVar, ek ekVar) {
        String[] list;
        new StringBuilder();
        try {
            File b = diVar.b();
            if (b != null && b.exists()) {
                for (String str : b.list()) {
                    if (str.contains(".0")) {
                        ekVar.b(ed.a(diVar, str.split("\\.")[0]));
                    }
                }
                return ekVar.a();
            }
        } catch (Throwable th) {
            cm.c(th, "leg", "gCo");
        }
        return new byte[0];
    }

    private static boolean a(String str, String str2) {
        try {
            return new File(str, str2 + ".0").exists();
        } catch (Throwable th) {
            cm.c(th, "leg", "fet");
            return false;
        }
    }
}
