package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.SharedPreferences.Editor;

/* compiled from: SPUtil */
public class ea {
    public static void a(Context context, String str, String str2, Object obj) {
        String simpleName = obj.getClass().getSimpleName();
        Editor edit = context.getSharedPreferences(str, 0).edit();
        if ("String".equals(simpleName)) {
            edit.putString(str2, (String) obj);
        } else if ("Integer".equals(simpleName)) {
            edit.putInt(str2, ((Integer) obj).intValue());
        } else if ("Boolean".equals(simpleName)) {
            edit.putBoolean(str2, ((Boolean) obj).booleanValue());
        } else if ("Float".equals(simpleName)) {
            edit.putFloat(str2, ((Float) obj).floatValue());
        } else if ("Long".equals(simpleName)) {
            edit.putLong(str2, ((Long) obj).longValue());
        }
        edit.commit();
    }
}
