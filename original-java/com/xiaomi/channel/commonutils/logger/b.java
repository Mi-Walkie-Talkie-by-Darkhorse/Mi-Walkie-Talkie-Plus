package com.xiaomi.channel.commonutils.logger;

import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class b {
    private static int a = 2;
    private static LoggerInterface b = new a();
    private static final HashMap<Integer, Long> c = new HashMap<>();
    private static final HashMap<Integer, String> d = new HashMap<>();
    private static final Integer e = Integer.valueOf(-1);
    private static AtomicInteger f = new AtomicInteger(1);

    public static int a() {
        return a;
    }

    public static void a(int i, String str) {
        if (i >= a) {
            b.log(str);
        }
    }

    public static void a(int i, String str, Throwable th) {
        if (i >= a) {
            b.log(str, th);
        }
    }

    public static void a(int i, Throwable th) {
        if (i >= a) {
            b.log("", th);
        }
    }

    public static void a(LoggerInterface loggerInterface) {
        b = loggerInterface;
    }

    public static void a(Integer num) {
        if (a <= 1 && c.containsKey(num)) {
            long currentTimeMillis = System.currentTimeMillis() - ((Long) c.remove(num)).longValue();
            b.log(((String) d.remove(num)) + " ends in " + currentTimeMillis + " ms");
        }
    }

    public static void a(String str) {
        a(2, "[Thread:" + Thread.currentThread().getId() + "] " + str);
    }

    public static void a(String str, Throwable th) {
        a(4, str, th);
    }

    public static void a(Throwable th) {
        a(4, th);
    }

    public static void b(String str) {
        a(0, str);
    }

    public static void c(String str) {
        a(1, "[Thread:" + Thread.currentThread().getId() + "] " + str);
    }

    public static void d(String str) {
        a(4, str);
    }

    public static Integer e(String str) {
        if (a > 1) {
            return e;
        }
        Integer valueOf = Integer.valueOf(f.incrementAndGet());
        c.put(valueOf, Long.valueOf(System.currentTimeMillis()));
        d.put(valueOf, str);
        b.log(str + " starts");
        return valueOf;
    }
}
