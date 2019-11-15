package com.ifengyu.library.util;

import android.os.Build.VERSION;

/* compiled from: VersionUtils */
public class m {
    public static boolean a() {
        return VERSION.SDK_INT >= 19;
    }

    public static boolean b() {
        return VERSION.SDK_INT >= 23;
    }
}
