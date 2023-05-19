package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C6023bo;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.service.t */
/* loaded from: classes2.dex */
public class C6461t {

    /* renamed from: a */
    private static C6461t f23233a;

    /* renamed from: a */
    private Context f23234a;

    /* renamed from: a */
    private List<String> f23235a = new ArrayList();

    /* renamed from: b */
    private final List<String> f23236b = new ArrayList();

    /* renamed from: c */
    private final List<String> f23237c = new ArrayList();

    private C6461t(Context context) {
        String[] split;
        String[] split2;
        String[] split3;
        Context applicationContext = context.getApplicationContext();
        this.f23234a = applicationContext;
        if (applicationContext == null) {
            this.f23234a = context;
        }
        SharedPreferences sharedPreferences = this.f23234a.getSharedPreferences("mipush_app_info", 0);
        for (String str : sharedPreferences.getString("unregistered_pkg_names", "").split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
            if (TextUtils.isEmpty(str)) {
                this.f23235a.add(str);
            }
        }
        for (String str2 : sharedPreferences.getString("disable_push_pkg_names", "").split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
            if (!TextUtils.isEmpty(str2)) {
                this.f23236b.add(str2);
            }
        }
        for (String str3 : sharedPreferences.getString("disable_push_pkg_names_cache", "").split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
            if (!TextUtils.isEmpty(str3)) {
                this.f23237c.add(str3);
            }
        }
    }

    /* renamed from: a */
    public static C6461t m1285a(Context context) {
        if (f23233a == null) {
            f23233a = new C6461t(context);
        }
        return f23233a;
    }

    /* renamed from: a */
    public void m1284a(String str) {
        synchronized (this.f23235a) {
            if (!this.f23235a.contains(str)) {
                this.f23235a.add(str);
                this.f23234a.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", C6023bo.m3616a(this.f23235a, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }

    /* renamed from: a */
    public boolean m1283a(String str) {
        boolean contains;
        synchronized (this.f23235a) {
            contains = this.f23235a.contains(str);
        }
        return contains;
    }

    /* renamed from: b */
    public void m1282b(String str) {
        synchronized (this.f23236b) {
            if (!this.f23236b.contains(str)) {
                this.f23236b.add(str);
                this.f23234a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names", C6023bo.m3616a(this.f23236b, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }

    /* renamed from: b */
    public boolean m1281b(String str) {
        boolean contains;
        synchronized (this.f23236b) {
            contains = this.f23236b.contains(str);
        }
        return contains;
    }

    /* renamed from: c */
    public void m1280c(String str) {
        synchronized (this.f23237c) {
            if (!this.f23237c.contains(str)) {
                this.f23237c.add(str);
                this.f23234a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names_cache", C6023bo.m3616a(this.f23237c, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }

    /* renamed from: c */
    public boolean m1279c(String str) {
        boolean contains;
        synchronized (this.f23237c) {
            contains = this.f23237c.contains(str);
        }
        return contains;
    }

    /* renamed from: d */
    public void m1278d(String str) {
        synchronized (this.f23235a) {
            if (this.f23235a.contains(str)) {
                this.f23235a.remove(str);
                this.f23234a.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", C6023bo.m3616a(this.f23235a, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }

    /* renamed from: e */
    public void m1277e(String str) {
        synchronized (this.f23236b) {
            if (this.f23236b.contains(str)) {
                this.f23236b.remove(str);
                this.f23234a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names", C6023bo.m3616a(this.f23236b, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }

    /* renamed from: f */
    public void m1276f(String str) {
        synchronized (this.f23237c) {
            if (this.f23237c.contains(str)) {
                this.f23237c.remove(str);
                this.f23234a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names_cache", C6023bo.m3616a(this.f23237c, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }
}
