package com.amap.api.col.sl;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* compiled from: Encrypt */
public final class bv {
    private static final char[] a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', Matrix.MATRIX_TYPE_RANDOM_LT, 'M', 'N', 'O', 'P', 'Q', Matrix.MATRIX_TYPE_RANDOM_REGULAR, 'S', 'T', Matrix.MATRIX_TYPE_RANDOM_UT, 'V', 'W', 'X', 'Y', Matrix.MATRIX_TYPE_ZERO, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', Http.PROTOCOL_HOST_SPLITTER};
    private static final byte[] b = new byte[128];

    static {
        for (int i = 0; i < 128; i++) {
            b[i] = -1;
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            b[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 97; i3 <= 122; i3++) {
            b[i3] = (byte) ((i3 - 97) + 26);
        }
        for (int i4 = 48; i4 <= 57; i4++) {
            b[i4] = (byte) ((i4 - 48) + 52);
        }
        b[43] = 62;
        b[47] = 63;
    }

    public static byte[] a(byte[] bArr) throws CertificateException, InvalidKeySpecException, NoSuchAlgorithmException, NullPointerException, IOException, InvalidKeyException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException {
        KeyGenerator instance = KeyGenerator.getInstance("AES");
        if (instance == null) {
            return null;
        }
        instance.init(256);
        byte[] encoded = instance.generateKey().getEncoded();
        PublicKey c = ca.c();
        if (c == null) {
            return null;
        }
        byte[] a2 = a(encoded, (Key) c);
        byte[] a3 = a(encoded, bArr);
        byte[] bArr2 = new byte[(a2.length + a3.length)];
        System.arraycopy(a2, 0, bArr2, 0, a2.length);
        System.arraycopy(a3, 0, bArr2, a2.length, a3.length);
        return bArr2;
    }

    public static String b(byte[] bArr) {
        try {
            return d(bArr);
        } catch (Throwable th) {
            cj.a(th, "er", "e64");
            return null;
        }
    }

    public static String a(String str) {
        return ca.a(b(str));
    }

    public static String c(byte[] bArr) {
        try {
            return d(bArr);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        try {
            return c(bArr, bArr2, ca.b());
        } catch (Throwable th) {
            cj.a(th, "er", "asEn");
            return null;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) throws Exception {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
        instance.init(2, secretKeySpec, ivParameterSpec);
        return instance.doFinal(bArr2);
    }

    public static byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3) throws IllegalBlockSizeException, InvalidKeyException, BadPaddingException, NoSuchAlgorithmException, NoSuchPaddingException {
        return c(bArr, bArr2, bArr3);
    }

    private static byte[] c(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, BadPaddingException, IllegalBlockSizeException {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
        try {
            instance.init(1, secretKeySpec, ivParameterSpec);
        } catch (InvalidAlgorithmParameterException e) {
            ThrowableExtension.printStackTrace(e);
        }
        return instance.doFinal(bArr2);
    }

    static byte[] a(byte[] bArr, Key key) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
        Cipher instance = Cipher.getInstance(ca.c(ch.a));
        instance.init(1, key);
        return instance.doFinal(bArr);
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x008a A[EDGE_INSN: B:42:0x008a->B:35:0x008a ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x008a A[EDGE_INSN: B:45:0x008a->B:35:0x008a ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0023 A[LOOP:2: B:9:0x0023->B:37:0x0092, LOOP_START, PHI: r1 
  PHI: (r1v1 int) = (r1v0 int), (r1v11 int) binds: [B:8:0x0021, B:37:0x0092] A[DONT_GENERATE, DONT_INLINE]] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] b(java.lang.String r9) {
        /*
            r8 = 61
            r0 = 0
            r7 = -1
            if (r9 != 0) goto L_0x0009
            byte[] r0 = new byte[r0]
        L_0x0008:
            return r0
        L_0x0009:
            byte[] r2 = com.amap.api.col.sl.ca.a(r9)
            int r3 = r2.length
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream
            r4.<init>(r3)
        L_0x0013:
            if (r0 >= r3) goto L_0x008a
        L_0x0015:
            byte[] r5 = b
            int r1 = r0 + 1
            byte r0 = r2[r0]
            byte r5 = r5[r0]
            if (r1 >= r3) goto L_0x0021
            if (r5 == r7) goto L_0x0094
        L_0x0021:
            if (r5 == r7) goto L_0x008a
        L_0x0023:
            byte[] r6 = b
            int r0 = r1 + 1
            byte r1 = r2[r1]
            byte r6 = r6[r1]
            if (r0 >= r3) goto L_0x002f
            if (r6 == r7) goto L_0x0092
        L_0x002f:
            if (r6 == r7) goto L_0x008a
            int r1 = r5 << 2
            r5 = r6 & 48
            int r5 = r5 >>> 4
            r1 = r1 | r5
            r4.write(r1)
        L_0x003b:
            r1 = r0
            if (r1 != r3) goto L_0x0043
            byte[] r0 = r4.toByteArray()
            goto L_0x0008
        L_0x0043:
            int r0 = r1 + 1
            byte r1 = r2[r1]
            if (r1 != r8) goto L_0x004e
            byte[] r0 = r4.toByteArray()
            goto L_0x0008
        L_0x004e:
            byte[] r5 = b
            byte r5 = r5[r1]
            if (r0 >= r3) goto L_0x0056
            if (r5 == r7) goto L_0x003b
        L_0x0056:
            if (r5 == r7) goto L_0x008a
            r1 = r6 & 15
            int r1 = r1 << 4
            r6 = r5 & 60
            int r6 = r6 >>> 2
            r1 = r1 | r6
            r4.write(r1)
        L_0x0064:
            if (r0 != r3) goto L_0x006b
            byte[] r0 = r4.toByteArray()
            goto L_0x0008
        L_0x006b:
            int r1 = r0 + 1
            byte r0 = r2[r0]
            if (r0 != r8) goto L_0x0076
            byte[] r0 = r4.toByteArray()
            goto L_0x0008
        L_0x0076:
            byte[] r6 = b
            byte r0 = r6[r0]
            if (r1 >= r3) goto L_0x007e
            if (r0 == r7) goto L_0x0090
        L_0x007e:
            if (r0 == r7) goto L_0x008a
            r5 = r5 & 3
            int r5 = r5 << 6
            r0 = r0 | r5
            r4.write(r0)
            r0 = r1
            goto L_0x0013
        L_0x008a:
            byte[] r0 = r4.toByteArray()
            goto L_0x0008
        L_0x0090:
            r0 = r1
            goto L_0x0064
        L_0x0092:
            r1 = r0
            goto L_0x0023
        L_0x0094:
            r0 = r1
            goto L_0x0015
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.bv.b(java.lang.String):byte[]");
    }

    private static String d(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int i2 = i + 1;
            byte b2 = bArr[i] & 255;
            if (i2 == length) {
                stringBuffer.append(a[b2 >>> 2]);
                stringBuffer.append(a[(b2 & 3) << 4]);
                stringBuffer.append("==");
                break;
            }
            int i3 = i2 + 1;
            byte b3 = bArr[i2] & 255;
            if (i3 == length) {
                stringBuffer.append(a[b2 >>> 2]);
                stringBuffer.append(a[((b2 & 3) << 4) | ((b3 & 240) >>> 4)]);
                stringBuffer.append(a[(b3 & 15) << 2]);
                stringBuffer.append("=");
                break;
            }
            i = i3 + 1;
            byte b4 = bArr[i3] & 255;
            stringBuffer.append(a[b2 >>> 2]);
            stringBuffer.append(a[((b2 & 3) << 4) | ((b3 & 240) >>> 4)]);
            stringBuffer.append(a[((b3 & 15) << 2) | ((b4 & 192) >>> 6)]);
            stringBuffer.append(a[b4 & 63]);
        }
        return stringBuffer.toString();
    }
}
