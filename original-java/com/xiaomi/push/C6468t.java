package com.xiaomi.push;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* renamed from: com.xiaomi.push.t */
/* loaded from: classes2.dex */
public class C6468t {
    /* renamed from: a */
    public static String m1242a(String str, String str2) {
        try {
            return (String) C6469u.m1234a(null, "android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Exception e) {
            AbstractC5876b.m4147a("SystemProperties.get: " + e);
            return str2;
        }
    }
}
