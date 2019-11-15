package com.amap.api.mapcore.util;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
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
public final class hk implements Closeable {
    static final Pattern a = Pattern.compile("[a-z0-9_-]{1,120}");
    static ThreadPoolExecutor b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), q);
    private static final ThreadFactory q = new ThreadFactory() {
        private final AtomicInteger a = new AtomicInteger(1);

        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "disklrucache#" + this.a.getAndIncrement());
        }
    };
    /* access modifiers changed from: private */
    public static final OutputStream s = new OutputStream() {
        public void write(int i) throws IOException {
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
    private hl o;
    private long p = 0;
    private final Callable<Void> r = new Callable<Void>() {
        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (hk.this) {
                if (hk.this.k != null) {
                    hk.this.m();
                    if (hk.this.k()) {
                        hk.this.j();
                        hk.this.n = 0;
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

        /* renamed from: com.amap.api.mapcore.util.hk$a$a reason: collision with other inner class name */
        /* compiled from: DiskLruCache */
        private class C0008a extends FilterOutputStream {
            private C0008a(OutputStream outputStream) {
                super(outputStream);
            }

            public void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    a.this.d = true;
                }
            }

            public void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    a.this.d = true;
                }
            }

            public void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    a.this.d = true;
                }
            }

            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    a.this.d = true;
                }
            }
        }

        private a(c cVar) {
            this.b = cVar;
            this.c = cVar.d ? null : new boolean[hk.this.i];
        }

        public OutputStream a(int i) throws IOException {
            OutputStream g;
            FileOutputStream fileOutputStream;
            if (i < 0 || i >= hk.this.i) {
                throw new IllegalArgumentException("Expected index " + i + " to " + "be greater than 0 and less than the maximum value count " + "of " + hk.this.i);
            }
            synchronized (hk.this) {
                if (this.b.e != this) {
                    throw new IllegalStateException();
                }
                if (!this.b.d) {
                    this.c[i] = true;
                }
                File b2 = this.b.b(i);
                try {
                    fileOutputStream = new FileOutputStream(b2);
                } catch (FileNotFoundException e2) {
                    hk.this.c.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(b2);
                    } catch (FileNotFoundException e3) {
                        g = hk.s;
                    }
                }
                g = new C0008a(fileOutputStream);
            }
            return g;
        }

        public void a() throws IOException {
            if (this.d) {
                hk.this.a(this, false);
                hk.this.c(this.b.b);
            } else {
                hk.this.a(this, true);
            }
            this.e = true;
        }

        public void b() throws IOException {
            hk.this.a(this, false);
        }
    }

    /* compiled from: DiskLruCache */
    public final class b implements Closeable {
        private final String b;
        private final long c;
        private final InputStream[] d;
        private final long[] e;

        private b(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.b = str;
            this.c = j;
            this.d = inputStreamArr;
            this.e = jArr;
        }

        public InputStream a(int i) {
            return this.d[i];
        }

        public void close() {
            for (InputStream a2 : this.d) {
                hn.a((Closeable) a2);
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

        private c(String str) {
            this.b = str;
            this.c = new long[hk.this.i];
        }

        public String a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long append : this.c) {
                sb.append(' ').append(append);
            }
            return sb.toString();
        }

        /* access modifiers changed from: private */
        public void a(String[] strArr) throws IOException {
            if (strArr.length != hk.this.i) {
                throw b(strArr);
            }
            int i = 0;
            while (i < strArr.length) {
                try {
                    this.c[i] = Long.parseLong(strArr[i]);
                    i++;
                } catch (NumberFormatException e2) {
                    throw b(strArr);
                }
            }
        }

        private IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File a(int i) {
            return new File(hk.this.c, this.b + "." + i);
        }

        public File b(int i) {
            return new File(hk.this.c, this.b + "." + i + DiskFileUpload.postfix);
        }
    }

    public void a(hl hlVar) {
        this.o = hlVar;
    }

    public void a(int i2) {
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

    public static ThreadPoolExecutor b() {
        try {
            if (b == null || b.isShutdown()) {
                b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), q);
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return b;
    }

    private hk(File file, int i2, int i3, long j2) {
        this.c = file;
        this.g = i2;
        this.d = new File(file, "journal");
        this.e = new File(file, "journal.tmp");
        this.f = new File(file, "journal.bkp");
        this.i = i3;
        this.h = j2;
    }

    public static hk a(File file, int i2, int i3, long j2) throws IOException {
        if (j2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i3 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        } else {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    a(file2, file3, false);
                }
            }
            hk hkVar = new hk(file, i2, i3, j2);
            if (hkVar.d.exists()) {
                try {
                    hkVar.h();
                    hkVar.i();
                    hkVar.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(hkVar.d, true), hn.a));
                    return hkVar;
                } catch (Throwable th) {
                    hkVar.f();
                }
            }
            file.mkdirs();
            hk hkVar2 = new hk(file, i2, i3, j2);
            hkVar2.j();
            return hkVar2;
        }
    }

    private void h() throws IOException {
        int i2;
        hm hmVar = new hm(new FileInputStream(this.d), hn.a);
        try {
            String a2 = hmVar.a();
            String a3 = hmVar.a();
            String a4 = hmVar.a();
            String a5 = hmVar.a();
            String a6 = hmVar.a();
            if (!"libcore.io.DiskLruCache".equals(a2) || !"1".equals(a3) || !Integer.toString(this.g).equals(a4) || !Integer.toString(this.i).equals(a5) || !"".equals(a6)) {
                throw new IOException("unexpected journal header: [" + a2 + ", " + a3 + ", " + a5 + ", " + a6 + "]");
            }
            i2 = 0;
            while (true) {
                d(hmVar.a());
                i2++;
            }
        } catch (EOFException e2) {
            this.n = i2 - this.m.size();
            hn.a((Closeable) hmVar);
        } catch (Throwable th) {
            hn.a((Closeable) hmVar);
            throw th;
        }
    }

    private void d(String str) throws IOException {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i2 = indexOf + 1;
        int indexOf2 = str.indexOf(32, i2);
        if (indexOf2 == -1) {
            String substring = str.substring(i2);
            if (indexOf != "REMOVE".length() || !str.startsWith("REMOVE")) {
                str2 = substring;
            } else {
                this.m.remove(substring);
                return;
            }
        } else {
            str2 = str.substring(i2, indexOf2);
        }
        c cVar = (c) this.m.get(str2);
        if (cVar == null) {
            cVar = new c(str2);
            this.m.put(str2, cVar);
        }
        if (indexOf2 != -1 && indexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(Token.SEPARATOR);
            cVar.d = true;
            cVar.e = null;
            cVar.a(split);
        } else if (indexOf2 == -1 && indexOf == "DIRTY".length() && str.startsWith("DIRTY")) {
            cVar.e = new a(cVar);
        } else if (indexOf2 != -1 || indexOf != "READ".length() || !str.startsWith("READ")) {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    private void i() throws IOException {
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
    public synchronized void j() throws IOException {
        if (this.k != null) {
            this.k.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), hn.a));
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
            this.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d, true), hn.a));
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

    public synchronized b a(String str) throws IOException {
        b bVar = null;
        synchronized (this) {
            l();
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
                                hn.a((Closeable) inputStreamArr[i3]);
                                i3++;
                            }
                        }
                    }
                    this.n++;
                    this.k.append("READ " + str + 10);
                    if (k()) {
                        b().submit(this.r);
                    }
                    bVar = new b(str, cVar.f, inputStreamArr, cVar.c);
                }
            }
        }
        return bVar;
    }

    public a b(String str) throws IOException {
        return a(str, -1);
    }

    private synchronized a a(String str, long j2) throws IOException {
        c cVar;
        a aVar;
        l();
        e(str);
        c cVar2 = (c) this.m.get(str);
        if (j2 == -1 || (cVar2 != null && cVar2.f == j2)) {
            if (cVar2 == null) {
                c cVar3 = new c(str);
                this.m.put(str, cVar3);
                cVar = cVar3;
            } else if (cVar2.e != null) {
                aVar = null;
            } else {
                cVar = cVar2;
            }
            aVar = new a(cVar);
            cVar.e = aVar;
            this.k.write("DIRTY " + str + 10);
            this.k.flush();
        } else {
            aVar = null;
        }
        return aVar;
    }

    public File c() {
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
                                aVar.b();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!a2.b(i2).exists()) {
                                aVar.b();
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
            if (this.j > this.h || k()) {
                b().submit(this.r);
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean k() {
        return this.n >= 2000 && this.n >= this.m.size();
    }

    public synchronized boolean c(String str) throws IOException {
        boolean z;
        int i2 = 0;
        synchronized (this) {
            l();
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
                if (k()) {
                    b().submit(this.r);
                }
                z = true;
            }
        }
        return z;
    }

    public synchronized boolean d() {
        return this.k == null;
    }

    private void l() {
        if (this.k == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void e() throws IOException {
        l();
        m();
        this.k.flush();
    }

    public synchronized void close() throws IOException {
        if (this.k != null) {
            Iterator it = new ArrayList(this.m.values()).iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                if (cVar.e != null) {
                    cVar.e.b();
                }
            }
            m();
            this.k.close();
            this.k = null;
        }
    }

    /* access modifiers changed from: private */
    public void m() throws IOException {
        while (true) {
            if (this.j > this.h || this.m.size() > this.l) {
                String str = (String) ((Entry) this.m.entrySet().iterator().next()).getKey();
                c(str);
                if (this.o != null) {
                    this.o.a(str);
                }
            } else {
                return;
            }
        }
    }

    public void f() throws IOException {
        close();
        hn.a(this.c);
    }

    private void e(String str) {
        if (!a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
        }
    }
}
