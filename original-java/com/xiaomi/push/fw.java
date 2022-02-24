package com.xiaomi.push;

import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.fs;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;
import java.util.Hashtable;

/* loaded from: classes2.dex */
public class fw {

    /* renamed from: a  reason: collision with root package name */
    private static final int f8967a = fm.PING_RTT.a();

    /* renamed from: a  reason: collision with other field name */
    private static long f389a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        static Hashtable<Integer, Long> f8968a = new Hashtable<>();
    }

    public static void a() {
        if (f389a == 0 || SystemClock.elapsedRealtime() - f389a > 7200000) {
            f389a = SystemClock.elapsedRealtime();
            a(0, f8967a);
        }
    }

    public static void a(int i) {
        fn a2 = fu.m284a().m286a();
        a2.a(fm.CHANNEL_STATS_COUNTER.a());
        a2.c(i);
        fu.m284a().a(a2);
    }

    public static synchronized void a(int i, int i2) {
        synchronized (fw.class) {
            if (i2 < 16777215) {
                a.f8968a.put(Integer.valueOf((i << 24) | i2), Long.valueOf(System.currentTimeMillis()));
            } else {
                b.d("stats key should less than 16777215");
            }
        }
    }

    public static void a(int i, int i2, int i3, String str, int i4) {
        fn a2 = fu.m284a().m286a();
        a2.a((byte) i);
        a2.a(i2);
        a2.b(i3);
        a2.b(str);
        a2.c(i4);
        fu.m284a().a(a2);
    }

    public static synchronized void a(int i, int i2, String str, int i3) {
        synchronized (fw.class) {
            long currentTimeMillis = System.currentTimeMillis();
            int i4 = (i << 24) | i2;
            if (a.f8968a.containsKey(Integer.valueOf(i4))) {
                fn a2 = fu.m284a().m286a();
                a2.a(i2);
                a2.b((int) (currentTimeMillis - a.f8968a.get(Integer.valueOf(i4)).longValue()));
                a2.b(str);
                if (i3 > -1) {
                    a2.c(i3);
                }
                fu.m284a().a(a2);
                a.f8968a.remove(Integer.valueOf(i2));
            } else {
                b.d("stats key not found");
            }
        }
    }

    public static void a(XMPushService xMPushService, bd.b bVar) {
        new fp(xMPushService, bVar).a();
    }

    public static void a(String str, int i, Exception exc) {
        fn a2 = fu.m284a().m286a();
        if (!(fu.a() == null || fu.a().f381a == null)) {
            a2.c(bi.c(fu.a().f381a) ? 1 : 0);
        }
        if (i > 0) {
            a2.a(fm.GSLB_REQUEST_SUCCESS.a());
            a2.b(str);
            a2.b(i);
            fu.m284a().a(a2);
            return;
        }
        try {
            fs.a a3 = fs.a(exc);
            a2.a(a3.f8960a.a());
            a2.c(a3.f378a);
            a2.b(str);
            fu.m284a().a(a2);
        } catch (NullPointerException unused) {
        }
    }

    public static void a(String str, Exception exc) {
        try {
            fs.a b2 = fs.b(exc);
            fn a2 = fu.m284a().m286a();
            a2.a(b2.f8960a.a());
            a2.c(b2.f378a);
            a2.b(str);
            if (!(fu.a() == null || fu.a().f381a == null)) {
                a2.c(bi.c(fu.a().f381a) ? 1 : 0);
            }
            fu.m284a().a(a2);
        } catch (NullPointerException unused) {
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static byte[] m290a() {
        fo a2 = fu.m284a().m287a();
        if (a2 != null) {
            return jf.a(a2);
        }
        return null;
    }

    public static void b() {
        a(0, f8967a, null, -1);
    }

    public static void b(String str, Exception exc) {
        try {
            fs.a d = fs.d(exc);
            fn a2 = fu.m284a().m286a();
            a2.a(d.f8960a.a());
            a2.c(d.f378a);
            a2.b(str);
            if (!(fu.a() == null || fu.a().f381a == null)) {
                a2.c(bi.c(fu.a().f381a) ? 1 : 0);
            }
            fu.m284a().a(a2);
        } catch (NullPointerException unused) {
        }
    }
}
