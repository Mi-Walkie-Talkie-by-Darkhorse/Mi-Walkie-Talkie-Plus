package com.bumptech.glide.a;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
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
import org.jboss.netty.handler.codec.http.multipart.DiskFileUpload;

/* compiled from: DiskLruCache */
public final class a implements Closeable {
    final ThreadPoolExecutor a = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new C0010a());
    /* access modifiers changed from: private */
    public final File b;
    private final File c;
    private final File d;
    private final File e;
    private final int f;
    private long g;
    /* access modifiers changed from: private */
    public final int h;
    private long i = 0;
    /* access modifiers changed from: private */
    public Writer j;
    private final LinkedHashMap<String, c> k = new LinkedHashMap<>(0, 0.75f, true);
    /* access modifiers changed from: private */
    public int l;
    private long m = 0;
    private final Callable<Void> n = new Callable<Void>() {
        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (a.this) {
                if (a.this.j != null) {
                    a.this.g();
                    if (a.this.e()) {
                        a.this.d();
                        a.this.l = 0;
                    }
                }
            }
            return null;
        }
    };

    /* renamed from: com.bumptech.glide.a.a$a reason: collision with other inner class name */
    /* compiled from: DiskLruCache */
    private static final class C0010a implements ThreadFactory {
        private C0010a() {
        }

        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    /* compiled from: DiskLruCache */
    public final class b {
        /* access modifiers changed from: private */
        public final c b;
        /* access modifiers changed from: private */
        public final boolean[] c;
        private boolean d;

        private b(c cVar) {
            this.b = cVar;
            this.c = cVar.f ? null : new boolean[a.this.h];
        }

        public File a(int i) throws IOException {
            File b2;
            synchronized (a.this) {
                if (this.b.g != this) {
                    throw new IllegalStateException();
                }
                if (!this.b.f) {
                    this.c[i] = true;
                }
                b2 = this.b.b(i);
                if (!a.this.b.exists()) {
                    a.this.b.mkdirs();
                }
            }
            return b2;
        }

        public void a() throws IOException {
            a.this.a(this, true);
            this.d = true;
        }

        public void b() throws IOException {
            a.this.a(this, false);
        }

        public void c() {
            if (!this.d) {
                try {
                    b();
                } catch (IOException e) {
                }
            }
        }
    }

    /* compiled from: DiskLruCache */
    private final class c {
        File[] a;
        File[] b;
        /* access modifiers changed from: private */
        public final String d;
        /* access modifiers changed from: private */
        public final long[] e;
        /* access modifiers changed from: private */
        public boolean f;
        /* access modifiers changed from: private */
        public b g;
        /* access modifiers changed from: private */
        public long h;

        private c(String str) {
            this.d = str;
            this.e = new long[a.this.h];
            this.a = new File[a.this.h];
            this.b = new File[a.this.h];
            StringBuilder append = new StringBuilder(str).append('.');
            int length = append.length();
            for (int i = 0; i < a.this.h; i++) {
                append.append(i);
                this.a[i] = new File(a.this.b, append.toString());
                append.append(DiskFileUpload.postfix);
                this.b[i] = new File(a.this.b, append.toString());
                append.setLength(length);
            }
        }

        public String a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long append : this.e) {
                sb.append(' ').append(append);
            }
            return sb.toString();
        }

        /* access modifiers changed from: private */
        public void a(String[] strArr) throws IOException {
            if (strArr.length != a.this.h) {
                throw b(strArr);
            }
            int i = 0;
            while (i < strArr.length) {
                try {
                    this.e[i] = Long.parseLong(strArr[i]);
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
            return this.a[i];
        }

        public File b(int i) {
            return this.b[i];
        }
    }

    /* compiled from: DiskLruCache */
    public final class d {
        private final String b;
        private final long c;
        private final long[] d;
        private final File[] e;

        private d(String str, long j, File[] fileArr, long[] jArr) {
            this.b = str;
            this.c = j;
            this.e = fileArr;
            this.d = jArr;
        }

        public File a(int i) {
            return this.e[i];
        }
    }

    private a(File file, int i2, int i3, long j2) {
        this.b = file;
        this.f = i2;
        this.c = new File(file, "journal");
        this.d = new File(file, "journal.tmp");
        this.e = new File(file, "journal.bkp");
        this.h = i3;
        this.g = j2;
    }

    public static a a(File file, int i2, int i3, long j2) throws IOException {
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
            a aVar = new a(file, i2, i3, j2);
            if (aVar.c.exists()) {
                try {
                    aVar.b();
                    aVar.c();
                    return aVar;
                } catch (IOException e2) {
                    System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                    aVar.a();
                }
            }
            file.mkdirs();
            a aVar2 = new a(file, i2, i3, j2);
            aVar2.d();
            return aVar2;
        }
    }

    private void b() throws IOException {
        int i2;
        b bVar = new b(new FileInputStream(this.c), c.a);
        try {
            String a2 = bVar.a();
            String a3 = bVar.a();
            String a4 = bVar.a();
            String a5 = bVar.a();
            String a6 = bVar.a();
            if (!"libcore.io.DiskLruCache".equals(a2) || !"1".equals(a3) || !Integer.toString(this.f).equals(a4) || !Integer.toString(this.h).equals(a5) || !"".equals(a6)) {
                throw new IOException("unexpected journal header: [" + a2 + ", " + a3 + ", " + a5 + ", " + a6 + "]");
            }
            i2 = 0;
            while (true) {
                d(bVar.a());
                i2++;
            }
        } catch (EOFException e2) {
            this.l = i2 - this.k.size();
            if (bVar.b()) {
                d();
            } else {
                this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), c.a));
            }
            c.a((Closeable) bVar);
        } catch (Throwable th) {
            c.a((Closeable) bVar);
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
                this.k.remove(substring);
                return;
            }
        } else {
            str2 = str.substring(i2, indexOf2);
        }
        c cVar = (c) this.k.get(str2);
        if (cVar == null) {
            cVar = new c(str2);
            this.k.put(str2, cVar);
        }
        if (indexOf2 != -1 && indexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(Token.SEPARATOR);
            cVar.f = true;
            cVar.g = null;
            cVar.a(split);
        } else if (indexOf2 == -1 && indexOf == "DIRTY".length() && str.startsWith("DIRTY")) {
            cVar.g = new b(cVar);
        } else if (indexOf2 != -1 || indexOf != "READ".length() || !str.startsWith("READ")) {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    private void c() throws IOException {
        a(this.d);
        Iterator it = this.k.values().iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.g == null) {
                for (int i2 = 0; i2 < this.h; i2++) {
                    this.i += cVar.e[i2];
                }
            } else {
                cVar.g = null;
                for (int i3 = 0; i3 < this.h; i3++) {
                    a(cVar.a(i3));
                    a(cVar.b(i3));
                }
                it.remove();
            }
        }
    }

    /* access modifiers changed from: private */
    public synchronized void d() throws IOException {
        if (this.j != null) {
            this.j.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d), c.a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.h));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (c cVar : this.k.values()) {
                if (cVar.g != null) {
                    bufferedWriter.write("DIRTY " + cVar.d + 10);
                } else {
                    bufferedWriter.write("CLEAN " + cVar.d + cVar.a() + 10);
                }
            }
            bufferedWriter.close();
            if (this.c.exists()) {
                a(this.c, this.e, true);
            }
            a(this.d, this.c, false);
            this.e.delete();
            this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), c.a));
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

    public synchronized d a(String str) throws IOException {
        d dVar = null;
        synchronized (this) {
            f();
            c cVar = (c) this.k.get(str);
            if (cVar != null) {
                if (cVar.f) {
                    File[] fileArr = cVar.a;
                    int length = fileArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            if (!fileArr[i2].exists()) {
                                break;
                            }
                            i2++;
                        } else {
                            this.l++;
                            this.j.append("READ");
                            this.j.append(' ');
                            this.j.append(str);
                            this.j.append(10);
                            if (e()) {
                                this.a.submit(this.n);
                            }
                            dVar = new d(str, cVar.h, cVar.a, cVar.e);
                        }
                    }
                }
            }
        }
        return dVar;
    }

    public b b(String str) throws IOException {
        return a(str, -1);
    }

    private synchronized b a(String str, long j2) throws IOException {
        c cVar;
        b bVar;
        f();
        c cVar2 = (c) this.k.get(str);
        if (j2 == -1 || (cVar2 != null && cVar2.h == j2)) {
            if (cVar2 == null) {
                c cVar3 = new c(str);
                this.k.put(str, cVar3);
                cVar = cVar3;
            } else if (cVar2.g != null) {
                bVar = null;
            } else {
                cVar = cVar2;
            }
            bVar = new b(cVar);
            cVar.g = bVar;
            this.j.append("DIRTY");
            this.j.append(' ');
            this.j.append(str);
            this.j.append(10);
            this.j.flush();
        } else {
            bVar = null;
        }
        return bVar;
    }

    /* access modifiers changed from: private */
    public synchronized void a(b bVar, boolean z) throws IOException {
        synchronized (this) {
            c a2 = bVar.b;
            if (a2.g != bVar) {
                throw new IllegalStateException();
            }
            if (z) {
                if (!a2.f) {
                    int i2 = 0;
                    while (true) {
                        if (i2 < this.h) {
                            if (!bVar.c[i2]) {
                                bVar.b();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!a2.b(i2).exists()) {
                                bVar.b();
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
            }
            for (int i3 = 0; i3 < this.h; i3++) {
                File b2 = a2.b(i3);
                if (!z) {
                    a(b2);
                } else if (b2.exists()) {
                    File a3 = a2.a(i3);
                    b2.renameTo(a3);
                    long j2 = a2.e[i3];
                    long length = a3.length();
                    a2.e[i3] = length;
                    this.i = (this.i - j2) + length;
                }
            }
            this.l++;
            a2.g = null;
            if (a2.f || z) {
                a2.f = true;
                this.j.append("CLEAN");
                this.j.append(' ');
                this.j.append(a2.d);
                this.j.append(a2.a());
                this.j.append(10);
                if (z) {
                    long j3 = this.m;
                    this.m = 1 + j3;
                    a2.h = j3;
                }
            } else {
                this.k.remove(a2.d);
                this.j.append("REMOVE");
                this.j.append(' ');
                this.j.append(a2.d);
                this.j.append(10);
            }
            this.j.flush();
            if (this.i > this.g || e()) {
                this.a.submit(this.n);
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean e() {
        return this.l >= 2000 && this.l >= this.k.size();
    }

    public synchronized boolean c(String str) throws IOException {
        boolean z;
        int i2 = 0;
        synchronized (this) {
            f();
            c cVar = (c) this.k.get(str);
            if (cVar == null || cVar.g != null) {
                z = false;
            } else {
                while (i2 < this.h) {
                    File a2 = cVar.a(i2);
                    if (!a2.exists() || a2.delete()) {
                        this.i -= cVar.e[i2];
                        cVar.e[i2] = 0;
                        i2++;
                    } else {
                        throw new IOException("failed to delete " + a2);
                    }
                }
                this.l++;
                this.j.append("REMOVE");
                this.j.append(' ');
                this.j.append(str);
                this.j.append(10);
                this.k.remove(str);
                if (e()) {
                    this.a.submit(this.n);
                }
                z = true;
            }
        }
        return z;
    }

    private void f() {
        if (this.j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void close() throws IOException {
        if (this.j != null) {
            Iterator it = new ArrayList(this.k.values()).iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                if (cVar.g != null) {
                    cVar.g.b();
                }
            }
            g();
            this.j.close();
            this.j = null;
        }
    }

    /* access modifiers changed from: private */
    public void g() throws IOException {
        while (this.i > this.g) {
            c((String) ((Entry) this.k.entrySet().iterator().next()).getKey());
        }
    }

    public void a() throws IOException {
        close();
        c.a(this.b);
    }
}
