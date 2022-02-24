package com.ifengyu.library.account;

import com.ifengyu.library.a.j;
import com.ifengyu.library.a.k;

/* compiled from: UserCache.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static UserInfo f7182a;

    /* renamed from: b  reason: collision with root package name */
    private static String f7183b;

    public static void a(UserInfo userInfo) {
        if (userInfo != null) {
            j.a("sp_login").b("user_info", k.a(userInfo));
            f7182a = userInfo;
            String str = userInfo.f7179a;
            if (str != null && userInfo.h != null) {
                f7183b = str;
            }
        }
    }

    public static String b() {
        String str = f7183b;
        if (str != null) {
            return str;
        }
        if (c() != null) {
            return c().f7179a;
        }
        return null;
    }

    public static UserInfo c() {
        if (f7182a == null) {
            d();
        }
        return f7182a;
    }

    public static void d() {
        String str;
        String a2 = j.a("sp_login").a("user_info", null);
        if (a2 != null) {
            UserInfo userInfo = (UserInfo) k.a(a2);
            f7182a = userInfo;
            if (userInfo != null && (str = userInfo.f7179a) != null && userInfo.h != null) {
                f7183b = str;
            }
        }
    }

    public static void a() {
        j.a("sp_login").a();
        f7182a = null;
        f7183b = null;
    }
}
