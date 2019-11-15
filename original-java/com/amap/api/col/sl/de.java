package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import dalvik.system.DexFile;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/* compiled from: DynamicLoader */
final class de extends cz {
    private PublicKey i = null;

    de(final Context context, bz bzVar) throws Exception {
        a aVar = null;
        super(context, bzVar);
        final String b = db.b(context, bzVar.a(), bzVar.b());
        final String a = db.a(context);
        if (TextUtils.isEmpty(b) || TextUtils.isEmpty(a)) {
            throw new Exception("dexPath or dexOutputDir is null.");
        }
        File file = new File(b);
        if (dg.b().a(this.e).b) {
            throw new Exception("file is downloading");
        }
        String str = a + File.separator + db.a(file.getName());
        try {
            if (this.c == null) {
                aVar = dg.b().a(this.e);
                if (aVar != null) {
                    aVar.a = true;
                }
                b();
                if (aVar.b) {
                    throw new Exception("file is downloading");
                }
                this.c = DexFile.loadDex(b, str, 0);
                if (aVar != null) {
                    try {
                        aVar.a = false;
                        synchronized (aVar) {
                            aVar.notify();
                        }
                    } catch (Throwable th) {
                    }
                }
            }
            try {
                dg.b().a().submit(new Runnable() {
                    public final void run() {
                        try {
                            de.this.a(context, b, a);
                        } catch (Throwable th) {
                            cj.a(th, "dLoader", "run()");
                        }
                    }
                });
            } catch (Throwable th2) {
            }
        } catch (Throwable th3) {
            if (aVar != null) {
                try {
                    aVar.a = false;
                    synchronized (aVar) {
                        aVar.notify();
                    }
                } catch (Throwable th4) {
                }
            }
            throw th3;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x000e, code lost:
        r6.h = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0010, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x003a, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:?, code lost:
        com.amap.api.col.sl.cj.a(r0, "dLoader", "findCl");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0047, code lost:
        throw new java.lang.ClassNotFoundException(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0077, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x000b, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:?, code lost:
        com.amap.api.col.sl.cj.a(r1, "dLoader", "findCl");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:?, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x000d, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:6:0x000b A[ExcHandler: ClassNotFoundException (r0v3 'e' java.lang.ClassNotFoundException A[CUSTOM_DECLARE]), Splitter:B:1:0x0001] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Class<?> findClass(java.lang.String r7) throws java.lang.ClassNotFoundException {
        /*
            r6 = this;
            r4 = 0
            dalvik.system.DexFile r0 = r6.c     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            if (r0 != 0) goto L_0x0011
            java.lang.ClassNotFoundException r0 = new java.lang.ClassNotFoundException     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            r0.<init>(r7)     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            throw r0     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
        L_0x000b:
            r0 = move-exception
            throw r0     // Catch:{ all -> 0x000d }
        L_0x000d:
            r0 = move-exception
            r6.h = r4
            throw r0
        L_0x0011:
            r1 = 0
            java.util.Map r2 = r6.b     // Catch:{ Throwable -> 0x0026, ClassNotFoundException -> 0x000b }
            monitor-enter(r2)     // Catch:{ Throwable -> 0x0026, ClassNotFoundException -> 0x000b }
            java.util.Map r0 = r6.b     // Catch:{ all -> 0x0023 }
            java.lang.Object r0 = r0.get(r7)     // Catch:{ all -> 0x0023 }
            java.lang.Class r0 = (java.lang.Class) r0     // Catch:{ all -> 0x0023 }
            monitor-exit(r2)     // Catch:{ all -> 0x0080 }
        L_0x001e:
            if (r0 == 0) goto L_0x0030
            r6.h = r4
        L_0x0022:
            return r0
        L_0x0023:
            r0 = move-exception
        L_0x0024:
            monitor-exit(r2)     // Catch:{ Throwable -> 0x0026, ClassNotFoundException -> 0x000b }
            throw r0     // Catch:{ Throwable -> 0x0026, ClassNotFoundException -> 0x000b }
        L_0x0026:
            r0 = move-exception
            java.lang.String r2 = "dLoader"
            java.lang.String r3 = "findCl"
            com.amap.api.col.sl.cj.a(r0, r2, r3)     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            r0 = r1
            goto L_0x001e
        L_0x0030:
            boolean r0 = r6.g     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            if (r0 == 0) goto L_0x0048
            java.lang.ClassNotFoundException r0 = new java.lang.ClassNotFoundException     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            r0.<init>(r7)     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            throw r0     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
        L_0x003a:
            r0 = move-exception
            java.lang.String r1 = "dLoader"
            java.lang.String r2 = "findCl"
            com.amap.api.col.sl.cj.a(r0, r1, r2)     // Catch:{ all -> 0x000d }
            java.lang.ClassNotFoundException r0 = new java.lang.ClassNotFoundException     // Catch:{ all -> 0x000d }
            r0.<init>(r7)     // Catch:{ all -> 0x000d }
            throw r0     // Catch:{ all -> 0x000d }
        L_0x0048:
            r0 = 1
            r6.h = r0     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            dalvik.system.DexFile r0 = r6.c     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            java.lang.Class r0 = r0.loadClass(r7, r6)     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            dalvik.system.DexFile r1 = r6.c     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            monitor-enter(r1)     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            dalvik.system.DexFile r2 = r6.c     // Catch:{ all -> 0x0065 }
            r2.notify()     // Catch:{ all -> 0x0065 }
            monitor-exit(r1)     // Catch:{ all -> 0x0065 }
            r1 = 0
            r6.h = r1     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            if (r0 != 0) goto L_0x0068
            java.lang.ClassNotFoundException r0 = new java.lang.ClassNotFoundException     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            r0.<init>(r7)     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            throw r0     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
        L_0x0065:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            throw r0     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
        L_0x0068:
            java.util.Map r2 = r6.b     // Catch:{ Throwable -> 0x0077, ClassNotFoundException -> 0x000b }
            monitor-enter(r2)     // Catch:{ Throwable -> 0x0077, ClassNotFoundException -> 0x000b }
            java.util.Map r1 = r6.b     // Catch:{ all -> 0x0074 }
            r1.put(r7, r0)     // Catch:{ all -> 0x0074 }
            monitor-exit(r2)     // Catch:{ all -> 0x0074 }
        L_0x0071:
            r6.h = r4
            goto L_0x0022
        L_0x0074:
            r1 = move-exception
            monitor-exit(r2)     // Catch:{ Throwable -> 0x0077, ClassNotFoundException -> 0x000b }
            throw r1     // Catch:{ Throwable -> 0x0077, ClassNotFoundException -> 0x000b }
        L_0x0077:
            r1 = move-exception
            java.lang.String r2 = "dLoader"
            java.lang.String r3 = "findCl"
            com.amap.api.col.sl.cj.a(r1, r2, r3)     // Catch:{ ClassNotFoundException -> 0x000b, Throwable -> 0x003a }
            goto L_0x0071
        L_0x0080:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L_0x0024
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.de.findClass(java.lang.String):java.lang.Class");
    }

    private static void a(JarFile jarFile, JarEntry jarEntry) throws IOException {
        try {
            InputStream inputStream = jarFile.getInputStream(jarEntry);
            do {
            } while (inputStream.read(new byte[8192]) > 0);
            try {
                dh.a((Closeable) inputStream);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        } catch (Throwable th2) {
            ThrowableExtension.printStackTrace(th2);
        }
    }

    private boolean a(Certificate[] certificateArr) {
        try {
            if (certificateArr.length > 0) {
                int length = certificateArr.length - 1;
                if (length >= 0) {
                    certificateArr[length].verify(this.i);
                    return true;
                }
            }
        } catch (Exception e) {
            cj.a((Throwable) e, "DyLoader", "check");
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x0049 A[SYNTHETIC, Splitter:B:34:0x0049] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(java.io.File r6) {
        /*
            r5 = this;
            r0 = 0
            r2 = 0
            java.security.PublicKey r1 = r5.i     // Catch:{ Throwable -> 0x0036 }
            if (r1 != 0) goto L_0x000c
            java.security.PublicKey r1 = com.amap.api.col.sl.dh.a()     // Catch:{ Throwable -> 0x0036 }
            r5.i = r1     // Catch:{ Throwable -> 0x0036 }
        L_0x000c:
            java.util.jar.JarFile r3 = new java.util.jar.JarFile     // Catch:{ Throwable -> 0x0036 }
            r3.<init>(r6)     // Catch:{ Throwable -> 0x0036 }
            java.lang.String r1 = "classes.dex"
            java.util.jar.JarEntry r1 = r3.getJarEntry(r1)     // Catch:{ Throwable -> 0x0054, all -> 0x0051 }
            if (r1 != 0) goto L_0x001d
            r3.close()     // Catch:{ Throwable -> 0x004d }
        L_0x001c:
            return r0
        L_0x001d:
            a(r3, r1)     // Catch:{ Throwable -> 0x0054, all -> 0x0051 }
            java.security.cert.Certificate[] r1 = r1.getCertificates()     // Catch:{ Throwable -> 0x0054, all -> 0x0051 }
            if (r1 != 0) goto L_0x002c
            r3.close()     // Catch:{ Throwable -> 0x002a }
            goto L_0x001c
        L_0x002a:
            r1 = move-exception
            goto L_0x001c
        L_0x002c:
            boolean r0 = r5.a(r1)     // Catch:{ Throwable -> 0x0054, all -> 0x0051 }
            r3.close()     // Catch:{ Throwable -> 0x0034 }
            goto L_0x001c
        L_0x0034:
            r1 = move-exception
            goto L_0x001c
        L_0x0036:
            r1 = move-exception
        L_0x0037:
            java.lang.String r3 = "DyLoader"
            java.lang.String r4 = "verify"
            com.amap.api.col.sl.cj.a(r1, r3, r4)     // Catch:{ all -> 0x0046 }
            if (r2 == 0) goto L_0x001c
            r2.close()     // Catch:{ Throwable -> 0x0044 }
            goto L_0x001c
        L_0x0044:
            r1 = move-exception
            goto L_0x001c
        L_0x0046:
            r0 = move-exception
        L_0x0047:
            if (r2 == 0) goto L_0x004c
            r2.close()     // Catch:{ Throwable -> 0x004f }
        L_0x004c:
            throw r0
        L_0x004d:
            r1 = move-exception
            goto L_0x001c
        L_0x004f:
            r1 = move-exception
            goto L_0x004c
        L_0x0051:
            r0 = move-exception
            r2 = r3
            goto L_0x0047
        L_0x0054:
            r1 = move-exception
            r2 = r3
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.de.a(java.io.File):boolean");
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00c2 A[Catch:{ Throwable -> 0x0102 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(android.content.Context r9, java.lang.String r10, java.lang.String r11) throws java.lang.Exception {
        /*
            r8 = this;
            r0 = 0
            java.util.Date r1 = new java.util.Date
            r1.<init>()
            r1.getTime()
            com.amap.api.col.sl.cq r6 = new com.amap.api.col.sl.cq     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.dd r1 = com.amap.api.col.sl.dd.b()     // Catch:{ Throwable -> 0x0102 }
            r6.<init>(r9, r1)     // Catch:{ Throwable -> 0x0102 }
            java.io.File r2 = new java.io.File     // Catch:{ Throwable -> 0x0102 }
            r2.<init>(r10)     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r1 = r2.getName()     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.df r1 = com.amap.api.col.sl.db.a.a(r6, r1)     // Catch:{ Throwable -> 0x0102 }
            if (r1 == 0) goto L_0x0027
            java.lang.String r1 = r1.e()     // Catch:{ Throwable -> 0x0102 }
            r8.f = r1     // Catch:{ Throwable -> 0x0102 }
        L_0x0027:
            com.amap.api.col.sl.bz r1 = r8.e     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r3 = r2.getAbsolutePath()     // Catch:{ Throwable -> 0x0102 }
            java.io.File r4 = new java.io.File     // Catch:{ Throwable -> 0x0102 }
            r4.<init>(r3)     // Catch:{ Throwable -> 0x0102 }
            boolean r4 = r8.a(r4)     // Catch:{ Throwable -> 0x0102 }
            if (r4 == 0) goto L_0x0076
            android.content.Context r4 = r8.a     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r5 = r1.a()     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r7 = r1.b()     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r4 = com.amap.api.col.sl.db.a(r4, r5, r7)     // Catch:{ Throwable -> 0x0102 }
            boolean r1 = com.amap.api.col.sl.dh.a(r6, r4, r3, r1)     // Catch:{ Throwable -> 0x0102 }
        L_0x004a:
            if (r1 != 0) goto L_0x006f
            r1 = 0
            r8.d = r1     // Catch:{ Throwable -> 0x0102 }
            android.content.Context r1 = r8.a     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r3 = r2.getName()     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.db.a(r1, r6, r3)     // Catch:{ Throwable -> 0x0102 }
            android.content.Context r1 = r8.a     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.bz r3 = r8.e     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r1 = com.amap.api.col.sl.db.a(r1, r6, r3)     // Catch:{ Throwable -> 0x0102 }
            boolean r3 = android.text.TextUtils.isEmpty(r1)     // Catch:{ Throwable -> 0x0102 }
            if (r3 != 0) goto L_0x006f
            r8.f = r1     // Catch:{ Throwable -> 0x0102 }
            android.content.Context r1 = r8.a     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.bz r3 = r8.e     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.db.a(r1, r3)     // Catch:{ Throwable -> 0x0102 }
        L_0x006f:
            boolean r1 = r2.exists()     // Catch:{ Throwable -> 0x0102 }
            if (r1 != 0) goto L_0x0078
        L_0x0075:
            return
        L_0x0076:
            r1 = r0
            goto L_0x004a
        L_0x0078:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0102 }
            r1.<init>()     // Catch:{ Throwable -> 0x0102 }
            java.lang.StringBuilder r1 = r1.append(r11)     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r3 = java.io.File.separator     // Catch:{ Throwable -> 0x0102 }
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r3 = r2.getName()     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r3 = com.amap.api.col.sl.db.a(r3)     // Catch:{ Throwable -> 0x0102 }
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r1 = r1.toString()     // Catch:{ Throwable -> 0x0102 }
            java.io.File r3 = new java.io.File     // Catch:{ Throwable -> 0x0102 }
            r3.<init>(r1)     // Catch:{ Throwable -> 0x0102 }
            boolean r1 = r3.exists()     // Catch:{ Throwable -> 0x0102 }
            if (r1 == 0) goto L_0x00c9
            java.lang.String r1 = r2.getName()     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r1 = com.amap.api.col.sl.db.a(r1)     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r5 = r8.f     // Catch:{ Throwable -> 0x0102 }
            android.content.Context r2 = r8.a     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r2 = com.amap.api.col.sl.db.a(r2, r1)     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.bz r3 = r8.e     // Catch:{ Throwable -> 0x0102 }
            boolean r3 = com.amap.api.col.sl.dh.a(r6, r1, r2, r3)     // Catch:{ Throwable -> 0x0102 }
            if (r3 != 0) goto L_0x0100
            com.amap.api.col.sl.df r3 = com.amap.api.col.sl.db.a.a(r6, r1)     // Catch:{ Throwable -> 0x0102 }
            if (r3 == 0) goto L_0x00d2
        L_0x00c0:
            if (r0 != 0) goto L_0x00c9
            android.content.Context r0 = r8.a     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.bz r1 = r8.e     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.db.a(r0, r1)     // Catch:{ Throwable -> 0x0102 }
        L_0x00c9:
            java.util.Date r0 = new java.util.Date
            r0.<init>()
            r0.getTime()
            goto L_0x0075
        L_0x00d2:
            java.lang.String r0 = r8.f     // Catch:{ Throwable -> 0x0102 }
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x0102 }
            if (r0 != 0) goto L_0x0100
            com.amap.api.col.sl.df$a r0 = new com.amap.api.col.sl.df$a     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r2 = com.amap.api.col.sl.bw.a(r2)     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.bz r3 = r8.e     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r3 = r3.a()     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.bz r4 = r8.e     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r4 = r4.b()     // Catch:{ Throwable -> 0x0102 }
            r0.<init>(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r2 = "useod"
            com.amap.api.col.sl.df$a r0 = r0.a(r2)     // Catch:{ Throwable -> 0x0102 }
            com.amap.api.col.sl.df r0 = r0.a()     // Catch:{ Throwable -> 0x0102 }
            java.lang.String r1 = com.amap.api.col.sl.df.b(r1)     // Catch:{ Throwable -> 0x0102 }
            r6.a(r0, r1)     // Catch:{ Throwable -> 0x0102 }
        L_0x0100:
            r0 = 1
            goto L_0x00c0
        L_0x0102:
            r0 = move-exception
            java.lang.String r1 = "dLoader"
            java.lang.String r2 = "verifyD()"
            com.amap.api.col.sl.cj.a(r0, r1, r2)
            goto L_0x00c9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.de.a(android.content.Context, java.lang.String, java.lang.String):void");
    }
}
