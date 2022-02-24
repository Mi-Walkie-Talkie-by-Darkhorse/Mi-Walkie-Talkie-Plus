package com.xiaomi.push;

import android.content.Context;
import android.preference.PreferenceManager;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class m {
    public static void a(Context context) {
    }

    public static void a(Context context, String str, boolean z) {
        a(context);
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean(str, z).commit();
    }

    public static void a(Map<String, String> map, String str, String str2) {
        if (map != null && str != null && str2 != null) {
            map.put(str, str2);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m535a(Context context, String str, boolean z) {
        a(context);
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(str, z);
    }
}
