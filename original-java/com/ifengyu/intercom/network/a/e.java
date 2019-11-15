package com.ifengyu.intercom.network.a;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: ThreadPool */
public class e {
    private static volatile ExecutorService a;
    private static volatile ExecutorService b;

    public static ExecutorService a() {
        if (a == null) {
            synchronized (ExecutorService.class) {
                if (a == null) {
                    a = Executors.newSingleThreadExecutor();
                }
            }
        }
        return a;
    }

    public static ExecutorService b() {
        if (b == null) {
            synchronized (ExecutorService.class) {
                if (b == null) {
                    b = Executors.newFixedThreadPool(4);
                }
            }
        }
        return b;
    }
}
