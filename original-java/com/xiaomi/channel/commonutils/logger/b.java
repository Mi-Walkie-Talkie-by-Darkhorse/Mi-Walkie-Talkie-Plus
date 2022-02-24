package com.xiaomi.channel.commonutils.logger;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import com.xiaomi.push.l;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static int f8648a = 2;

    /* renamed from: a  reason: collision with other field name */
    private static Context f0a = null;

    /* renamed from: a  reason: collision with other field name */
    private static boolean f6a = false;

    /* renamed from: b  reason: collision with other field name */
    private static boolean f7b = false;

    /* renamed from: a  reason: collision with other field name */
    private static String f3a = "XMPush-" + Process.myPid();

    /* renamed from: a  reason: collision with other field name */
    private static LoggerInterface f1a = new a();

    /* renamed from: a  reason: collision with other field name */
    private static final HashMap<Integer, Long> f4a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<Integer, String> f8649b = new HashMap<>();

    /* renamed from: a  reason: collision with other field name */
    private static final Integer f2a = -1;

    /* renamed from: a  reason: collision with other field name */
    private static AtomicInteger f5a = new AtomicInteger(1);

    /* loaded from: classes2.dex */
    static class a implements LoggerInterface {

        /* renamed from: a  reason: collision with root package name */
        private String f8650a = b.f3a;

        a() {
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void log(String str) {
            Log.v(this.f8650a, str);
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void log(String str, Throwable th) {
            Log.v(this.f8650a, str, th);
        }

        @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
        public void setTag(String str) {
            this.f8650a = str;
        }
    }

    public static int a() {
        return f8648a;
    }

    public static Integer a(String str) {
        if (f8648a > 1) {
            return f2a;
        }
        Integer valueOf = Integer.valueOf(f5a.incrementAndGet());
        f4a.put(valueOf, Long.valueOf(System.currentTimeMillis()));
        f8649b.put(valueOf, str);
        LoggerInterface loggerInterface = f1a;
        loggerInterface.log(str + " starts");
        return valueOf;
    }

    /* renamed from: a  reason: collision with other method in class */
    private static String m0a(String str) {
        return b() + str;
    }

    public static String a(String str, String str2) {
        return "[" + str + "] " + str2;
    }

    public static void a(int i) {
        if (i < 0 || i > 5) {
            a(2, "set log level as " + i);
        }
        f8648a = i;
    }

    public static void a(int i, String str) {
        if (i >= f8648a) {
            f1a.log(str);
        }
    }

    public static void a(int i, String str, Throwable th) {
        if (i >= f8648a) {
            f1a.log(str, th);
        }
    }

    public static void a(int i, Throwable th) {
        if (i >= f8648a) {
            f1a.log("", th);
        }
    }

    public static void a(Context context) {
        f0a = context;
        if (l.m528a(context)) {
            f6a = true;
        }
        if (l.m527a()) {
            f7b = true;
        }
    }

    public static void a(LoggerInterface loggerInterface) {
        f1a = loggerInterface;
    }

    public static void a(Integer num) {
        if (f8648a <= 1 && f4a.containsKey(num)) {
            long currentTimeMillis = System.currentTimeMillis() - f4a.remove(num).longValue();
            LoggerInterface loggerInterface = f1a;
            loggerInterface.log(f8649b.remove(num) + " ends in " + currentTimeMillis + " ms");
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static void m1a(String str) {
        a(2, m0a(str));
    }

    /* renamed from: a  reason: collision with other method in class */
    public static void m2a(String str, String str2) {
        a(2, b(str, str2));
    }

    public static void a(String str, Throwable th) {
        a(4, m0a(str), th);
    }

    public static void a(Throwable th) {
        a(4, th);
    }

    private static String b() {
        return "[Tid:" + Thread.currentThread().getId() + "] ";
    }

    private static String b(String str, String str2) {
        return b() + a(str, str2);
    }

    public static void b(String str) {
        a(0, m0a(str));
    }

    public static void c(String str) {
        a(1, m0a(str));
    }

    public static void d(String str) {
        a(4, m0a(str));
    }

    public static void e(String str) {
        if (!f6a) {
            Log.w(f3a, m0a(str));
            if (f7b) {
                return;
            }
        }
        m1a(str);
    }
}
