package com.ifengyu.intercom.b;

import android.os.Build.VERSION;

/* compiled from: APIUtils */
public final class c {
    public static boolean a() {
        return VERSION.SDK_INT >= 21;
    }

    public static boolean b() {
        return VERSION.SDK_INT >= 23;
    }

    public static boolean c() {
        return VERSION.SDK_INT >= 24;
    }
}
