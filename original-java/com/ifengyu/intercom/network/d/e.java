package com.ifengyu.intercom.network.d;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: ThreadPool.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ExecutorService f5830a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile ExecutorService f5831b;

    public static ExecutorService a() {
        if (f5831b == null) {
            synchronized (ExecutorService.class) {
                if (f5831b == null) {
                    f5831b = Executors.newFixedThreadPool(4);
                }
            }
        }
        return f5831b;
    }

    public static ExecutorService b() {
        if (f5830a == null) {
            synchronized (ExecutorService.class) {
                if (f5830a == null) {
                    f5830a = Executors.newSingleThreadExecutor();
                }
            }
        }
        return f5830a;
    }
}
