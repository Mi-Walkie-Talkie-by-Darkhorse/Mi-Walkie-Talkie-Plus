package com.ifengyu.library.a;

import a.b.g;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import com.ifengyu.library.base.BaseApp;

/* compiled from: SPUtils.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: b  reason: collision with root package name */
    private static g<String, j> f7173b = new g<>();

    /* renamed from: a  reason: collision with root package name */
    private SharedPreferences f7174a;

    private j(String str) {
        this.f7174a = BaseApp.b().getSharedPreferences(str, 0);
    }

    public static j a(String str) {
        if (b(str)) {
            str = "spUtils";
        }
        j jVar = f7173b.get(str);
        if (jVar != null) {
            return jVar;
        }
        j jVar2 = new j(str);
        f7173b.put(str, jVar2);
        return jVar2;
    }

    public void b(@NonNull String str, @NonNull String str2) {
        this.f7174a.edit().putString(str, str2).apply();
    }

    private static boolean b(String str) {
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

    public String a(@NonNull String str, @NonNull String str2) {
        return this.f7174a.getString(str, str2);
    }

    public void a() {
        this.f7174a.edit().clear().apply();
    }
}
