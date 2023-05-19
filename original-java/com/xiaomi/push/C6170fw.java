package com.xiaomi.push;

import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6164fs;
import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.XMPushService;
import java.util.Hashtable;

/* renamed from: com.xiaomi.push.fw */
/* loaded from: classes2.dex */
public class C6170fw {

    /* renamed from: a */
    private static final int f21671a = EnumC6158fm.PING_RTT.m2919a();

    /* renamed from: a */
    private static long f21672a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.fw$a */
    /* loaded from: classes2.dex */
    public static class C6171a {

        /* renamed from: a */
        static Hashtable<Integer, Long> f21673a = new Hashtable<>();
    }

    /* renamed from: a */
    public static void m2856a() {
        if (f21672a == 0 || SystemClock.elapsedRealtime() - f21672a > 7200000) {
            f21672a = SystemClock.elapsedRealtime();
            m2853a(0, f21671a);
        }
    }

    /* renamed from: a */
    public static void m2854a(int i) {
        C6159fn m2868a = C6167fu.m2865a().m2868a();
        m2868a.m2913a(EnumC6158fm.CHANNEL_STATS_COUNTER.m2919a());
        m2868a.m2903c(i);
        C6167fu.m2865a().m2859a(m2868a);
    }

    /* renamed from: a */
    public static synchronized void m2853a(int i, int i2) {
        synchronized (C6170fw.class) {
            if (i2 < 16777215) {
                C6171a.f21673a.put(Integer.valueOf((i << 24) | i2), Long.valueOf(System.currentTimeMillis()));
            } else {
                AbstractC5876b.m4138d("stats key should less than 16777215");
            }
        }
    }

    /* renamed from: a */
    public static void m2852a(int i, int i2, int i3, String str, int i4) {
        C6159fn m2868a = C6167fu.m2865a().m2868a();
        m2868a.m2914a((byte) i);
        m2868a.m2913a(i2);
        m2868a.m2907b(i3);
        m2868a.m2906b(str);
        m2868a.m2903c(i4);
        C6167fu.m2865a().m2859a(m2868a);
    }

    /* renamed from: a */
    public static synchronized void m2851a(int i, int i2, String str, int i3) {
        synchronized (C6170fw.class) {
            long currentTimeMillis = System.currentTimeMillis();
            int i4 = (i << 24) | i2;
            if (C6171a.f21673a.containsKey(Integer.valueOf(i4))) {
                C6159fn m2868a = C6167fu.m2865a().m2868a();
                m2868a.m2913a(i2);
                m2868a.m2907b((int) (currentTimeMillis - C6171a.f21673a.get(Integer.valueOf(i4)).longValue()));
                m2868a.m2906b(str);
                if (i3 > -1) {
                    m2868a.m2903c(i3);
                }
                C6167fu.m2865a().m2859a(m2868a);
                C6171a.f21673a.remove(Integer.valueOf(i2));
            } else {
                AbstractC5876b.m4138d("stats key not found");
            }
        }
    }

    /* renamed from: a */
    public static void m2850a(XMPushService xMPushService, C6381bd.C6383b c6383b) {
        new C6161fp(xMPushService, c6383b).m2881a();
    }

    /* renamed from: a */
    public static void m2849a(String str, int i, Exception exc) {
        C6159fn m2868a = C6167fu.m2865a().m2868a();
        if (C6167fu.m2866a() != null && C6167fu.m2866a().f21655a != null) {
            m2868a.m2903c(C6013bi.m3661c(C6167fu.m2866a().f21655a) ? 1 : 0);
        }
        if (i > 0) {
            m2868a.m2913a(EnumC6158fm.GSLB_REQUEST_SUCCESS.m2919a());
            m2868a.m2906b(str);
            m2868a.m2907b(i);
            C6167fu.m2865a().m2859a(m2868a);
            return;
        }
        try {
            C6164fs.C6165a m2877a = C6164fs.m2877a(exc);
            m2868a.m2913a(m2877a.f21650a.m2919a());
            m2868a.m2902c(m2877a.f21651a);
            m2868a.m2906b(str);
            C6167fu.m2865a().m2859a(m2868a);
        } catch (NullPointerException unused) {
        }
    }

    /* renamed from: a */
    public static void m2848a(String str, Exception exc) {
        try {
            C6164fs.C6165a m2875b = C6164fs.m2875b(exc);
            C6159fn m2868a = C6167fu.m2865a().m2868a();
            m2868a.m2913a(m2875b.f21650a.m2919a());
            m2868a.m2902c(m2875b.f21651a);
            m2868a.m2906b(str);
            if (C6167fu.m2866a() != null && C6167fu.m2866a().f21655a != null) {
                m2868a.m2903c(C6013bi.m3661c(C6167fu.m2866a().f21655a) ? 1 : 0);
            }
            C6167fu.m2865a().m2859a(m2868a);
        } catch (NullPointerException unused) {
        }
    }

    /* renamed from: a */
    public static byte[] m2855a() {
        C6160fo m2867a = C6167fu.m2865a().m2867a();
        if (m2867a != null) {
            return C6278jf.m1933a(m2867a);
        }
        return null;
    }

    /* renamed from: b */
    public static void m2847b() {
        m2851a(0, f21671a, null, -1);
    }

    /* renamed from: b */
    public static void m2846b(String str, Exception exc) {
        try {
            C6164fs.C6165a m2873d = C6164fs.m2873d(exc);
            C6159fn m2868a = C6167fu.m2865a().m2868a();
            m2868a.m2913a(m2873d.f21650a.m2919a());
            m2868a.m2902c(m2873d.f21651a);
            m2868a.m2906b(str);
            if (C6167fu.m2866a() != null && C6167fu.m2866a().f21655a != null) {
                m2868a.m2903c(C6013bi.m3661c(C6167fu.m2866a().f21655a) ? 1 : 0);
            }
            C6167fu.m2865a().m2859a(m2868a);
        } catch (NullPointerException unused) {
        }
    }
}
