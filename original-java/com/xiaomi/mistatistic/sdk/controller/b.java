package com.xiaomi.mistatistic.sdk.controller;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: AesUtils */
public class b {
    private static KeyGenerator a;
    private static Cipher b;

    static {
        try {
            a = KeyGenerator.getInstance("AES");
            a.init(128);
            b = Cipher.getInstance("AES/ECB/PKCS5Padding");
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    private static byte[] b(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(a(str2), "AES");
            Cipher instance = Cipher.getInstance("AES/ECB/PKCS5Padding");
            byte[] bytes = str.getBytes("utf-8");
            instance.init(1, secretKeySpec);
            return instance.doFinal(bytes);
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    private static byte[] a(String str) {
        if (str != null) {
            return str.getBytes();
        }
        return null;
    }

    public static String a(String str, String str2) {
        return a(b(str, str2));
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            while (hexString.length() < 2) {
                hexString = "0" + hexString;
            }
            sb.append(hexString);
        }
        return sb.toString();
    }
}
