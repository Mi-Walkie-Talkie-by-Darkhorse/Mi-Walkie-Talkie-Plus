package com.xiaomi.push;

import android.content.Context;
import android.preference.PreferenceManager;
import java.util.Map;

/* renamed from: com.xiaomi.push.m */
/* loaded from: classes2.dex */
public abstract class AbstractC6307m {
    /* renamed from: a */
    public static void m1834a(Context context) {
    }

    /* renamed from: a */
    public static void m1833a(Context context, String str, boolean z) {
        m1834a(context);
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean(str, z).commit();
    }

    /* renamed from: a */
    public static void m1831a(Map<String, String> map, String str, String str2) {
        if (map == null || str == null || str2 == null) {
            return;
        }
        map.put(str, str2);
    }

    /* renamed from: a */
    public static boolean m1832a(Context context, String str, boolean z) {
        m1834a(context);
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(str, z);
    }
}
