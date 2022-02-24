package com.xiaomi.push;

import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
public class t {
    public static String a(String str, String str2) {
        try {
            return (String) u.a(null, "android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Exception e) {
            b.m1a("SystemProperties.get: " + e);
            return str2;
        }
    }
}
