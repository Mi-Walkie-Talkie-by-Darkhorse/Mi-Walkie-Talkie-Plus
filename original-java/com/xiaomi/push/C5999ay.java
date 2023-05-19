package com.xiaomi.push;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.ay */
/* loaded from: classes2.dex */
public class C5999ay {

    /* renamed from: a */
    static int f21060a;

    /* renamed from: a */
    public static InterfaceC5993at m3731a(Context context) {
        if (C6306l.m1853a()) {
            f21060a = 1;
            return new C5998ax(context);
        } else if (C5989ar.m3755a(context)) {
            f21060a = 2;
            return new C5989ar(context);
        } else if (C6002ba.m3696a(context)) {
            f21060a = 4;
            return new C6002ba(context);
        } else if (C6009be.m3682a(context)) {
            f21060a = 5;
            return new C6009be(context);
        } else if (C5997aw.m3735a(context)) {
            f21060a = 3;
            return new C5994au(context);
        } else {
            f21060a = 0;
            return new C6008bd();
        }
    }
}
