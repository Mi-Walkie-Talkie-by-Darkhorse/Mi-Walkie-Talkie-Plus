package com.sina.weibo.sdk.utils;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.security.MessageDigest;

/* compiled from: MD5 */
public class d {
    private static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(String str) {
        boolean z = false;
        try {
            return a(str.getBytes());
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return z;
        }
    }

    public static String a(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr);
            byte[] digest = instance.digest();
            char[] cArr = new char[32];
            int i = 0;
            for (int i2 = 0; i2 < 16; i2++) {
                byte b = digest[i2];
                int i3 = i + 1;
                cArr[i] = a[(b >>> 4) & 15];
                i = i3 + 1;
                cArr[i3] = a[b & 15];
            }
            return new String(cArr);
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }
}
