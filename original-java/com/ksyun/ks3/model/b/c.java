package com.ksyun.ks3.model.b;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: RepeatableFileInputStream */
public class c extends InputStream {
    private final File a;
    private FileInputStream b = null;
    private long c = 0;
    private long d = 0;

    public c(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException("File cannot be null");
        }
        this.b = new FileInputStream(file);
        this.a = file;
    }

    public void reset() throws IOException {
        this.b.close();
        this.b = new FileInputStream(this.a);
        long j = this.d;
        while (j > 0) {
            j -= this.b.skip(j);
        }
        this.c = 0;
    }

    public boolean markSupported() {
        return true;
    }

    public void mark(int i) {
        this.d += this.c;
        this.c = 0;
    }

    public int available() throws IOException {
        return this.b.available();
    }

    public void close() throws IOException {
        this.b.close();
    }

    public int read() throws IOException {
        int read = this.b.read();
        if (read == -1) {
            return -1;
        }
        this.c++;
        return read;
    }

    public long skip(long j) throws IOException {
        long skip = this.b.skip(j);
        this.c += skip;
        return skip;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.b.read(bArr, i, i2);
        this.c += (long) read;
        return read;
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        Log.d("RepeatableFileInputStream", "RepeatableFileInputStream finalize:" + this);
        super.finalize();
    }
}
