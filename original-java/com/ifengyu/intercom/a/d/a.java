package com.ifengyu.intercom.a.d;

/* compiled from: Exceptions */
public class a {
    public static void a(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }
}
