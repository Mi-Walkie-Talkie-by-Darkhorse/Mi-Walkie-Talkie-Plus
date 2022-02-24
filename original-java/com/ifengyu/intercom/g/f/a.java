package com.ifengyu.intercom.g.f;

/* compiled from: Exceptions.java */
/* loaded from: classes2.dex */
public class a {
    public static void a(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }
}
