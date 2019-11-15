package com.amap.api.mapcore.util;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.lang.Thread.UncaughtExceptionHandler;

/* compiled from: BasicLogHandler */
public class gc {
    protected static gc a;
    protected UncaughtExceptionHandler b;
    protected boolean c = true;

    public static void a(Throwable th, String str, String str2) {
        ThrowableExtension.printStackTrace(th);
        if (a != null) {
            a.a(th, 1, str, str2);
        }
    }

    /* access modifiers changed from: protected */
    public void a(Throwable th, int i, String str, String str2) {
    }

    /* access modifiers changed from: protected */
    public void a(Context context, fx fxVar, boolean z) {
    }

    /* access modifiers changed from: protected */
    public void a(fx fxVar, String str, String str2) {
    }
}
