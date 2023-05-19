package com.xiaomi.push;

import android.content.Context;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.xiaomi.push.dc */
/* loaded from: classes2.dex */
public class C6074dc {

    /* renamed from: a */
    private static ThreadPoolExecutor f21231a = new ThreadPoolExecutor(1, 1, 15, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: a */
    public static void m3399a(Context context) {
    }
}
