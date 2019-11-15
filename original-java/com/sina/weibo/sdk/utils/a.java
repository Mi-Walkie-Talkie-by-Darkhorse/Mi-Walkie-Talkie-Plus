package com.sina.weibo.sdk.utils;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: AesEncrypt */
public class a {
    public static String a(String str) {
        try {
            byte[] c = c(str);
            Cipher instance = Cipher.getInstance("AES/ECB/PKCS5Padding");
            instance.init(2, b("Stark"));
            try {
                return new String(instance.doFinal(c), "utf-8");
            } catch (Exception e) {
                c.c("Decrypt", e.getMessage());
                return null;
            }
        } catch (Exception e2) {
            c.c("Decrypt", e2.getMessage());
            return null;
        }
    }

    protected static Key b(String str) {
        try {
            String substring = d.a(str).substring(2, 18);
            if (substring == null) {
                c.e("Decrypt", "Key为空null");
                return null;
            } else if (substring.length() == 16) {
                return new SecretKeySpec(substring.getBytes("utf-8"), "AES");
            } else {
                c.e("Decrypt", "Key长度不是16位");
                return null;
            }
        } catch (Exception e) {
            c.c("generateKey", e.getMessage());
            return null;
        }
    }

    private static byte[] c(String str) {
        return b.a(str.getBytes());
    }
}
