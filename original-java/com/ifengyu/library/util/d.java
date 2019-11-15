package com.ifengyu.library.util;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: MD5Util */
public class d {
    public static String a(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() == 1) {
                    sb.append("0");
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }
}
