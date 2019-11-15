package com.ksyun.ks3.auth;

import android.util.Log;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.entity.InputStreamEntity;

/* compiled from: RepeatableInputStreamRequestEntity */
public class d extends BasicHttpEntity {
    private boolean a = true;
    private InputStreamEntity b;
    private InputStream c;
    private IOException d;
    private com.ksyun.ks3.model.b.d e;
    private long f;

    /* compiled from: RepeatableInputStreamRequestEntity */
    public static class a extends FilterOutputStream {
        private final com.ksyun.ks3.model.b.d a;
        private long b = 0;
        private long c;

        /* access modifiers changed from: protected */
        public void finalize() throws Throwable {
            Log.d("CountingOutputStream", "CountingOutputStream finalize:" + this);
            super.finalize();
        }

        a(OutputStream outputStream, long j, com.ksyun.ks3.model.b.d dVar) {
            super(outputStream);
            this.a = dVar;
            this.c = j;
        }

        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.out.write(bArr, i, i2);
            this.b += (long) i2;
            if (this.c > 0) {
                this.a.onTaskProgress(Double.valueOf(this.c > 0 ? ((((double) this.b) * 1.0d) / ((double) this.c)) * 100.0d : -1.0d).doubleValue());
            }
        }

        public void write(int i) throws IOException {
            this.out.write(i);
            this.b++;
            if (this.c > 0) {
                this.a.onTaskProgress(Double.valueOf(this.c > 0 ? ((((double) this.b) * 1.0d) / ((double) this.c)) * 100.0d : -1.0d).doubleValue());
            }
        }
    }

    public d(InputStream inputStream, String str) {
        setChunked(false);
        long j = -1;
        if (str != null) {
            try {
                j = Long.parseLong(str);
            } catch (NumberFormatException e2) {
            }
        }
        this.b = new InputStreamEntity(inputStream, j);
        this.b.setContentType(this.contentType);
        this.c = inputStream;
        this.f = j;
        setContent(inputStream);
        setContentType(this.contentType);
        setContentLength(j);
    }

    public void a(com.ksyun.ks3.model.b.d dVar) {
        this.e = dVar;
    }

    public boolean isChunked() {
        return false;
    }

    public boolean isRepeatable() {
        return this.c.markSupported() || this.b.isRepeatable();
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        OutputStream aVar;
        try {
            if (!this.a && isRepeatable()) {
                this.c.reset();
            }
            this.a = false;
            if (this.e != null) {
                InputStreamEntity inputStreamEntity = this.b;
                if (outputStream instanceof a) {
                    aVar = outputStream;
                } else {
                    aVar = new a(outputStream, this.f, this.e);
                }
                inputStreamEntity.writeTo(aVar);
            } else {
                this.b.writeTo(outputStream);
            }
            this.e = null;
            this.c.close();
            outputStream.close();
        } catch (IOException e2) {
            if (this.d == null) {
                this.d = e2;
            }
            throw this.d;
        } catch (Throwable th) {
            this.e = null;
            this.c.close();
            outputStream.close();
            throw th;
        }
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        Log.d("RepeatableInputStreamRequestEntity", "RepeatableInputStreamRequestEntity finalize:" + this);
        super.finalize();
    }
}
