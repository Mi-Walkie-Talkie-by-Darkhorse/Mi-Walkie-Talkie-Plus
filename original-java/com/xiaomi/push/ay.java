package com.xiaomi.push;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ay {

    /* renamed from: a  reason: collision with root package name */
    static int f8759a;

    public static at a(Context context) {
        if (l.m527a()) {
            f8759a = 1;
            return new ax(context);
        } else if (ar.a(context)) {
            f8759a = 2;
            return new ar(context);
        } else if (ba.a(context)) {
            f8759a = 4;
            return new ba(context);
        } else if (be.a(context)) {
            f8759a = 5;
            return new be(context);
        } else if (aw.a(context)) {
            f8759a = 3;
            return new au(context);
        } else {
            f8759a = 0;
            return new bd();
        }
    }
}
