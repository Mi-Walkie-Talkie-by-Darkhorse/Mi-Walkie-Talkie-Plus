package com.xiaomi.xmpush.thrift;

import android.content.Context;
import com.xiaomi.channel.commonutils.android.b;
import com.xiaomi.channel.commonutils.misc.f;
import com.xiaomi.push.service.az;
import org.apache.thrift.a;
import org.apache.thrift.e;
import org.apache.thrift.g;
import org.apache.thrift.protocol.a.C0094a;
import org.apache.thrift.protocol.k;

public class ar {
    public static short a(Context context, ac acVar) {
        int i = 0;
        int a = (f.a(context) ? 8 : 0) + 0 + b.d(context, acVar.f).a() + (f.b(context) ? 4 : 0);
        if (az.a(context, acVar)) {
            i = 16;
        }
        return (short) (a + i);
    }

    public static short a(boolean z, boolean z2, boolean z3) {
        int i = 0;
        int i2 = (z2 ? 2 : 0) + 0 + (z ? 4 : 0);
        if (z3) {
            i = 1;
        }
        return (short) (i + i2);
    }

    public static <T extends a<T, ?>> void a(T t, byte[] bArr) {
        if (bArr == null) {
            throw new org.apache.thrift.f("the message byte is empty.");
        }
        new e(new k.a(true, true, bArr.length)).a(t, bArr);
    }

    public static <T extends a<T, ?>> byte[] a(T t) {
        byte[] bArr = null;
        if (t == null) {
            return bArr;
        }
        try {
            return new g(new C0094a()).a(t);
        } catch (org.apache.thrift.f e) {
            com.xiaomi.channel.commonutils.logger.b.a("convertThriftObjectToBytes catch TException.", (Throwable) e);
            return bArr;
        }
    }
}
