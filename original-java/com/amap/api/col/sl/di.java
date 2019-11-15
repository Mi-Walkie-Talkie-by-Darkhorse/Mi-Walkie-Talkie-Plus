package com.amap.api.col.sl;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.jboss.netty.handler.codec.http.multipart.DiskFileUpload;

/* compiled from: DiskLruCache */
public final class di implements Closeable {
    static final Pattern a = Pattern.compile("[a-z0-9_-]{1,120}");
    static ThreadPoolExecutor b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), q);
    private static final ThreadFactory q = new ThreadFactory() {
        private final AtomicInteger a = new AtomicInteger(1);

        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "disklrucache#" + this.a.getAndIncrement());
        }
    };
    /* access modifiers changed from: private */
    public static final OutputStream s = new OutputStream() {
        public final void write(int i) throws IOException {
        }
    };
    /* access modifiers changed from: private */
    public final File c;
    private final File d;
    private final File e;
    private final File f;
    private final int g;
    private long h;
    /* access modifiers changed from: private */
    public final int i;
    private long j = 0;
    /* access modifiers changed from: private */
    public Writer k;
    private int l = 1000;
    private final LinkedHashMap<String, c> m = new LinkedHashMap<>(0, 0.75f, true);
    /* access modifiers changed from: private */
    public int n;
    private dj o;
    private long p = 0;
    private final Callable<Void> r = new Callable<Void>() {
        /* access modifiers changed from: private */
        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (di.this) {
                if (di.this.k != null) {
                    di.this.l();
                    if (di.this.j()) {
                        di.this.i();
                        di.this.n = 0;
                    }
                }
            }
            return null;
        }
    };

    /* compiled from: DiskLruCache */
    public final class a {
        /* access modifiers changed from: private */
        public final c b;
        /* access modifiers changed from: private */
        public final boolean[] c;
        /* access modifiers changed from: private */
        public boolean d;
        private boolean e;

        /* renamed from: com.amap.api.col.sl.di$a$a reason: collision with other inner class name */
        /* compiled from: DiskLruCache */
        private class C0004a extends FilterOutputStream {
            /* synthetic */ C0004a(a aVar, OutputStream outputStream, byte b) {
                this(outputStream);
            }

            private C0004a(OutputStream outputStream) {
                super(outputStream);
            }

            public final void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    a.this.d = true;
                }
            }

            public final void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    a.this.d = true;
                }
            }

            public final void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    a.this.d = true;
                }
            }

            public final void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    a.this.d = true;
                }
            }
        }

        /* synthetic */ a(di diVar, c cVar, byte b2) {
            this(cVar);
        }

        private a(c cVar) {
            this.b = cVar;
            this.c = cVar.d ? null : new boolean[di.this.i];
        }

        public final OutputStream a() throws IOException {
            OutputStream e2;
            FileOutputStream fileOutputStream;
            if (di.this.i <= 0) {
                throw new IllegalArgumentException("Expected index 0 to be greater than 0 and less than the maximum value count of " + di.this.i);
            }
            synchronized (di.this) {
                if (this.b.e != this) {
                    throw new IllegalStateException();
                }
                if (!this.b.d) {
                    this.c[0] = true;
                }
                File b2 = this.b.b(0);
                try {
                    fileOutputStream = new FileOutputStream(b2);
                } catch (FileNotFoundException e3) {
                    di.this.c.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(b2);
                    } catch (FileNotFoundException e4) {
                        e2 = di.s;
                    }
                }
                e2 = new C0004a(this, fileOutputStream, 0);
            }
            return e2;
        }

        public final void b() throws IOException {
            if (this.d) {
                di.this.a(this, false);
                di.this.c(this.b.b);
            } else {
                di.this.a(this, true);
            }
            this.e = true;
        }

        public final void c() throws IOException {
            di.this.a(this, false);
        }
    }

    /* compiled from: DiskLruCache */
    public final class b implements Closeable {
        private final String b;
        private final long c;
        private final InputStream[] d;
        private final long[] e;

        /* synthetic */ b(di diVar, String str, long j, InputStream[] inputStreamArr, long[] jArr, byte b2) {
            this(str, j, inputStreamArr, jArr);
        }

        private b(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.b = str;
            this.c = j;
            this.d = inputStreamArr;
            this.e = jArr;
        }

        public final InputStream a() {
            return this.d[0];
        }

        public final void close() {
            for (InputStream a2 : this.d) {
                dl.a((Closeable) a2);
            }
        }
    }

    /* compiled from: DiskLruCache */
    private final class c {
        /* access modifiers changed from: private */
        public final String b;
        /* access modifiers changed from: private */
        public final long[] c;
        /* access modifiers changed from: private */
        public boolean d;
        /* access modifiers changed from: private */
        public a e;
        /* access modifiers changed from: private */
        public long f;

        /* synthetic */ c(di diVar, String str, byte b2) {
            this(str);
        }

        static /* synthetic */ void a(c cVar, String[] strArr) throws IOException {
            if (strArr.length != di.this.i) {
                throw a(strArr);
            }
            int i = 0;
            while (i < strArr.length) {
                try {
                    cVar.c[i] = Long.parseLong(strArr[i]);
                    i++;
                } catch (NumberFormatException e2) {
                    throw a(strArr);
                }
            }
        }

        private c(String str) {
            this.b = str;
            this.c = new long[di.this.i];
        }

        public final String a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long append : this.c) {
                sb.append(' ').append(append);
            }
            return sb.toString();
        }

        private static IOException a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public final File a(int i) {
            return new File(di.this.c, this.b + "." + i);
        }

        public final File b(int i) {
            return new File(di.this.c, this.b + "." + i + DiskFileUpload.postfix);
        }
    }

    public final void a(int i2) {
        if (i2 < 10) {
            i2 = 10;
        } else if (i2 > 10000) {
            i2 = 10000;
        }
        this.l = i2;
    }

    public static void a() {
        if (b != null && !b.isShutdown()) {
            b.shutdown();
        }
    }

    private static ThreadPoolExecutor f() {
        try {
            if (b == null || b.isShutdown()) {
                b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(256), q);
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return b;
    }

    private di(File file, long j2) {
        this.c = file;
        this.g = 1;
        this.d = new File(file, "journal");
        this.e = new File(file, "journal.tmp");
        this.f = new File(file, "journal.bkp");
        this.i = 1;
        this.h = j2;
    }

    public static di a(File file, long j2) throws IOException {
        if (j2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                a(file2, file3, false);
            }
        }
        di diVar = new di(file, j2);
        if (diVar.d.exists()) {
            try {
                diVar.g();
                diVar.h();
                diVar.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diVar.d, true), dl.a));
                return diVar;
            } catch (Throwable th) {
                diVar.d();
            }
        }
        file.mkdirs();
        di diVar2 = new di(file, j2);
        diVar2.i();
        return diVar2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x00f5 A[Catch:{ EOFException -> 0x00b5, all -> 0x008e }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void g() throws java.io.IOException {
        /*
            r10 = this;
            r9 = 5
            r0 = 0
            r8 = -1
            com.amap.api.col.sl.dk r3 = new com.amap.api.col.sl.dk
            java.io.FileInputStream r1 = new java.io.FileInputStream
            java.io.File r2 = r10.d
            r1.<init>(r2)
            java.nio.charset.Charset r2 = com.amap.api.col.sl.dl.a
            r3.<init>(r1, r2)
            java.lang.String r1 = r3.a()     // Catch:{ all -> 0x008e }
            java.lang.String r2 = r3.a()     // Catch:{ all -> 0x008e }
            java.lang.String r4 = r3.a()     // Catch:{ all -> 0x008e }
            java.lang.String r5 = r3.a()     // Catch:{ all -> 0x008e }
            java.lang.String r6 = r3.a()     // Catch:{ all -> 0x008e }
            java.lang.String r7 = "libcore.io.DiskLruCache"
            boolean r7 = r7.equals(r1)     // Catch:{ all -> 0x008e }
            if (r7 == 0) goto L_0x0055
            java.lang.String r7 = "1"
            boolean r7 = r7.equals(r2)     // Catch:{ all -> 0x008e }
            if (r7 == 0) goto L_0x0055
            int r7 = r10.g     // Catch:{ all -> 0x008e }
            java.lang.String r7 = java.lang.Integer.toString(r7)     // Catch:{ all -> 0x008e }
            boolean r4 = r7.equals(r4)     // Catch:{ all -> 0x008e }
            if (r4 == 0) goto L_0x0055
            int r4 = r10.i     // Catch:{ all -> 0x008e }
            java.lang.String r4 = java.lang.Integer.toString(r4)     // Catch:{ all -> 0x008e }
            boolean r4 = r4.equals(r5)     // Catch:{ all -> 0x008e }
            if (r4 == 0) goto L_0x0055
            java.lang.String r4 = ""
            boolean r4 = r4.equals(r6)     // Catch:{ all -> 0x008e }
            if (r4 != 0) goto L_0x0093
        L_0x0055:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x008e }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x008e }
            java.lang.String r7 = "unexpected journal header: ["
            r4.<init>(r7)     // Catch:{ all -> 0x008e }
            java.lang.StringBuilder r1 = r4.append(r1)     // Catch:{ all -> 0x008e }
            java.lang.String r4 = ", "
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ all -> 0x008e }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x008e }
            java.lang.String r2 = ", "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x008e }
            java.lang.StringBuilder r1 = r1.append(r5)     // Catch:{ all -> 0x008e }
            java.lang.String r2 = ", "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x008e }
            java.lang.StringBuilder r1 = r1.append(r6)     // Catch:{ all -> 0x008e }
            java.lang.String r2 = "]"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x008e }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x008e }
            r0.<init>(r1)     // Catch:{ all -> 0x008e }
            throw r0     // Catch:{ all -> 0x008e }
        L_0x008e:
            r0 = move-exception
            com.amap.api.col.sl.dl.a(r3)
            throw r0
        L_0x0093:
            r1 = r0
        L_0x0094:
            java.lang.String r4 = r3.a()     // Catch:{ EOFException -> 0x00b5 }
            r0 = 32
            int r5 = r4.indexOf(r0)     // Catch:{ EOFException -> 0x00b5 }
            if (r5 != r8) goto L_0x00c4
            java.io.IOException r0 = new java.io.IOException     // Catch:{ EOFException -> 0x00b5 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ EOFException -> 0x00b5 }
            java.lang.String r5 = "unexpected journal line: "
            r2.<init>(r5)     // Catch:{ EOFException -> 0x00b5 }
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ EOFException -> 0x00b5 }
            java.lang.String r2 = r2.toString()     // Catch:{ EOFException -> 0x00b5 }
            r0.<init>(r2)     // Catch:{ EOFException -> 0x00b5 }
            throw r0     // Catch:{ EOFException -> 0x00b5 }
        L_0x00b5:
            r0 = move-exception
            java.util.LinkedHashMap<java.lang.String, com.amap.api.col.sl.di$c> r0 = r10.m     // Catch:{ all -> 0x008e }
            int r0 = r0.size()     // Catch:{ all -> 0x008e }
            int r0 = r1 - r0
            r10.n = r0     // Catch:{ all -> 0x008e }
            com.amap.api.col.sl.dl.a(r3)
            return
        L_0x00c4:
            int r0 = r5 + 1
            r2 = 32
            int r6 = r4.indexOf(r2, r0)     // Catch:{ EOFException -> 0x00b5 }
            if (r6 != r8) goto L_0x00e6
            java.lang.String r0 = r4.substring(r0)     // Catch:{ EOFException -> 0x00b5 }
            r2 = 6
            if (r5 != r2) goto L_0x015b
            java.lang.String r2 = "REMOVE"
            boolean r2 = r4.startsWith(r2)     // Catch:{ EOFException -> 0x00b5 }
            if (r2 == 0) goto L_0x015b
            java.util.LinkedHashMap<java.lang.String, com.amap.api.col.sl.di$c> r2 = r10.m     // Catch:{ EOFException -> 0x00b5 }
            r2.remove(r0)     // Catch:{ EOFException -> 0x00b5 }
        L_0x00e2:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x0094
        L_0x00e6:
            java.lang.String r0 = r4.substring(r0, r6)     // Catch:{ EOFException -> 0x00b5 }
            r2 = r0
        L_0x00eb:
            java.util.LinkedHashMap<java.lang.String, com.amap.api.col.sl.di$c> r0 = r10.m     // Catch:{ EOFException -> 0x00b5 }
            java.lang.Object r0 = r0.get(r2)     // Catch:{ EOFException -> 0x00b5 }
            com.amap.api.col.sl.di$c r0 = (com.amap.api.col.sl.di.c) r0     // Catch:{ EOFException -> 0x00b5 }
            if (r0 != 0) goto L_0x0100
            com.amap.api.col.sl.di$c r0 = new com.amap.api.col.sl.di$c     // Catch:{ EOFException -> 0x00b5 }
            r7 = 0
            r0.<init>(r10, r2, r7)     // Catch:{ EOFException -> 0x00b5 }
            java.util.LinkedHashMap<java.lang.String, com.amap.api.col.sl.di$c> r7 = r10.m     // Catch:{ EOFException -> 0x00b5 }
            r7.put(r2, r0)     // Catch:{ EOFException -> 0x00b5 }
        L_0x0100:
            if (r6 == r8) goto L_0x0123
            if (r5 != r9) goto L_0x0123
            java.lang.String r2 = "CLEAN"
            boolean r2 = r4.startsWith(r2)     // Catch:{ EOFException -> 0x00b5 }
            if (r2 == 0) goto L_0x0123
            int r2 = r6 + 1
            java.lang.String r2 = r4.substring(r2)     // Catch:{ EOFException -> 0x00b5 }
            java.lang.String r4 = " "
            java.lang.String[] r2 = r2.split(r4)     // Catch:{ EOFException -> 0x00b5 }
            r0.d = true     // Catch:{ EOFException -> 0x00b5 }
            r4 = 0
            r0.e = r4     // Catch:{ EOFException -> 0x00b5 }
            com.amap.api.col.sl.di.c.a(r0, r2)     // Catch:{ EOFException -> 0x00b5 }
            goto L_0x00e2
        L_0x0123:
            if (r6 != r8) goto L_0x0139
            if (r5 != r9) goto L_0x0139
            java.lang.String r2 = "DIRTY"
            boolean r2 = r4.startsWith(r2)     // Catch:{ EOFException -> 0x00b5 }
            if (r2 == 0) goto L_0x0139
            com.amap.api.col.sl.di$a r2 = new com.amap.api.col.sl.di$a     // Catch:{ EOFException -> 0x00b5 }
            r4 = 0
            r2.<init>(r10, r0, r4)     // Catch:{ EOFException -> 0x00b5 }
            r0.e = r2     // Catch:{ EOFException -> 0x00b5 }
            goto L_0x00e2
        L_0x0139:
            if (r6 != r8) goto L_0x0146
            r0 = 4
            if (r5 != r0) goto L_0x0146
            java.lang.String r0 = "READ"
            boolean r0 = r4.startsWith(r0)     // Catch:{ EOFException -> 0x00b5 }
            if (r0 != 0) goto L_0x00e2
        L_0x0146:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ EOFException -> 0x00b5 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ EOFException -> 0x00b5 }
            java.lang.String r5 = "unexpected journal line: "
            r2.<init>(r5)     // Catch:{ EOFException -> 0x00b5 }
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ EOFException -> 0x00b5 }
            java.lang.String r2 = r2.toString()     // Catch:{ EOFException -> 0x00b5 }
            r0.<init>(r2)     // Catch:{ EOFException -> 0x00b5 }
            throw r0     // Catch:{ EOFException -> 0x00b5 }
        L_0x015b:
            r2 = r0
            goto L_0x00eb
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.di.g():void");
    }

    private void h() throws IOException {
        a(this.e);
        Iterator it = this.m.values().iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.e == null) {
                for (int i2 = 0; i2 < this.i; i2++) {
                    this.j += cVar.c[i2];
                }
            } else {
                cVar.e = null;
                for (int i3 = 0; i3 < this.i; i3++) {
                    a(cVar.a(i3));
                    a(cVar.b(i3));
                }
                it.remove();
            }
        }
    }

    /* access modifiers changed from: private */
    public synchronized void i() throws IOException {
        if (this.k != null) {
            this.k.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), dl.a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.g));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.i));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (c cVar : this.m.values()) {
                if (cVar.e != null) {
                    bufferedWriter.write("DIRTY " + cVar.b + 10);
                } else {
                    bufferedWriter.write("CLEAN " + cVar.b + cVar.a() + 10);
                }
            }
            bufferedWriter.close();
            if (this.d.exists()) {
                a(this.d, this.f, true);
            }
            a(this.e, this.d, false);
            this.f.delete();
            this.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d, true), dl.a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    private static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public final synchronized b a(String str) throws IOException {
        b bVar = null;
        synchronized (this) {
            k();
            e(str);
            c cVar = (c) this.m.get(str);
            if (cVar != null) {
                if (cVar.d) {
                    InputStream[] inputStreamArr = new InputStream[this.i];
                    int i2 = 0;
                    while (i2 < this.i) {
                        try {
                            inputStreamArr[i2] = new FileInputStream(cVar.a(i2));
                            i2++;
                        } catch (FileNotFoundException e2) {
                            int i3 = 0;
                            while (i3 < this.i && inputStreamArr[i3] != null) {
                                dl.a((Closeable) inputStreamArr[i3]);
                                i3++;
                            }
                        }
                    }
                    this.n++;
                    this.k.append("READ " + str + 10);
                    if (j()) {
                        f().submit(this.r);
                    }
                    bVar = new b(this, str, cVar.f, inputStreamArr, cVar.c, 0);
                }
            }
        }
        return bVar;
    }

    public final a b(String str) throws IOException {
        return d(str);
    }

    private synchronized a d(String str) throws IOException {
        c cVar;
        a aVar;
        k();
        e(str);
        c cVar2 = (c) this.m.get(str);
        if (-1 == -1 || (cVar2 != null && cVar2.f == -1)) {
            if (cVar2 == null) {
                c cVar3 = new c(this, str, 0);
                this.m.put(str, cVar3);
                cVar = cVar3;
            } else if (cVar2.e != null) {
                aVar = null;
            } else {
                cVar = cVar2;
            }
            aVar = new a(this, cVar, 0);
            cVar.e = aVar;
            this.k.write("DIRTY " + str + 10);
            this.k.flush();
        } else {
            aVar = null;
        }
        return aVar;
    }

    public final File b() {
        return this.c;
    }

    /* access modifiers changed from: private */
    public synchronized void a(a aVar, boolean z) throws IOException {
        synchronized (this) {
            c a2 = aVar.b;
            if (a2.e != aVar) {
                throw new IllegalStateException();
            }
            if (z) {
                if (!a2.d) {
                    int i2 = 0;
                    while (true) {
                        if (i2 < this.i) {
                            if (!aVar.c[i2]) {
                                aVar.c();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!a2.b(i2).exists()) {
                                aVar.c();
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
            }
            for (int i3 = 0; i3 < this.i; i3++) {
                File b2 = a2.b(i3);
                if (!z) {
                    a(b2);
                } else if (b2.exists()) {
                    File a3 = a2.a(i3);
                    b2.renameTo(a3);
                    long j2 = a2.c[i3];
                    long length = a3.length();
                    a2.c[i3] = length;
                    this.j = (this.j - j2) + length;
                }
            }
            this.n++;
            a2.e = null;
            if (a2.d || z) {
                a2.d = true;
                this.k.write("CLEAN " + a2.b + a2.a() + 10);
                if (z) {
                    long j3 = this.p;
                    this.p = 1 + j3;
                    a2.f = j3;
                }
            } else {
                this.m.remove(a2.b);
                this.k.write("REMOVE " + a2.b + 10);
            }
            this.k.flush();
            if (this.j > this.h || j()) {
                f().submit(this.r);
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean j() {
        return this.n >= 2000 && this.n >= this.m.size();
    }

    public final synchronized boolean c(String str) throws IOException {
        boolean z;
        int i2 = 0;
        synchronized (this) {
            k();
            e(str);
            c cVar = (c) this.m.get(str);
            if (cVar == null || cVar.e != null) {
                z = false;
            } else {
                while (i2 < this.i) {
                    File a2 = cVar.a(i2);
                    if (!a2.exists() || a2.delete()) {
                        this.j -= cVar.c[i2];
                        cVar.c[i2] = 0;
                        i2++;
                    } else {
                        throw new IOException("failed to delete " + a2);
                    }
                }
                this.n++;
                this.k.append("REMOVE " + str + 10);
                this.m.remove(str);
                if (j()) {
                    f().submit(this.r);
                }
                z = true;
            }
        }
        return z;
    }

    private void k() {
        if (this.k == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public final synchronized void c() throws IOException {
        k();
        l();
        this.k.flush();
    }

    public final synchronized void close() throws IOException {
        if (this.k != null) {
            Iterator it = new ArrayList(this.m.values()).iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                if (cVar.e != null) {
                    cVar.e.c();
                }
            }
            l();
            this.k.close();
            this.k = null;
        }
    }

    /* access modifiers changed from: private */
    public void l() throws IOException {
        while (true) {
            if (this.j > this.h || this.m.size() > this.l) {
                c((String) ((Entry) this.m.entrySet().iterator().next()).getKey());
                if (this.o != null) {
                    dj djVar = this.o;
                }
            } else {
                return;
            }
        }
    }

    public final void d() throws IOException {
        close();
        dl.a(this.c);
    }

    private static void e(String str) {
        if (!a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
        }
    }
}
