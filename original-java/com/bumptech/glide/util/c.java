package com.bumptech.glide.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* compiled from: ExceptionCatchingInputStream */
public class c extends InputStream {
    private static final Queue<c> a = i.a(0);
    private InputStream b;
    private IOException c;

    public static c a(InputStream inputStream) {
        c cVar;
        synchronized (a) {
            cVar = (c) a.poll();
        }
        if (cVar == null) {
            cVar = new c();
        }
        cVar.b(inputStream);
        return cVar;
    }

    c() {
    }

    /* access modifiers changed from: 0000 */
    public void b(InputStream inputStream) {
        this.b = inputStream;
    }

    public int available() throws IOException {
        return this.b.available();
    }

    public void close() throws IOException {
        this.b.close();
    }

    public void mark(int i) {
        this.b.mark(i);
    }

    public boolean markSupported() {
        return this.b.markSupported();
    }

    public int read(byte[] bArr) throws IOException {
        try {
            return this.b.read(bArr);
        } catch (IOException e) {
            this.c = e;
            return -1;
        }
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            return this.b.read(bArr, i, i2);
        } catch (IOException e) {
            this.c = e;
            return -1;
        }
    }

    public synchronized void reset() throws IOException {
        this.b.reset();
    }

    public long skip(long j) throws IOException {
        try {
            return this.b.skip(j);
        } catch (IOException e) {
            this.c = e;
            return 0;
        }
    }

    public int read() throws IOException {
        try {
            return this.b.read();
        } catch (IOException e) {
            this.c = e;
            return -1;
        }
    }

    public IOException a() {
        return this.c;
    }

    public void b() {
        this.c = null;
        this.b = null;
        synchronized (a) {
            a.offer(this);
        }
    }
}
