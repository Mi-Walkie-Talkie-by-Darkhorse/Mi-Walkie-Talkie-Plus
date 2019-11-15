package com.amap.api.col.sl;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: OfflineLocEntity */
public final class dz {
    private Context a;
    private bz b;
    private String c;

    public dz(Context context, bz bzVar, String str) {
        this.a = context.getApplicationContext();
        this.b = bzVar;
        this.c = str;
    }

    /* access modifiers changed from: 0000 */
    public final byte[] a() {
        return ca.a(a(this.a, this.b, this.c));
    }

    private static String a(Context context, bz bzVar, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("\"sdkversion\":\"").append(bzVar.c()).append("\",\"product\":\"").append(bzVar.a()).append("\",\"nt\":\"").append(bu.e(context)).append("\",\"details\":").append(str);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return sb.toString();
    }
}
