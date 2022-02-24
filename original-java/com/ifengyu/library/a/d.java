package com.ifengyu.library.a;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.google.common.primitives.UnsignedBytes;
import com.xiaomi.mipush.sdk.Constants;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.UUID;

/* compiled from: DeviceIdUtil.java */
/* loaded from: classes2.dex */
public class d {
    private static String a(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String b(Context context) {
        StringBuilder sb = new StringBuilder();
        String a2 = a(context);
        String b2 = b();
        String replace = a().replace(Constants.ACCEPT_TIME_SEPARATOR_SERVER, "");
        if (!TextUtils.isEmpty(a2)) {
            sb.append(a2);
            sb.append("|");
        }
        if (!TextUtils.isEmpty(b2)) {
            sb.append(b2);
            sb.append("|");
        }
        if (!TextUtils.isEmpty(replace)) {
            sb.append(replace);
        }
        if (sb.length() > 0) {
            try {
                String a3 = a(a(sb.toString()));
                if (!TextUtils.isEmpty(a3)) {
                    return a3;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return UUID.randomUUID().toString().replace(Constants.ACCEPT_TIME_SEPARATOR_SERVER, "");
    }

    private static String a() {
        try {
            return new UUID(("3883756" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.DEVICE.length() % 10) + (Build.HARDWARE.length() % 10) + (Build.ID.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.SERIAL.length() % 10)).hashCode(), Build.SERIAL.hashCode()).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private static byte[] a(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA1");
            instance.reset();
            instance.update(str.getBytes("UTF-8"));
            return instance.digest();
        } catch (Exception unused) {
            return "".getBytes();
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE);
            if (hexString.length() == 1) {
                sb.append("0");
            }
            sb.append(hexString);
        }
        return sb.toString().toUpperCase(Locale.CHINA);
    }

    private static String b() {
        try {
            return Build.SERIAL;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
