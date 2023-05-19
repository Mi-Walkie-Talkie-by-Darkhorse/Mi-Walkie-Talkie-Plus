package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.C6469u;

/* renamed from: com.xiaomi.push.service.i */
/* loaded from: classes2.dex */
public class C6441i {

    /* renamed from: a */
    private static InterfaceC6442a f23188a;

    /* renamed from: a */
    private static InterfaceC6443b f23189a;

    /* renamed from: com.xiaomi.push.service.i$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC6442a {
        /* renamed from: a */
        boolean m1367a(C6263iu c6263iu);
    }

    /* renamed from: com.xiaomi.push.service.i$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC6443b {
    }

    /* renamed from: a */
    public static void m1368a(InterfaceC6443b interfaceC6443b) {
        f23189a = interfaceC6443b;
    }

    /* renamed from: a */
    public static boolean m1369a(C6263iu c6263iu) {
        String str;
        if (f23188a == null || c6263iu == null) {
            str = "rc params is null, not cpra";
        } else if (C6306l.m1851a(C6469u.m1240a())) {
            return f23188a.m1367a(c6263iu);
        } else {
            str = "rc app not permission to cpra";
        }
        AbstractC5876b.m4147a(str);
        return false;
    }
}
