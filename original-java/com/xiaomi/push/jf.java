package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.jn;
import com.xiaomi.push.jx;
import com.xiaomi.push.service.au;

/* loaded from: classes2.dex */
public class jf {
    public static short a(Context context, ir irVar) {
        return a(context, irVar.f654b);
    }

    public static short a(Context context, String str) {
        int i = 0;
        int a2 = g.a(context, str, false).a() + 0 + (aj.b(context) ? 4 : 0) + (aj.a(context) ? 8 : 0);
        if (au.m597a(context)) {
            i = 16;
        }
        return (short) (a2 + i);
    }

    public static <T extends jg<T, ?>> void a(T t, byte[] bArr) {
        if (bArr != null) {
            new jk(new jx.a(true, true, bArr.length)).a(t, bArr);
            return;
        }
        throw new jl("the message byte is empty.");
    }

    public static <T extends jg<T, ?>> byte[] a(T t) {
        if (t == null) {
            return null;
        }
        try {
            return new jm(new jn.a()).a(t);
        } catch (jl e) {
            b.a("convertThriftObjectToBytes catch TException.", e);
            return null;
        }
    }
}
