package com.ifengyu.blelib.utils;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: EncryptUtils.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f5213a = "AES";

    /* renamed from: b  reason: collision with root package name */
    private static String f5214b = "AES/CBC/NoPadding";

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return a(bArr, bArr2, f5213a, f5214b, bArr3, false);
    }

    public static byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return a(bArr, bArr2, f5213a, f5214b, bArr3, true);
    }

    private static byte[] a(byte[] bArr, byte[] bArr2, String str, String str2, byte[] bArr3, boolean z) {
        if (!(bArr == null || bArr.length == 0 || bArr2 == null || bArr2.length == 0)) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, str);
                Cipher instance = Cipher.getInstance(str2);
                if (z) {
                    bArr = a(bArr, instance.getBlockSize());
                }
                int i = 1;
                if (!(bArr3 == null || bArr3.length == 0)) {
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
                    if (!z) {
                        i = 2;
                    }
                    instance.init(i, secretKeySpec, ivParameterSpec);
                    return instance.doFinal(bArr);
                }
                i = 2;
                instance.init(i, secretKeySpec);
                return instance.doFinal(bArr);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    private static byte[] a(byte[] bArr, int i) {
        if (bArr.length % i == 0) {
            return bArr;
        }
        byte[] bArr2 = new byte[bArr.length + (i - (bArr.length % i))];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
