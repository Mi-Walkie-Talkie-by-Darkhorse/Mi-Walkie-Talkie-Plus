package com.xiaomi.channel.commonutils.logger;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import com.xiaomi.push.C6306l;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.xiaomi.channel.commonutils.logger.b */
/* loaded from: classes2.dex */
public abstract class AbstractC5876b {

    /* renamed from: a */
    private static int f20808a = 2;

    /* renamed from: a */
    private static Context f20809a = null;

    /* renamed from: a */
    private static boolean f20815a = false;

    /* renamed from: b */
    private static boolean f20817b = false;

    /* renamed from: a */
    private static String f20812a = "XMPush-" + Process.myPid();

    /* renamed from: a */
    private static LoggerInterface f20810a = new C5877a();

    /* renamed from: a */
    private static final HashMap<Integer, Long> f20813a = new HashMap<>();

    /* renamed from: b */
    private static final HashMap<Integer, String> f20816b = new HashMap<>();

    /* renamed from: a */
    private static final Integer f20811a = -1;

    /* renamed from: a */
    private static AtomicInteger f20814a = new AtomicInteger(1);

    /* renamed from: com.xiaomi.channel.commonutils.logger.b$a */
    /* loaded from: classes2.dex */
    static class C5877a implements LoggerInterface {

        /* renamed from: a */
        private String f20818a = AbstractC5876b.f20812a;

        C5877a() {
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void log(String str) {
            Log.v(this.f20818a, str);
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void log(String str, Throwable th) {
            Log.v(this.f20818a, str, th);
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void setTag(String str) {
            this.f20818a = str;
        }
    }

    /* renamed from: a */
    public static int m4158a() {
        return f20808a;
    }

    /* renamed from: a */
    public static Integer m4149a(String str) {
        if (f20808a <= 1) {
            Integer valueOf = Integer.valueOf(f20814a.incrementAndGet());
            f20813a.put(valueOf, Long.valueOf(System.currentTimeMillis()));
            f20816b.put(valueOf, str);
            LoggerInterface loggerInterface = f20810a;
            loggerInterface.log(str + " starts");
            return valueOf;
        }
        return f20811a;
    }

    /* renamed from: a */
    private static String m4148a(String str) {
        return m4142b() + str;
    }

    /* renamed from: a */
    public static String m4146a(String str, String str2) {
        return "[" + str + "] " + str2;
    }

    /* renamed from: a */
    public static void m4156a(int i) {
        if (i < 0 || i > 5) {
            m4155a(2, "set log level as " + i);
        }
        f20808a = i;
    }

    /* renamed from: a */
    public static void m4155a(int i, String str) {
        if (i >= f20808a) {
            f20810a.log(str);
        }
    }

    /* renamed from: a */
    public static void m4154a(int i, String str, Throwable th) {
        if (i >= f20808a) {
            f20810a.log(str, th);
        }
    }

    /* renamed from: a */
    public static void m4153a(int i, Throwable th) {
        if (i >= f20808a) {
            f20810a.log("", th);
        }
    }

    /* renamed from: a */
    public static void m4152a(Context context) {
        f20809a = context;
        if (C6306l.m1851a(context)) {
            f20815a = true;
        }
        if (C6306l.m1853a()) {
            f20817b = true;
        }
    }

    /* renamed from: a */
    public static void m4151a(LoggerInterface loggerInterface) {
        f20810a = loggerInterface;
    }

    /* renamed from: a */
    public static void m4150a(Integer num) {
        if (f20808a <= 1) {
            HashMap<Integer, Long> hashMap = f20813a;
            if (hashMap.containsKey(num)) {
                long currentTimeMillis = System.currentTimeMillis() - hashMap.remove(num).longValue();
                LoggerInterface loggerInterface = f20810a;
                loggerInterface.log(f20816b.remove(num) + " ends in " + currentTimeMillis + " ms");
            }
        }
    }

    /* renamed from: a */
    public static void m4147a(String str) {
        m4155a(2, m4148a(str));
    }

    /* renamed from: a */
    public static void m4145a(String str, String str2) {
        m4155a(2, m4140b(str, str2));
    }

    /* renamed from: a */
    public static void m4144a(String str, Throwable th) {
        m4154a(4, m4148a(str), th);
    }

    /* renamed from: a */
    public static void m4143a(Throwable th) {
        m4153a(4, th);
    }

    /* renamed from: b */
    private static String m4142b() {
        return "[Tid:" + Thread.currentThread().getId() + "] ";
    }

    /* renamed from: b */
    private static String m4140b(String str, String str2) {
        return m4142b() + m4146a(str, str2);
    }

    /* renamed from: b */
    public static void m4141b(String str) {
        m4155a(0, m4148a(str));
    }

    /* renamed from: c */
    public static void m4139c(String str) {
        m4155a(1, m4148a(str));
    }

    /* renamed from: d */
    public static void m4138d(String str) {
        m4155a(4, m4148a(str));
    }

    /* renamed from: e */
    public static void m4137e(String str) {
        if (!f20815a) {
            Log.w(f20812a, m4148a(str));
            if (f20817b) {
                return;
            }
        }
        m4147a(str);
    }
}
