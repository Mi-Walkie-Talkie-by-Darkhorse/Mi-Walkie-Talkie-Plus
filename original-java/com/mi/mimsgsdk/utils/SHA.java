package com.mi.mimsgsdk.utils;

import android.util.Base64;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class SHA {
    public static String miuiSHA1(String str) {
        try {
            return Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(str.getBytes()), 8).substring(0, 16);
        } catch (NoSuchAlgorithmException e) {
            ThrowableExtension.printStackTrace(e);
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
        return "";
    }
}
