package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.util.HashMap;

/* compiled from: ImageCache */
public class ef {
    /* access modifiers changed from: private */
    public static final CompressFormat a = CompressFormat.PNG;
    private hk b;
    private dt<String, Bitmap> c;
    private a d;
    private final Object e = new Object();
    private boolean f = true;
    /* access modifiers changed from: private */
    public HashMap<String, WeakReference<Bitmap>> g;

    /* compiled from: ImageCache */
    public static class a {
        public int a = 5242880;
        public long b = 10485760;
        public File c;
        public CompressFormat d = ef.a;
        public int e = 100;
        public boolean f = true;
        public boolean g = true;
        public boolean h = false;
        public boolean i = true;
        public String j = null;

        public a(Context context, String str) {
            this.j = str;
            this.c = ef.a(context, str, null);
        }

        public a(Context context, String str, String str2) {
            this.j = str;
            this.c = ef.a(context, str, str2);
        }

        public void a(int i2) {
            this.a = i2;
        }

        public void a(long j2) {
            if (j2 <= 0) {
                this.g = false;
            }
            this.b = j2;
        }

        public void a(String str) {
            this.c = new File(str);
        }

        public void a(boolean z) {
            this.f = z;
        }

        public void b(boolean z) {
            this.g = z;
        }

        public void b(String str) {
            this.c = ef.a(p.a, this.j, str);
        }
    }

    private ef(a aVar) {
        b(aVar);
    }

    public static ef a(a aVar) {
        return new ef(aVar);
    }

    private void b(a aVar) {
        this.d = aVar;
        if (this.d.f) {
            if (ej.a()) {
                this.g = new HashMap<>();
            }
            this.c = new dt<String, Bitmap>(this.d.a) {
                /* access modifiers changed from: protected */
                public void a(boolean z, String str, Bitmap bitmap, Bitmap bitmap2) {
                    if (ee.c() && ef.this.g != null && bitmap != null && !bitmap.isRecycled()) {
                        ef.this.g.put(str, new WeakReference(bitmap));
                    }
                }

                /* access modifiers changed from: protected */
                /* renamed from: a */
                public int b(String str, Bitmap bitmap) {
                    int a2 = ef.a(bitmap);
                    if (a2 == 0) {
                        return 1;
                    }
                    return a2;
                }
            };
        }
        if (aVar.h) {
            a();
        }
    }

    public void a() {
        synchronized (this.e) {
            if (this.b == null || this.b.d()) {
                File file = this.d.c;
                if (this.d.g && file != null) {
                    try {
                        if (!file.exists()) {
                            file.mkdirs();
                        } else if (this.d.i) {
                            b(file);
                            file.mkdir();
                        }
                    } catch (Throwable th) {
                    }
                    if (a(file) > this.d.b) {
                        try {
                            this.b = hk.a(file, 1, 1, this.d.b);
                        } catch (Throwable th2) {
                            this.d.c = null;
                        }
                    }
                }
            }
            this.f = false;
            this.e.notifyAll();
        }
    }

    private void b(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                b(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:35:0x005a, code lost:
        if (r0 != null) goto L_0x005c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0070, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0071, code lost:
        r5 = r1;
        r1 = r0;
        r0 = r5;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0059 A[ExcHandler: Throwable (th java.lang.Throwable), Splitter:B:14:0x0020] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0068 A[SYNTHETIC, Splitter:B:42:0x0068] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:25:0x004b=Splitter:B:25:0x004b, B:44:0x006b=Splitter:B:44:0x006b} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.lang.String r7, android.graphics.Bitmap r8) {
        /*
            r6 = this;
            if (r7 == 0) goto L_0x000a
            if (r8 == 0) goto L_0x000a
            boolean r0 = r8.isRecycled()
            if (r0 == 0) goto L_0x000b
        L_0x000a:
            return
        L_0x000b:
            com.amap.api.mapcore.util.dt<java.lang.String, android.graphics.Bitmap> r0 = r6.c
            if (r0 == 0) goto L_0x0014
            com.amap.api.mapcore.util.dt<java.lang.String, android.graphics.Bitmap> r0 = r6.c
            r0.a(r7, r8)
        L_0x0014:
            java.lang.Object r2 = r6.e
            monitor-enter(r2)
            com.amap.api.mapcore.util.hk r0 = r6.b     // Catch:{ all -> 0x004d }
            if (r0 == 0) goto L_0x004b
            java.lang.String r1 = c(r7)     // Catch:{ all -> 0x004d }
            r0 = 0
            com.amap.api.mapcore.util.hk r3 = r6.b     // Catch:{ Throwable -> 0x0059, all -> 0x0062 }
            com.amap.api.mapcore.util.hk$b r3 = r3.a(r1)     // Catch:{ Throwable -> 0x0059, all -> 0x0062 }
            if (r3 != 0) goto L_0x0050
            com.amap.api.mapcore.util.hk r3 = r6.b     // Catch:{ Throwable -> 0x0059, all -> 0x0062 }
            com.amap.api.mapcore.util.hk$a r1 = r3.b(r1)     // Catch:{ Throwable -> 0x0059, all -> 0x0062 }
            if (r1 == 0) goto L_0x0046
            r3 = 0
            java.io.OutputStream r0 = r1.a(r3)     // Catch:{ Throwable -> 0x0059, all -> 0x0062 }
            com.amap.api.mapcore.util.ef$a r3 = r6.d     // Catch:{ Throwable -> 0x0059, all -> 0x0070 }
            android.graphics.Bitmap$CompressFormat r3 = r3.d     // Catch:{ Throwable -> 0x0059, all -> 0x0070 }
            com.amap.api.mapcore.util.ef$a r4 = r6.d     // Catch:{ Throwable -> 0x0059, all -> 0x0070 }
            int r4 = r4.e     // Catch:{ Throwable -> 0x0059, all -> 0x0070 }
            r8.compress(r3, r4, r0)     // Catch:{ Throwable -> 0x0059, all -> 0x0070 }
            r1.a()     // Catch:{ Throwable -> 0x0059, all -> 0x0070 }
            r0.close()     // Catch:{ Throwable -> 0x0059, all -> 0x0070 }
        L_0x0046:
            if (r0 == 0) goto L_0x004b
            r0.close()     // Catch:{ Throwable -> 0x006c }
        L_0x004b:
            monitor-exit(r2)     // Catch:{ all -> 0x004d }
            goto L_0x000a
        L_0x004d:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x004d }
            throw r0
        L_0x0050:
            r1 = 0
            java.io.InputStream r1 = r3.a(r1)     // Catch:{ Throwable -> 0x0059, all -> 0x0062 }
            r1.close()     // Catch:{ Throwable -> 0x0059, all -> 0x0062 }
            goto L_0x0046
        L_0x0059:
            r1 = move-exception
            if (r0 == 0) goto L_0x004b
            r0.close()     // Catch:{ Throwable -> 0x0060 }
            goto L_0x004b
        L_0x0060:
            r0 = move-exception
            goto L_0x004b
        L_0x0062:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L_0x0066:
            if (r1 == 0) goto L_0x006b
            r1.close()     // Catch:{ Throwable -> 0x006e }
        L_0x006b:
            throw r0     // Catch:{ all -> 0x004d }
        L_0x006c:
            r0 = move-exception
            goto L_0x004b
        L_0x006e:
            r1 = move-exception
            goto L_0x006b
        L_0x0070:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L_0x0066
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ef.a(java.lang.String, android.graphics.Bitmap):void");
    }

    public Bitmap a(String str) {
        Bitmap bitmap;
        if (ee.c() && this.g != null) {
            WeakReference weakReference = (WeakReference) this.g.get(str);
            if (weakReference != null) {
                bitmap = (Bitmap) weakReference.get();
                if (bitmap == null || bitmap.isRecycled()) {
                    bitmap = null;
                }
                this.g.remove(str);
                if (bitmap == null && this.c != null) {
                    bitmap = (Bitmap) this.c.a(str);
                }
                if (bitmap == null && !bitmap.isRecycled()) {
                    return bitmap;
                }
            }
        }
        bitmap = null;
        bitmap = (Bitmap) this.c.a(str);
        return bitmap == null ? null : null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x004e A[SYNTHETIC, Splitter:B:34:0x004e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Bitmap b(java.lang.String r8) {
        /*
            r7 = this;
            r3 = 0
            java.lang.String r1 = c(r8)
            java.lang.Object r4 = r7.e
            monitor-enter(r4)
        L_0x0008:
            boolean r2 = r7.f     // Catch:{ all -> 0x0052 }
            if (r2 == 0) goto L_0x0014
            java.lang.Object r2 = r7.e     // Catch:{ Throwable -> 0x0012 }
            r2.wait()     // Catch:{ Throwable -> 0x0012 }
            goto L_0x0008
        L_0x0012:
            r2 = move-exception
            goto L_0x0008
        L_0x0014:
            com.amap.api.mapcore.util.hk r2 = r7.b     // Catch:{ all -> 0x0052 }
            if (r2 == 0) goto L_0x003e
            com.amap.api.mapcore.util.hk r2 = r7.b     // Catch:{ Throwable -> 0x0040, all -> 0x004a }
            com.amap.api.mapcore.util.hk$b r1 = r2.a(r1)     // Catch:{ Throwable -> 0x0040, all -> 0x004a }
            if (r1 == 0) goto L_0x005d
            r2 = 0
            java.io.InputStream r2 = r1.a(r2)     // Catch:{ Throwable -> 0x0040, all -> 0x004a }
            if (r2 == 0) goto L_0x0039
            r0 = r2
            java.io.FileInputStream r0 = (java.io.FileInputStream) r0     // Catch:{ Throwable -> 0x005b, all -> 0x0059 }
            r1 = r0
            java.io.FileDescriptor r1 = r1.getFD()     // Catch:{ Throwable -> 0x005b, all -> 0x0059 }
            r5 = 2147483647(0x7fffffff, float:NaN)
            r6 = 2147483647(0x7fffffff, float:NaN)
            android.graphics.Bitmap r3 = com.amap.api.mapcore.util.eh.a(r1, r5, r6, r7)     // Catch:{ Throwable -> 0x005b, all -> 0x0059 }
        L_0x0039:
            if (r2 == 0) goto L_0x003e
            r2.close()     // Catch:{ Throwable -> 0x0055 }
        L_0x003e:
            monitor-exit(r4)     // Catch:{ all -> 0x0052 }
            return r3
        L_0x0040:
            r1 = move-exception
            r2 = r3
        L_0x0042:
            if (r2 == 0) goto L_0x003e
            r2.close()     // Catch:{ Throwable -> 0x0048 }
            goto L_0x003e
        L_0x0048:
            r1 = move-exception
            goto L_0x003e
        L_0x004a:
            r1 = move-exception
            r2 = r3
        L_0x004c:
            if (r2 == 0) goto L_0x0051
            r2.close()     // Catch:{ Throwable -> 0x0057 }
        L_0x0051:
            throw r1     // Catch:{ all -> 0x0052 }
        L_0x0052:
            r1 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0052 }
            throw r1
        L_0x0055:
            r1 = move-exception
            goto L_0x003e
        L_0x0057:
            r2 = move-exception
            goto L_0x0051
        L_0x0059:
            r1 = move-exception
            goto L_0x004c
        L_0x005b:
            r1 = move-exception
            goto L_0x0042
        L_0x005d:
            r2 = r3
            goto L_0x0039
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ef.b(java.lang.String):android.graphics.Bitmap");
    }

    public void b() {
        if (ee.c() && this.g != null) {
            this.g.clear();
        }
        if (this.c != null) {
            this.c.a();
        }
        synchronized (this.e) {
            this.f = true;
            if (this.b != null && !this.b.d()) {
                try {
                    this.b.close();
                    b(a(p.a, this.d.j, null));
                } catch (Throwable th) {
                }
                this.b = null;
                a();
            }
        }
    }

    public void c() {
        synchronized (this.e) {
            if (this.b != null) {
                try {
                    this.b.e();
                } catch (Throwable th) {
                }
            }
        }
    }

    public void a(boolean z) {
        if (ee.c() && this.g != null) {
            this.g.clear();
        }
        if (this.c != null) {
            this.c.a();
        }
        synchronized (this.e) {
            if (this.b != null) {
                try {
                    if (!this.b.d()) {
                        if (z) {
                            this.b.f();
                        }
                        this.b = null;
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    public static File a(Context context, String str, String str2) {
        String path;
        File a2 = a(context);
        if (("mounted".equals(Environment.getExternalStorageState()) || !d()) && a2 != null) {
            path = a2.getPath();
        } else {
            path = context.getCacheDir().getPath();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(path).append(File.separator).append(str);
        if (!TextUtils.isEmpty(str2)) {
            sb.append(File.separator).append(str2);
        }
        return new File(sb.toString());
    }

    public static String c(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes("utf-8"));
            return a(instance.digest());
        } catch (Throwable th) {
            return String.valueOf(str.hashCode());
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static int a(Bitmap bitmap) {
        if (ee.d()) {
            return bitmap.getByteCount();
        }
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    public static boolean d() {
        if (ee.b()) {
            return Environment.isExternalStorageRemovable();
        }
        return true;
    }

    public static File a(Context context) {
        try {
            if (ee.a()) {
                return context.getExternalCacheDir();
            }
            return new File(Environment.getExternalStorageDirectory().getPath() + ("/Android/data/" + context.getPackageName() + "/cache/"));
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public static long a(File file) {
        if (ee.b()) {
            return file.getUsableSpace();
        }
        StatFs statFs = new StatFs(file.getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }
}
