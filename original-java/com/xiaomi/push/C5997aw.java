package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* renamed from: com.xiaomi.push.aw */
/* loaded from: classes2.dex */
class C5997aw {

    /* renamed from: a */
    private static volatile boolean f21052a = false;

    /* renamed from: a */
    private static void m3734a(Class<?> cls, Context context) {
        if (f21052a) {
            return;
        }
        try {
            f21052a = true;
            cls.getDeclaredMethod("InitEntry", Context.class).invoke(cls, context);
        } catch (Throwable th) {
            AbstractC5876b.m4147a("mdid:load lib error " + th);
        }
    }

    /* renamed from: a */
    public static boolean m3735a(Context context) {
        try {
            Class<?> m1234a = C6469u.m1234a(context, "com.bun.miitmdid.core.JLibrary");
            if (m1234a != null) {
                m3734a(m1234a, context);
                return true;
            }
            return false;
        } catch (Throwable th) {
            AbstractC5876b.m4147a("mdid:check error " + th);
            return false;
        }
    }
}
