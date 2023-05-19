package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6260ir;
import java.util.Map;

/* renamed from: com.xiaomi.push.service.ae */
/* loaded from: classes2.dex */
public class C6343ae {

    /* renamed from: a */
    private static InterfaceC6344a f22949a;

    /* renamed from: a */
    private static InterfaceC6345b f22950a;

    /* renamed from: com.xiaomi.push.service.ae$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC6344a {
        /* renamed from: a */
        Map<String, String> m1706a(Context context, C6260ir c6260ir);

        /* renamed from: a */
        void m1705a(Context context, C6260ir c6260ir);

        /* renamed from: a */
        boolean m1704a(Context context, C6260ir c6260ir, boolean z);
    }

    /* renamed from: com.xiaomi.push.service.ae$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC6345b {
        /* renamed from: a */
        void m1703a(C6260ir c6260ir);

        /* renamed from: a */
        void m1701a(String str);

        /* renamed from: a */
        boolean m1702a(C6260ir c6260ir);
    }

    /* renamed from: a */
    public static Map<String, String> m1712a(Context context, C6260ir c6260ir) {
        InterfaceC6344a interfaceC6344a = f22949a;
        if (interfaceC6344a == null || c6260ir == null) {
            AbstractC5876b.m4147a("pepa listener or container is null");
            return null;
        }
        return interfaceC6344a.m1706a(context, c6260ir);
    }

    /* renamed from: a */
    public static void m1711a(Context context, C6260ir c6260ir) {
        InterfaceC6344a interfaceC6344a = f22949a;
        if (interfaceC6344a == null || c6260ir == null) {
            AbstractC5876b.m4147a("handle msg wrong");
        } else {
            interfaceC6344a.m1705a(context, c6260ir);
        }
    }

    /* renamed from: a */
    public static void m1709a(C6260ir c6260ir) {
        InterfaceC6345b interfaceC6345b = f22950a;
        if (interfaceC6345b == null || c6260ir == null) {
            AbstractC5876b.m4147a("pepa clearMessage is null");
        } else {
            interfaceC6345b.m1703a(c6260ir);
        }
    }

    /* renamed from: a */
    public static void m1707a(String str) {
        InterfaceC6345b interfaceC6345b = f22950a;
        if (interfaceC6345b == null || str == null) {
            AbstractC5876b.m4147a("pepa clearMessage is null");
        } else {
            interfaceC6345b.m1701a(str);
        }
    }

    /* renamed from: a */
    public static boolean m1710a(Context context, C6260ir c6260ir, boolean z) {
        InterfaceC6344a interfaceC6344a = f22949a;
        if (interfaceC6344a == null || c6260ir == null) {
            AbstractC5876b.m4147a("pepa judement listener or container is null");
            return false;
        }
        return interfaceC6344a.m1704a(context, c6260ir, z);
    }

    /* renamed from: a */
    public static boolean m1708a(C6260ir c6260ir) {
        InterfaceC6345b interfaceC6345b = f22950a;
        if (interfaceC6345b == null || c6260ir == null) {
            AbstractC5876b.m4147a("pepa handleReceiveMessage is null");
            return false;
        }
        return interfaceC6345b.m1702a(c6260ir);
    }
}
