package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6287jn;
import com.xiaomi.push.C6298jx;
import com.xiaomi.push.service.C6368au;

/* renamed from: com.xiaomi.push.jf */
/* loaded from: classes2.dex */
public class C6278jf {
    /* renamed from: a */
    public static short m1935a(Context context, C6260ir c6260ir) {
        return m1934a(context, c6260ir.f22471b);
    }

    /* renamed from: a */
    public static short m1934a(Context context, String str) {
        return (short) (C6175g.m2809a(context, str, false).m2802a() + 0 + (C5977aj.m3785b(context) ? 4 : 0) + (C5977aj.m3786a(context) ? 8 : 0) + (C6368au.m1573a(context) ? 16 : 0));
    }

    /* renamed from: a */
    public static <T extends InterfaceC6279jg<T, ?>> void m1932a(T t, byte[] bArr) {
        if (bArr == null) {
            throw new C6285jl("the message byte is empty.");
        }
        new C6284jk(new C6298jx.C6299a(true, true, bArr.length)).m1910a(t, bArr);
    }

    /* renamed from: a */
    public static <T extends InterfaceC6279jg<T, ?>> byte[] m1933a(T t) {
        if (t == null) {
            return null;
        }
        try {
            return new C6286jm(new C6287jn.C6288a()).m1909a(t);
        } catch (C6285jl e) {
            AbstractC5876b.m4144a("convertThriftObjectToBytes catch TException.", e);
            return null;
        }
    }
}
