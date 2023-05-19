package com.ifengyu.intercom.httpold.download;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: ThreadPool.java */
/* renamed from: com.ifengyu.intercom.httpold.download.b */
/* loaded from: classes2.dex */
public class C3855b {

    /* renamed from: a */
    private static volatile ExecutorService f13730a;

    /* renamed from: a */
    public static ExecutorService m12387a() {
        if (f13730a == null) {
            synchronized (ExecutorService.class) {
                if (f13730a == null) {
                    f13730a = Executors.newFixedThreadPool(4);
                }
            }
        }
        return f13730a;
    }
}
