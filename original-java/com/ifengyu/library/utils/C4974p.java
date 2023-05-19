package com.ifengyu.library.utils;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import com.ifengyu.library.base.BaseApp;
import p000a.p006b.SimpleArrayMap;

/* compiled from: SPUtils.java */
/* renamed from: com.ifengyu.library.utils.p */
/* loaded from: classes2.dex */
public final class C4974p {

    /* renamed from: b */
    private static SimpleArrayMap<String, C4974p> f16389b = new SimpleArrayMap<>();

    /* renamed from: a */
    private SharedPreferences f16390a;

    private C4974p(String str) {
        this.f16390a = BaseApp.m8712b().getSharedPreferences(str, 0);
    }

    /* renamed from: c */
    public static C4974p m8629c(String str) {
        if (m8626f(str)) {
            str = "spUtils";
        }
        C4974p c4974p = f16389b.get(str);
        if (c4974p == null) {
            C4974p c4974p2 = new C4974p(str);
            f16389b.put(str, c4974p2);
            return c4974p2;
        }
        return c4974p;
    }

    /* renamed from: f */
    private static boolean m8626f(String str) {
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

    /* renamed from: a */
    public void m8631a() {
        this.f16390a.edit().clear().apply();
    }

    /* renamed from: b */
    public boolean m8630b(@NonNull String str, boolean z) {
        return this.f16390a.getBoolean(str, z);
    }

    /* renamed from: d */
    public String m8628d(@NonNull String str) {
        return m8627e(str, "");
    }

    /* renamed from: e */
    public String m8627e(@NonNull String str, @NonNull String str2) {
        return this.f16390a.getString(str, str2);
    }

    /* renamed from: g */
    public void m8625g(@NonNull String str, @NonNull String str2) {
        this.f16390a.edit().putString(str, str2).apply();
    }

    /* renamed from: h */
    public void m8624h(@NonNull String str, boolean z) {
        this.f16390a.edit().putBoolean(str, z).apply();
    }
}
