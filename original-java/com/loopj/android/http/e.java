package com.loopj.android.http;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

/* compiled from: FileAsyncHttpResponseHandler */
public abstract class e extends d {
    static final /* synthetic */ boolean c = (!e.class.desiredAssertionStatus());
    protected final File a;
    protected final boolean b;

    public abstract void a(int i, Header[] headerArr, File file);

    public abstract void a(int i, Header[] headerArr, Throwable th, File file);

    /* access modifiers changed from: protected */
    public File a() {
        if (c || this.a != null) {
            return this.a;
        }
        throw new AssertionError();
    }

    public final void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        a(i, headerArr, th, a());
    }

    public final void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        a(i, headerArr, a());
    }

    /* access modifiers changed from: protected */
    public byte[] getResponseData(HttpEntity httpEntity) throws IOException {
        int i = 0;
        if (httpEntity != null) {
            InputStream content = httpEntity.getContent();
            long contentLength = httpEntity.getContentLength();
            FileOutputStream fileOutputStream = new FileOutputStream(a(), this.b);
            if (content != null) {
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = content.read(bArr);
                        if (read != -1 && !Thread.currentThread().isInterrupted()) {
                            i += read;
                            fileOutputStream.write(bArr, 0, read);
                            sendProgressMessage(i, (int) contentLength);
                        }
                    }
                } finally {
                    b.a(content);
                    fileOutputStream.flush();
                    b.a((OutputStream) fileOutputStream);
                }
            }
        }
        return null;
    }
}
