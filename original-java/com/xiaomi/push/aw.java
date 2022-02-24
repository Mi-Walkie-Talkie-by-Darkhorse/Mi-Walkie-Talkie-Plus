package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
class aw {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f8755a = false;

    private static void a(Class<?> cls, Context context) {
        if (!f8755a) {
            try {
                f8755a = true;
                cls.getDeclaredMethod("InitEntry", Context.class).invoke(cls, context);
            } catch (Throwable th) {
                b.m1a("mdid:load lib error " + th);
            }
        }
    }

    public static boolean a(Context context) {
        try {
            Class<?> a2 = u.a(context, "com.bun.miitmdid.core.JLibrary");
            if (a2 == null) {
                return false;
            }
            a(a2, context);
            return true;
        } catch (Throwable th) {
            b.m1a("mdid:check error " + th);
            return false;
        }
    }
}
