package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.mapcore.util.hd.a;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import dalvik.system.DexFile;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.util.Date;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/* compiled from: DynamicLoader */
class hg extends hb {
    private PublicKey g = null;

    hg(Context context, fx fxVar, boolean z) throws Exception {
        super(context, fxVar, z);
        String b = hd.b(context, fxVar.a(), fxVar.b());
        String a = hd.a(context);
        b(b, a);
        File file = new File(b);
        if (z) {
            a(b, a + File.separator + hd.a(file.getName()));
            b(context, b, a);
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x001f, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:?, code lost:
        com.amap.api.mapcore.util.hj.a(r0, "dLoader", "findCl");
        r0 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0037, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0038, code lost:
        com.amap.api.mapcore.util.hj.a(r0, "dLoader", "findCl");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0044, code lost:
        throw new java.lang.ClassNotFoundException(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x000a, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x000b, code lost:
        throw r0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:5:0x000a A[ExcHandler: ClassNotFoundException (r0v2 'e' java.lang.ClassNotFoundException A[CUSTOM_DECLARE]), Splitter:B:0:0x0000] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Class<?> findClass(java.lang.String r6) throws java.lang.ClassNotFoundException {
        /*
            r5 = this;
            dalvik.system.DexFile r0 = r5.c     // Catch:{ ClassNotFoundException -> 0x000a, Throwable -> 0x0037 }
            if (r0 != 0) goto L_0x000c
            java.lang.ClassNotFoundException r0 = new java.lang.ClassNotFoundException     // Catch:{ ClassNotFoundException -> 0x000a, Throwable -> 0x0037 }
            r0.<init>(r6)     // Catch:{ ClassNotFoundException -> 0x000a, Throwable -> 0x0037 }
            throw r0     // Catch:{ ClassNotFoundException -> 0x000a, Throwable -> 0x0037 }
        L_0x000a:
            r0 = move-exception
            throw r0
        L_0x000c:
            r1 = 0
            java.util.Map r2 = r5.b     // Catch:{ Throwable -> 0x001f, ClassNotFoundException -> 0x000a }
            monitor-enter(r2)     // Catch:{ Throwable -> 0x001f, ClassNotFoundException -> 0x000a }
            java.util.Map r0 = r5.b     // Catch:{ all -> 0x001c }
            java.lang.Object r0 = r0.get(r6)     // Catch:{ all -> 0x001c }
            java.lang.Class r0 = (java.lang.Class) r0     // Catch:{ all -> 0x001c }
            monitor-exit(r2)     // Catch:{ all -> 0x005b }
        L_0x0019:
            if (r0 == 0) goto L_0x0029
        L_0x001b:
            return r0
        L_0x001c:
            r0 = move-exception
        L_0x001d:
            monitor-exit(r2)     // Catch:{ all -> 0x001c }
            throw r0     // Catch:{ Throwable -> 0x001f, ClassNotFoundException -> 0x000a }
        L_0x001f:
            r0 = move-exception
            java.lang.String r2 = "dLoader"
            java.lang.String r3 = "findCl"
            com.amap.api.mapcore.util.hj.a(r0, r2, r3)     // Catch:{ ClassNotFoundException -> 0x000a, Throwable -> 0x0037 }
            r0 = r1
            goto L_0x0019
        L_0x0029:
            dalvik.system.DexFile r0 = r5.c     // Catch:{ ClassNotFoundException -> 0x000a, Throwable -> 0x0037 }
            java.lang.Class r0 = r0.loadClass(r6, r5)     // Catch:{ ClassNotFoundException -> 0x000a, Throwable -> 0x0037 }
            if (r0 != 0) goto L_0x0045
            java.lang.ClassNotFoundException r0 = new java.lang.ClassNotFoundException     // Catch:{ ClassNotFoundException -> 0x000a, Throwable -> 0x0037 }
            r0.<init>(r6)     // Catch:{ ClassNotFoundException -> 0x000a, Throwable -> 0x0037 }
            throw r0     // Catch:{ ClassNotFoundException -> 0x000a, Throwable -> 0x0037 }
        L_0x0037:
            r0 = move-exception
            java.lang.String r1 = "dLoader"
            java.lang.String r2 = "findCl"
            com.amap.api.mapcore.util.hj.a(r0, r1, r2)
            java.lang.ClassNotFoundException r0 = new java.lang.ClassNotFoundException
            r0.<init>(r6)
            throw r0
        L_0x0045:
            java.util.Map r2 = r5.b     // Catch:{ Throwable -> 0x0052, ClassNotFoundException -> 0x000a }
            monitor-enter(r2)     // Catch:{ Throwable -> 0x0052, ClassNotFoundException -> 0x000a }
            java.util.Map r1 = r5.b     // Catch:{ all -> 0x004f }
            r1.put(r6, r0)     // Catch:{ all -> 0x004f }
            monitor-exit(r2)     // Catch:{ all -> 0x004f }
            goto L_0x001b
        L_0x004f:
            r1 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x004f }
            throw r1     // Catch:{ Throwable -> 0x0052, ClassNotFoundException -> 0x000a }
        L_0x0052:
            r1 = move-exception
            java.lang.String r2 = "dLoader"
            java.lang.String r3 = "findCl"
            com.amap.api.mapcore.util.hj.a(r1, r2, r3)     // Catch:{ ClassNotFoundException -> 0x000a, Throwable -> 0x0037 }
            goto L_0x001b
        L_0x005b:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L_0x001d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.hg.findClass(java.lang.String):java.lang.Class");
    }

    /* access modifiers changed from: 0000 */
    public void a(String str, String str2) throws Exception {
        try {
            if (this.c == null) {
                b();
                this.c = DexFile.loadDex(str, str2, 0);
            }
        } catch (Throwable th) {
            hj.a(th, "dLoader", "loadFile");
            throw new Exception("load file fail");
        }
    }

    private void c() {
        if (this.g == null) {
            this.g = hj.a();
        }
    }

    private void a(JarFile jarFile, JarEntry jarEntry) throws IOException {
        try {
            InputStream inputStream = jarFile.getInputStream(jarEntry);
            do {
            } while (inputStream.read(new byte[8192]) > 0);
            try {
                hj.a((Closeable) inputStream);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        } catch (Throwable th2) {
            ThrowableExtension.printStackTrace(th2);
        }
    }

    private boolean a(File file, Certificate[] certificateArr) {
        try {
            if (certificateArr.length > 0) {
                int length = certificateArr.length - 1;
                if (length >= 0) {
                    certificateArr[length].verify(this.g);
                    return true;
                }
            }
        } catch (Exception e) {
            hj.a(e, "DyLoader", "check");
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x004a A[SYNTHETIC, Splitter:B:36:0x004a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(java.io.File r6) {
        /*
            r5 = this;
            r0 = 0
            r3 = 0
            r5.c()     // Catch:{ Throwable -> 0x0035, all -> 0x0046 }
            java.util.jar.JarFile r2 = new java.util.jar.JarFile     // Catch:{ Throwable -> 0x0035, all -> 0x0046 }
            r2.<init>(r6)     // Catch:{ Throwable -> 0x0035, all -> 0x0046 }
            java.lang.String r1 = "classes.dex"
            java.util.jar.JarEntry r1 = r2.getJarEntry(r1)     // Catch:{ Throwable -> 0x0054 }
            if (r1 != 0) goto L_0x0018
            if (r2 == 0) goto L_0x0017
            r2.close()     // Catch:{ Throwable -> 0x004e }
        L_0x0017:
            return r0
        L_0x0018:
            r5.a(r2, r1)     // Catch:{ Throwable -> 0x0054 }
            java.security.cert.Certificate[] r1 = r1.getCertificates()     // Catch:{ Throwable -> 0x0054 }
            if (r1 != 0) goto L_0x0029
            if (r2 == 0) goto L_0x0017
            r2.close()     // Catch:{ Throwable -> 0x0027 }
            goto L_0x0017
        L_0x0027:
            r1 = move-exception
            goto L_0x0017
        L_0x0029:
            boolean r0 = r5.a(r6, r1)     // Catch:{ Throwable -> 0x0054 }
            if (r2 == 0) goto L_0x0017
            r2.close()     // Catch:{ Throwable -> 0x0033 }
            goto L_0x0017
        L_0x0033:
            r1 = move-exception
            goto L_0x0017
        L_0x0035:
            r1 = move-exception
            r2 = r3
        L_0x0037:
            java.lang.String r3 = "DyLoader"
            java.lang.String r4 = "verify"
            com.amap.api.mapcore.util.hj.a(r1, r3, r4)     // Catch:{ all -> 0x0052 }
            if (r2 == 0) goto L_0x0017
            r2.close()     // Catch:{ Throwable -> 0x0044 }
            goto L_0x0017
        L_0x0044:
            r1 = move-exception
            goto L_0x0017
        L_0x0046:
            r0 = move-exception
            r2 = r3
        L_0x0048:
            if (r2 == 0) goto L_0x004d
            r2.close()     // Catch:{ Throwable -> 0x0050 }
        L_0x004d:
            throw r0
        L_0x004e:
            r1 = move-exception
            goto L_0x0017
        L_0x0050:
            r1 = move-exception
            goto L_0x004d
        L_0x0052:
            r0 = move-exception
            goto L_0x0048
        L_0x0054:
            r1 = move-exception
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.hg.a(java.io.File):boolean");
    }

    private boolean a(gl glVar, fx fxVar, String str) {
        if (a(new File(str))) {
            return hj.a(glVar, hd.a(this.a, fxVar.a(), fxVar.b()), str, fxVar);
        }
        return false;
    }

    private boolean a(gl glVar, String str, String str2) {
        String a = hd.a(this.a, str);
        if (hj.a(glVar, str, a, this.e)) {
            return true;
        }
        if (a.a(glVar, str) != null) {
            return false;
        }
        if (!TextUtils.isEmpty(this.f)) {
            a.a(glVar, new hh.a(str, fu.a(a), this.e.a(), this.e.b(), str2).a("useod").a(), hh.b(str));
        }
        return true;
    }

    private void b(String str, String str2) throws Exception {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            throw new Exception("dexPath or dexOutputDir is null.");
        }
    }

    private void b(final Context context, final String str, final String str2) {
        gf.c().submit(new Runnable() {
            public void run() {
                try {
                    hg.this.a(context, str, str2);
                } catch (Throwable th) {
                    hj.a(th, "dLoader", "run()");
                }
            }
        });
    }

    private void a(gl glVar, File file) {
        hh a = a.a(glVar, file.getName());
        if (a != null) {
            this.f = a.e();
        }
    }

    private void b(gl glVar, File file) {
        this.d = false;
        hd.a(this.a, glVar, file.getName());
        String a = hd.a(this.a, glVar, this.e);
        if (!TextUtils.isEmpty(a)) {
            this.f = a;
            hd.a(this.a, this.e);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(Context context, String str, String str2) throws Exception {
        new Date().getTime();
        try {
            gl glVar = new gl(context, hf.a());
            File file = new File(str);
            a(glVar, file);
            if (!a(glVar, this.e, file.getAbsolutePath())) {
                b(glVar, file);
            }
            if (file.exists()) {
                if (new File(str2 + File.separator + hd.a(file.getName())).exists() && !a(glVar, hd.a(file.getName()), this.f)) {
                    hd.a(this.a, this.e);
                }
                new Date().getTime();
            }
        } catch (Throwable th) {
            hj.a(th, "dLoader", "verifyD()");
        }
    }
}
