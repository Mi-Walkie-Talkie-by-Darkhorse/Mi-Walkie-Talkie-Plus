package com.amap.api.mapcore.util;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: OfflineLocEntity */
public class hz {
    private Context a;
    private fx b;
    private String c;

    public hz(Context context, fx fxVar, String str) {
        this.a = context.getApplicationContext();
        this.b = fxVar;
        this.c = str;
    }

    /* access modifiers changed from: 0000 */
    public byte[] a() {
        return fy.a(a(this.a, this.b, this.c));
    }

    private static String a(Context context, fx fxVar, String str) {
        return fr.b(context, fy.b(fy.a(b(context, fxVar, str))));
    }

    private static String b(Context context, fx fxVar, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("\"sdkversion\":\"").append(fxVar.c()).append("\",\"product\":\"").append(fxVar.a()).append("\",\"nt\":\"").append(fs.e(context)).append("\",\"details\":").append(str);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return sb.toString();
    }
}
