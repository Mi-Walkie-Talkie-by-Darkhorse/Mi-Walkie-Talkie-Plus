package com.ifengyu.library.util;

import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import android.support.v4.util.SimpleArrayMap;
import com.ifengyu.library.base.BaseApp;

/* compiled from: SPUtils */
public final class g {
    private static SimpleArrayMap<String, g> a = new SimpleArrayMap<>();
    private SharedPreferences b;

    public static g a(String str) {
        if (c(str)) {
            str = "spUtils";
        }
        g gVar = (g) a.get(str);
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g(str);
        a.put(str, gVar2);
        return gVar2;
    }

    private g(String str) {
        this.b = BaseApp.l().getSharedPreferences(str, 0);
    }

    public void a(@NonNull String str, @NonNull String str2) {
        this.b.edit().putString(str, str2).apply();
    }

    public String b(@NonNull String str) {
        return b(str, "");
    }

    public String b(@NonNull String str, @NonNull String str2) {
        return this.b.getString(str, str2);
    }

    public void a() {
        this.b.edit().clear().apply();
    }

    private static boolean c(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
