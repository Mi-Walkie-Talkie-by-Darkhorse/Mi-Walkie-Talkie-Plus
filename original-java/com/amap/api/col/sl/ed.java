package com.amap.api.col.sl;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.lang.ref.WeakReference;

/* compiled from: Utils */
public final class ed {
    public static void a(Context context, dw dwVar, String str, int i, int i2, String str2) {
        dwVar.a = ck.a(context, str);
        dwVar.d = i;
        dwVar.b = (long) i2;
        dwVar.c = str2;
    }

    public static dw a(WeakReference<dw> weakReference) {
        if (weakReference == null || weakReference.get() == null) {
            weakReference = new WeakReference<>(new dw());
        }
        return (dw) weakReference.get();
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x0052 A[SYNTHETIC, Splitter:B:40:0x0052] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x005c A[SYNTHETIC, Splitter:B:46:0x005c] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0061 A[SYNTHETIC, Splitter:B:49:0x0061] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static byte[] a(com.amap.api.col.sl.di r6, java.lang.String r7) {
        /*
            r2 = 0
            r1 = 0
            r0 = 0
            byte[] r0 = new byte[r0]
            com.amap.api.col.sl.di$b r3 = r6.a(r7)     // Catch:{ Throwable -> 0x0042, all -> 0x0058 }
            if (r3 != 0) goto L_0x0016
            if (r2 == 0) goto L_0x0010
            r1.close()     // Catch:{ Throwable -> 0x0074 }
        L_0x0010:
            if (r3 == 0) goto L_0x0015
            r3.close()     // Catch:{ Throwable -> 0x0079 }
        L_0x0015:
            return r0
        L_0x0016:
            java.io.InputStream r2 = r3.a()     // Catch:{ Throwable -> 0x0087 }
            if (r2 != 0) goto L_0x002c
            if (r2 == 0) goto L_0x0021
            r2.close()     // Catch:{ Throwable -> 0x007b }
        L_0x0021:
            if (r3 == 0) goto L_0x0015
            r3.close()     // Catch:{ Throwable -> 0x0027 }
            goto L_0x0015
        L_0x0027:
            r1 = move-exception
        L_0x0028:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0015
        L_0x002c:
            int r1 = r2.available()     // Catch:{ Throwable -> 0x0087 }
            byte[] r0 = new byte[r1]     // Catch:{ Throwable -> 0x0087 }
            r2.read(r0)     // Catch:{ Throwable -> 0x0087 }
            if (r2 == 0) goto L_0x003a
            r2.close()     // Catch:{ Throwable -> 0x0080 }
        L_0x003a:
            if (r3 == 0) goto L_0x0015
            r3.close()     // Catch:{ Throwable -> 0x0040 }
            goto L_0x0015
        L_0x0040:
            r1 = move-exception
            goto L_0x0028
        L_0x0042:
            r1 = move-exception
            r3 = r2
        L_0x0044:
            java.lang.String r4 = "sui"
            java.lang.String r5 = "rdS"
            com.amap.api.col.sl.cm.c(r1, r4, r5)     // Catch:{ all -> 0x0085 }
            if (r2 == 0) goto L_0x0050
            r2.close()     // Catch:{ Throwable -> 0x006f }
        L_0x0050:
            if (r3 == 0) goto L_0x0015
            r3.close()     // Catch:{ Throwable -> 0x0056 }
            goto L_0x0015
        L_0x0056:
            r1 = move-exception
            goto L_0x0028
        L_0x0058:
            r0 = move-exception
            r3 = r2
        L_0x005a:
            if (r2 == 0) goto L_0x005f
            r2.close()     // Catch:{ Throwable -> 0x0065 }
        L_0x005f:
            if (r3 == 0) goto L_0x0064
            r3.close()     // Catch:{ Throwable -> 0x006a }
        L_0x0064:
            throw r0
        L_0x0065:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x005f
        L_0x006a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0064
        L_0x006f:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0050
        L_0x0074:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0010
        L_0x0079:
            r1 = move-exception
            goto L_0x0028
        L_0x007b:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0021
        L_0x0080:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x003a
        L_0x0085:
            r0 = move-exception
            goto L_0x005a
        L_0x0087:
            r1 = move-exception
            goto L_0x0044
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.ed.a(com.amap.api.col.sl.di, java.lang.String):byte[]");
    }

    public static String a(Context context, bz bzVar) {
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("\"sim\":\"").append(bu.g(context)).append("\",\"sdkversion\":\"").append(bzVar.c()).append("\",\"product\":\"").append(bzVar.a()).append("\",\"ed\":\"").append(bzVar.d()).append("\",\"nt\":\"").append(bu.e(context)).append("\",\"np\":\"").append(bu.c(context)).append("\",\"mnc\":\"").append(bu.d(context)).append("\",\"ant\":\"").append(bu.f(context)).append("\"");
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return sb.toString();
    }
}
