package com.ifengyu.blelib.utils;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.ifengyu.blelib.utils.b */
/* loaded from: classes2.dex */
public class EncryptUtils {

    /* renamed from: a */
    private static String f12082a = "AES";

    /* renamed from: b */
    private static String f12083b = "AES/CBC/NoPadding";

    /* renamed from: a */
    private static byte[] m14316a(byte[] bArr, int i) {
        byte[] bArr2 = new byte[bArr.length + (i - (bArr.length % i))];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: b */
    public static byte[] m14315b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return m14313d(bArr, bArr2, f12082a, f12083b, bArr3, false);
    }

    /* renamed from: c */
    public static byte[] m14314c(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return m14313d(bArr, bArr2, f12082a, f12083b, bArr3, true);
    }

    /* renamed from: d */
    private static byte[] m14313d(byte[] bArr, byte[] bArr2, String str, String str2, byte[] bArr3, boolean z) {
        if (bArr != null && bArr.length != 0 && bArr2 != null && bArr2.length != 0) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, str);
                Cipher cipher = Cipher.getInstance(str2);
                if (z) {
                    bArr = m14316a(bArr, cipher.getBlockSize());
                }
                int i = 1;
                if (bArr3 != null && bArr3.length != 0) {
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
                    if (!z) {
                        i = 2;
                    }
                    cipher.init(i, secretKeySpec, ivParameterSpec);
                    return cipher.doFinal(bArr);
                }
                i = 2;
                cipher.init(i, secretKeySpec);
                return cipher.doFinal(bArr);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }
}
