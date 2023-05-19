package com.ifengyu.intercom.p214p;

import android.text.TextUtils;

/* renamed from: com.ifengyu.intercom.p.p */
/* loaded from: classes2.dex */
public final class CommonUtil {
    /* renamed from: a */
    public static <T> T m11089a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: b */
    public static String m11088b(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    /* renamed from: c */
    public static void m11087c(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: d */
    public static void m11086d(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    /* renamed from: e */
    public static void m11085e(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    /* renamed from: f */
    public static void m11084f(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }
}
