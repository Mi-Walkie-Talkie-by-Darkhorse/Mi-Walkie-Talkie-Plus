package com.ifengyu.intercom.node.btle;

import com.ifengyu.intercom.b.s;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.LinkedBlockingDeque;

/* compiled from: BtleInputStream */
public class d extends InputStream {
    private static final String b = d.class.getSimpleName();
    final LinkedBlockingDeque<byte[]> a = new LinkedBlockingDeque<>();
    private int c = 0;

    public int read() throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    public int available() throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    public void close() throws IOException {
        s.b(b, "closing BtleInputStream");
    }

    public void mark(int i) {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    public boolean markSupported() {
        return false;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            byte[] bArr2 = (byte[]) this.a.takeFirst();
            int min = Math.min(bArr2.length - this.c, i2);
            System.arraycopy(bArr2, this.c, bArr, i, min);
            if (this.c + min < bArr2.length) {
                this.c += min;
                this.a.addFirst(bArr2);
            } else {
                this.c = 0;
            }
            return min;
        } catch (InterruptedException e) {
            s.d(b, "InterruptedException:" + e.getMessage());
            return -1;
        }
    }

    public int read(byte[] bArr) throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    public synchronized void reset() throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    public long skip(long j) throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    public void a(byte[] bArr) {
        if (!this.a.offerLast(bArr)) {
            s.d(b, "Full Read Queue. Dropping data on the floor.");
        }
    }
}
