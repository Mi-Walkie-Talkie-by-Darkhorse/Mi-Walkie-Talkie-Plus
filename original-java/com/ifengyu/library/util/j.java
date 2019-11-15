package com.ifengyu.library.util;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: ThreadPool */
public class j {
    private static volatile ExecutorService a;

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
}
