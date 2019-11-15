package com.ksyun.ks3.model.b;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: MD5DigestCalculatingInputStream */
public class b extends FilterInputStream {
    private MessageDigest a;
    private MessageDigest b;

    public b(InputStream inputStream) {
        super(inputStream);
        try {
            this.a = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("unexpected", e);
        }
    }

    public void mark(int i) {
        super.mark(i);
        if (markSupported()) {
            try {
                this.b = (MessageDigest) this.a.clone();
            } catch (CloneNotSupportedException e) {
                throw new IllegalStateException("unexpected", e);
            }
        }
    }

    public void reset() throws IOException {
        super.reset();
        if (this.b != null) {
            try {
                this.a = (MessageDigest) this.b.clone();
            } catch (CloneNotSupportedException e) {
                throw new IllegalStateException("unexpected", e);
            }
        }
    }

    public int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.a.update((byte) read);
        }
        return read;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.a.update(bArr, i, read);
        }
        return read;
    }
}
