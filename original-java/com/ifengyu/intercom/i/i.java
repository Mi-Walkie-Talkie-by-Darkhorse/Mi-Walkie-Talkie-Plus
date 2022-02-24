package com.ifengyu.intercom.i;

import android.os.Build;

/* compiled from: APIUtils.java */
/* loaded from: classes2.dex */
public final class i {
    public static boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
