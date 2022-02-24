package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.bo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private static t f9359a;

    /* renamed from: a  reason: collision with other field name */
    private Context f1009a;

    /* renamed from: a  reason: collision with other field name */
    private List<String> f1010a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f9360b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f9361c = new ArrayList();

    private t(Context context) {
        String[] split;
        String[] split2;
        String[] split3;
        Context applicationContext = context.getApplicationContext();
        this.f1009a = applicationContext;
        if (applicationContext == null) {
            this.f1009a = context;
        }
        SharedPreferences sharedPreferences = this.f1009a.getSharedPreferences("mipush_app_info", 0);
        for (String str : sharedPreferences.getString("unregistered_pkg_names", "").split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
            if (TextUtils.isEmpty(str)) {
                this.f1010a.add(str);
            }
        }
        for (String str2 : sharedPreferences.getString("disable_push_pkg_names", "").split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
            if (!TextUtils.isEmpty(str2)) {
                this.f9360b.add(str2);
            }
        }
        for (String str3 : sharedPreferences.getString("disable_push_pkg_names_cache", "").split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
            if (!TextUtils.isEmpty(str3)) {
                this.f9361c.add(str3);
            }
        }
    }

    public static t a(Context context) {
        if (f9359a == null) {
            f9359a = new t(context);
        }
        return f9359a;
    }

    public void a(String str) {
        synchronized (this.f1010a) {
            if (!this.f1010a.contains(str)) {
                this.f1010a.add(str);
                this.f1009a.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", bo.a(this.f1010a, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m651a(String str) {
        boolean contains;
        synchronized (this.f1010a) {
            contains = this.f1010a.contains(str);
        }
        return contains;
    }

    public void b(String str) {
        synchronized (this.f9360b) {
            if (!this.f9360b.contains(str)) {
                this.f9360b.add(str);
                this.f1009a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names", bo.a(this.f9360b, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m652b(String str) {
        boolean contains;
        synchronized (this.f9360b) {
            contains = this.f9360b.contains(str);
        }
        return contains;
    }

    public void c(String str) {
        synchronized (this.f9361c) {
            if (!this.f9361c.contains(str)) {
                this.f9361c.add(str);
                this.f1009a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names_cache", bo.a(this.f9361c, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m653c(String str) {
        boolean contains;
        synchronized (this.f9361c) {
            contains = this.f9361c.contains(str);
        }
        return contains;
    }

    public void d(String str) {
        synchronized (this.f1010a) {
            if (this.f1010a.contains(str)) {
                this.f1010a.remove(str);
                this.f1009a.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", bo.a(this.f1010a, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }

    public void e(String str) {
        synchronized (this.f9360b) {
            if (this.f9360b.contains(str)) {
                this.f9360b.remove(str);
                this.f1009a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names", bo.a(this.f9360b, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }

    public void f(String str) {
        synchronized (this.f9361c) {
            if (this.f9361c.contains(str)) {
                this.f9361c.remove(str);
                this.f1009a.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names_cache", bo.a(this.f9361c, Constants.ACCEPT_TIME_SEPARATOR_SP)).commit();
            }
        }
    }
}
