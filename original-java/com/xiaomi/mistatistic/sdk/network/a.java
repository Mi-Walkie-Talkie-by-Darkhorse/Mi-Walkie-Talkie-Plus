package com.xiaomi.mistatistic.sdk.network;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: DNSThreadPool */
public class a {
    private static int a = 2;
    private static int b = 2;
    private static int c = 2;
    private static BlockingQueue<Runnable> d = new LinkedBlockingQueue();
    private static ThreadPoolExecutor e = new ThreadPoolExecutor(a, b, (long) c, TimeUnit.SECONDS, d);

    public static ThreadPoolExecutor a() {
        return e;
    }
}
