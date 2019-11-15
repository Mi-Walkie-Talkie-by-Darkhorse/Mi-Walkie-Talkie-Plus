package com.xiaomi.mistatistic.sdk.network;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: MIOutputStream */
final class f extends OutputStream {
    private OutputStream a;
    private c b;
    private d c;
    private int d = 0;

    public f(c cVar, OutputStream outputStream) {
        this.a = outputStream;
        this.b = cVar;
    }

    public f(d dVar, OutputStream outputStream) {
        this.a = outputStream;
        this.c = dVar;
    }

    public void close() throws IOException {
        try {
            this.a.close();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void flush() throws IOException {
        try {
            this.a.flush();
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void write(byte[] bArr) throws IOException {
        try {
            this.a.write(bArr);
            this.d += bArr.length;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.a.write(bArr, i, i2);
            this.d += i2;
        } catch (IOException e) {
            a(e);
            throw e;
        }
    }

    public void write(int i) throws IOException {
        try {
            this.a.write(i);
            this.d++;
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
