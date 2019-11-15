package com.amap.api.mapcore.util;

import android.content.Context;

/* compiled from: SPUtil */
public final class jf {
    public static int a(Context context, String str, String str2) {
        char c = 200;
        try {
            return context.getSharedPreferences(str, 0).getInt(str2, 200);
        } catch (Throwable th) {
            jd.a(th, "SPUtil", "getPrefsInt");
            return c;
        }
    }

    public static boolean b(Context context, String str, String str2) {
        boolean z = true;
        try {
            return context.getSharedPreferences(str, 0).getBoolean(str2, true);
        } catch (Throwable th) {
            jd.a(th, "SPUtil", "getPrefsBoolean");
            return z;
        }
    }
}
