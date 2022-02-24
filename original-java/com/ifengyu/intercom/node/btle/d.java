package com.ifengyu.intercom.node.btle;

import com.ifengyu.intercom.i.z;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.LinkedBlockingDeque;

/* compiled from: BtleInputStream.java */
/* loaded from: classes2.dex */
public class d extends InputStream {

    /* renamed from: c  reason: collision with root package name */
    private static final String f5884c = d.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    final LinkedBlockingDeque<byte[]> f5885a = new LinkedBlockingDeque<>();

    /* renamed from: b  reason: collision with root package name */
    private int f5886b = 0;

    public void a(byte[] bArr) {
        if (!this.f5885a.offerLast(bArr)) {
            z.e(f5884c, "Full Read Queue. Dropping data on the floor.");
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        z.a(f5884c, "closing BtleInputStream");
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            byte[] takeFirst = this.f5885a.takeFirst();
            int min = Math.min(takeFirst.length - this.f5886b, i2);
            System.arraycopy(takeFirst, this.f5886b, bArr, i, min);
            if (this.f5886b + min < takeFirst.length) {
                this.f5886b += min;
                this.f5885a.addFirst(takeFirst);
            } else {
                this.f5886b = 0;
            }
            return min;
        } catch (InterruptedException e) {
            z.e(f5884c, "InterruptedException:" + e.getMessage());
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }
}
