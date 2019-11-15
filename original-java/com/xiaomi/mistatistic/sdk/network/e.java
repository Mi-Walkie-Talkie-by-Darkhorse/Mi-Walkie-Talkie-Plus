package com.xiaomi.mistatistic.sdk.network;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: MIInputStream */
final class e extends InputStream {
    private InputStream a;
    private c b;
    private d c;
    private int d = 0;

    public e(c cVar, InputStream inputStream) {
        this.b = cVar;
        this.a = inputStream;
    }

    public e(d dVar, InputStream inputStream) {
        this.c = dVar;
        this.a = inputStream;
    }

    public int available() throws IOException {
        try {
            return this.a.available();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void close() throws IOException {
        if (this.b != null) {
            this.b.a();
        }
        if (this.c != null) {
            this.c.a();
        }
        try {
            this.a.close();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void mark(int i) {
        this.a.mark(i);
    }

    public boolean markSupported() {
        return this.a.markSupported();
    }

    public int read() throws IOException {
        try {
            int read = this.a.read();
            if (read != -1) {
                this.d++;
            }
            return read;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public int read(byte[] bArr) throws IOException {
        try {
            int read = this.a.read(bArr);
            if (read != -1) {
                this.d += read;
            }
            return read;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            int read = this.a.read(bArr, i, i2);
            if (read != -1) {
                this.d += read;
            }
            return read;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public synchronized void reset() throws IOException {
        try {
            this.a.reset();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public long skip(long j) throws IOException {
        try {
            return this.a.skip(j);
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    private void a(Exception exc) {
        if (this.b != null) {
            this.b.a(exc);
        }
        if (this.c != null) {
            this.c.a(exc);
        }
    }

    public int a() {
        return this.d;
    }
}
