package com.xiaomi.push;

import android.os.Looper;

/* renamed from: com.xiaomi.push.aq */
/* loaded from: classes2.dex */
public class C5988aq {
    /* renamed from: a */
    public static void m3757a() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new RuntimeException("can't do this on ui thread");
        }
    }
}
