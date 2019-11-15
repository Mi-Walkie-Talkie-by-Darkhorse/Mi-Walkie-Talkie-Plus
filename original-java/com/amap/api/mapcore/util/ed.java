package com.amap.api.mapcore.util;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: StatisticsUtil */
public class ed {
    public static void a(Context context, boolean z) {
        try {
            String a = a(z);
            ib ibVar = new ib(context, "3dmap", "5.7.0", "O001");
            ibVar.a(a);
            ic.a(ibVar, context);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private static String a(boolean z) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("{\"Quest\":").append(z).append("}");
            return sb.toString();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }
}
