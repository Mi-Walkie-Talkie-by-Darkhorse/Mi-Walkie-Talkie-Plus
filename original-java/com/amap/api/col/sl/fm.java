package com.amap.api.col.sl;

import android.content.Context;
import java.util.Map;

/* compiled from: LocationRequest */
public final class fm extends Cdo {
    Map<String, String> c = null;
    String d = "";
    byte[] e = null;
    byte[] i = null;
    boolean j = false;
    String k = null;
    Map<String, String> l = null;
    boolean m = false;

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0035 A[SYNTHETIC, Splitter:B:26:0x0035] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(byte[] r4) {
        /*
            r3 = this;
            r2 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ Throwable -> 0x0021, all -> 0x0031 }
            r1.<init>()     // Catch:{ Throwable -> 0x0021, all -> 0x0031 }
            if (r4 == 0) goto L_0x0012
            byte[] r0 = a(r4)     // Catch:{ Throwable -> 0x0040 }
            r1.write(r0)     // Catch:{ IOException -> 0x0042 }
            r1.write(r4)     // Catch:{ IOException -> 0x0042 }
        L_0x0012:
            byte[] r0 = r1.toByteArray()     // Catch:{ Throwable -> 0x0040 }
            r3.i = r0     // Catch:{ Throwable -> 0x0040 }
            r1.close()     // Catch:{ IOException -> 0x001c }
        L_0x001b:
            return
        L_0x001c:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x001b
        L_0x0021:
            r0 = move-exception
            r1 = r2
        L_0x0023:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x003e }
            if (r1 == 0) goto L_0x001b
            r1.close()     // Catch:{ IOException -> 0x002c }
            goto L_0x001b
        L_0x002c:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x001b
        L_0x0031:
            r0 = move-exception
            r1 = r2
        L_0x0033:
            if (r1 == 0) goto L_0x0038
            r1.close()     // Catch:{ IOException -> 0x0039 }
        L_0x0038:
            throw r0
        L_0x0039:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0038
        L_0x003e:
            r0 = move-exception
            goto L_0x0033
        L_0x0040:
            r0 = move-exception
            goto L_0x0023
        L_0x0042:
            r0 = move-exception
            goto L_0x0012
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fm.b(byte[]):void");
    }

    public final Map<String, String> b() {
        return this.l;
    }

    public final boolean i() {
        return this.j;
    }

    public fm(Context context, bz bzVar) {
        super(context, bzVar);
    }

    public final byte[] d() {
        return this.e;
    }

    public final Map<String, String> c() {
        return this.c;
    }

    public final byte[] g() {
        return this.i;
    }

    public final String f() {
        return this.d;
    }

    public final String j() {
        return this.k;
    }

    /* access modifiers changed from: protected */
    public final boolean k() {
        return this.m;
    }
}
