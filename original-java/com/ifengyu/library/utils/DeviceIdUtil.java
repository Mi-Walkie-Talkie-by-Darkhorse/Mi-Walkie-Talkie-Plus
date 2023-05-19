package com.ifengyu.library.utils;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.google.common.primitives.UnsignedBytes;
import com.xiaomi.mipush.sdk.Constants;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.UUID;

/* renamed from: com.ifengyu.library.utils.g */
/* loaded from: classes2.dex */
public class DeviceIdUtil {
    /* renamed from: a */
    private static String m8681a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & UnsignedBytes.MAX_VALUE);
            if (hexString.length() == 1) {
                sb.append("0");
            }
            sb.append(hexString);
        }
        return sb.toString().toUpperCase(Locale.CHINA);
    }

    /* renamed from: b */
    private static String m8680b(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: c */
    public static String m8679c(Context context) {
        StringBuilder sb = new StringBuilder();
        String m8680b = m8680b(context);
        String m8676f = m8676f();
        String replace = m8678d().replace(Constants.ACCEPT_TIME_SEPARATOR_SERVER, "");
        if (!TextUtils.isEmpty(m8680b)) {
            sb.append(m8680b);
            sb.append("|");
        }
        if (!TextUtils.isEmpty(m8676f)) {
            sb.append(m8676f);
            sb.append("|");
        }
        if (!TextUtils.isEmpty(replace)) {
            sb.append(replace);
        }
        if (sb.length() > 0) {
            try {
                String m8681a = m8681a(m8677e(sb.toString()));
                if (!TextUtils.isEmpty(m8681a)) {
                    return m8681a;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return UUID.randomUUID().toString().replace(Constants.ACCEPT_TIME_SEPARATOR_SERVER, "");
    }

    /* renamed from: d */
    private static String m8678d() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("3883756");
            sb.append(Build.BOARD.length() % 10);
            sb.append(Build.BRAND.length() % 10);
            sb.append(Build.DEVICE.length() % 10);
            sb.append(Build.HARDWARE.length() % 10);
            sb.append(Build.ID.length() % 10);
            sb.append(Build.MODEL.length() % 10);
            sb.append(Build.PRODUCT.length() % 10);
            String str = Build.SERIAL;
            sb.append(str.length() % 10);
            return new UUID(sb.toString().hashCode(), str.hashCode()).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: e */
    private static byte[] m8677e(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            messageDigest.reset();
            messageDigest.update(str.getBytes("UTF-8"));
            return messageDigest.digest();
        } catch (Exception unused) {
            return "".getBytes();
        }
    }

    /* renamed from: f */
    private static String m8676f() {
        try {
            return Build.SERIAL;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
