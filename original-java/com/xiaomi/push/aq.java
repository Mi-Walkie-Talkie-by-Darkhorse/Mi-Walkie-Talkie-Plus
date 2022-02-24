package com.xiaomi.push;

import android.os.Looper;

/* loaded from: classes2.dex */
public class aq {
    public static void a() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new RuntimeException("can't do this on ui thread");
        }
    }
}
