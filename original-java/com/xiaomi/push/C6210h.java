package com.xiaomi.push;

import com.google.common.base.Ascii;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.xiaomi.push.h */
/* loaded from: classes2.dex */
public class C6210h {

    /* renamed from: a */
    private static final byte[] f21812a = {100, Ascii.ETB, 84, 114, 72, 0, 4, 97, 73, 97, 2, 52, 84, 102, Ascii.DC2, 32};

    /* renamed from: a */
    private static Cipher m2667a(byte[] bArr, int i) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(f21812a);
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(i, secretKeySpec, ivParameterSpec);
        return cipher;
    }

    /* renamed from: a */
    public static byte[] m2666a(byte[] bArr, byte[] bArr2) {
        return m2667a(bArr, 2).doFinal(bArr2);
    }

    /* renamed from: b */
    public static byte[] m2665b(byte[] bArr, byte[] bArr2) {
        return m2667a(bArr, 1).doFinal(bArr2);
    }
}
