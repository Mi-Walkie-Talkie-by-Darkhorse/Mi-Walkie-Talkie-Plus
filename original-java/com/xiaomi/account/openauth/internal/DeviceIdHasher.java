package com.xiaomi.account.openauth.internal;

import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
class DeviceIdHasher {
    DeviceIdHasher() {
    }

    public static String hashDeviceInfo(String str) {
        return hashDeviceInfo(str, 8);
    }

    public static String hashDeviceInfo(String str, int i) {
        if (str == null) {
            return null;
        }
        try {
            return Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(str.getBytes()), i).substring(0, 16);
        } catch (NoSuchAlgorithmException unused) {
            throw new IllegalStateException("failed to init SHA1 digest");
        }
    }
}
