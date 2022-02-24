package com.xiaomi.push.service;

import com.xiaomi.push.iu;
import com.xiaomi.push.l;
import com.xiaomi.push.u;

/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static a f9333a;

    /* renamed from: a  reason: collision with other field name */
    private static b f993a;

    /* loaded from: classes2.dex */
    public interface a {
        boolean a(iu iuVar);
    }

    /* loaded from: classes2.dex */
    public interface b {
    }

    public static void a(b bVar) {
        f993a = bVar;
    }

    public static boolean a(iu iuVar) {
        String str;
        if (f9333a == null || iuVar == null) {
            str = "rc params is null, not cpra";
        } else if (l.m528a(u.m658a())) {
            return f9333a.a(iuVar);
        } else {
            str = "rc app not permission to cpra";
        }
        com.xiaomi.channel.commonutils.logger.b.m1a(str);
        return false;
    }
}
