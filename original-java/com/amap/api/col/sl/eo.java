package com.amap.api.col.sl;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.FileInputStream;

/* compiled from: TimeUpdateStrategy */
public final class eo extends ep {
    private int b;
    private long c;
    private String d;

    public eo(int i, String str, ep epVar) {
        super(epVar);
        this.b = i;
        this.d = str;
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        if (this.c == 0) {
            this.c = a(this.d);
        }
        if (System.currentTimeMillis() - this.c < ((long) this.b)) {
            return false;
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0045 A[SYNTHETIC, Splitter:B:19:0x0045] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0052 A[SYNTHETIC, Splitter:B:26:0x0052] */
    /* JADX WARNING: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(boolean r7) {
        /*
            r6 = this;
            super.a(r7)
            if (r7 == 0) goto L_0x0039
            java.lang.String r0 = r6.d
            long r4 = java.lang.System.currentTimeMillis()
            r6.c = r4
            java.io.File r3 = new java.io.File
            r3.<init>(r0)
            java.io.File r0 = r3.getParentFile()
            boolean r0 = r0.exists()
            if (r0 != 0) goto L_0x0023
            java.io.File r0 = r3.getParentFile()
            r0.mkdirs()
        L_0x0023:
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ Throwable -> 0x003a, all -> 0x004e }
            r1.<init>(r3)     // Catch:{ Throwable -> 0x003a, all -> 0x004e }
            java.lang.String r0 = java.lang.String.valueOf(r4)     // Catch:{ Throwable -> 0x005f }
            byte[] r0 = com.amap.api.col.sl.ca.a(r0)     // Catch:{ Throwable -> 0x005f }
            r1.write(r0)     // Catch:{ Throwable -> 0x005f }
            if (r1 == 0) goto L_0x0039
            r1.close()     // Catch:{ Throwable -> 0x005b }
        L_0x0039:
            return
        L_0x003a:
            r0 = move-exception
            r1 = r2
        L_0x003c:
            java.lang.String r2 = "tus"
            java.lang.String r3 = "uut"
            com.amap.api.col.sl.cm.c(r0, r2, r3)     // Catch:{ all -> 0x005d }
            if (r1 == 0) goto L_0x0039
            r1.close()     // Catch:{ Throwable -> 0x0049 }
            goto L_0x0039
        L_0x0049:
            r0 = move-exception
        L_0x004a:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0039
        L_0x004e:
            r0 = move-exception
            r1 = r2
        L_0x0050:
            if (r1 == 0) goto L_0x0055
            r1.close()     // Catch:{ Throwable -> 0x0056 }
        L_0x0055:
            throw r0
        L_0x0056:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0055
        L_0x005b:
            r0 = move-exception
            goto L_0x004a
        L_0x005d:
            r0 = move-exception
            goto L_0x0050
        L_0x005f:
            r0 = move-exception
            goto L_0x003c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.eo.a(boolean):void");
    }

    private static long a(String str) {
        FileInputStream fileInputStream;
        long j = 0;
        File file = new File(str);
        if (file.exists()) {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[fileInputStream.available()];
                    fileInputStream.read(bArr);
                    j = Long.parseLong(ca.a(bArr));
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th) {
                            th = th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th4) {
                        ThrowableExtension.printStackTrace(th4);
                    }
                }
                throw th;
            }
        }
        return j;
        ThrowableExtension.printStackTrace(th);
        return j;
    }
}
