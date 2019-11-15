package com.ifengyu.intercom.a.c;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

/* compiled from: CountingRequestBody */
public class a extends RequestBody {
    protected RequestBody a;
    protected b b;
    protected C0026a c;

    /* renamed from: com.ifengyu.intercom.a.c.a$a reason: collision with other inner class name */
    /* compiled from: CountingRequestBody */
    protected final class C0026a extends ForwardingSink {
        private long b = 0;

        public C0026a(Sink sink) {
            super(sink);
        }

        public void write(Buffer buffer, long j) throws IOException {
            super.write(buffer, j);
            this.b += j;
            a.this.b.a(this.b, a.this.contentLength());
        }
    }

    /* compiled from: CountingRequestBody */
    public interface b {
        void a(long j, long j2);
    }

    public a(RequestBody requestBody, b bVar) {
        this.a = requestBody;
        this.b = bVar;
    }

    public MediaType contentType() {
        return this.a.contentType();
    }

    public long contentLength() {
        try {
            return this.a.contentLength();
        } catch (IOException e) {
            ThrowableExtension.printStackTrace(e);
            return -1;
        }
    }

    public void writeTo(BufferedSink bufferedSink) throws IOException {
        this.c = new C0026a(bufferedSink);
        BufferedSink buffer = Okio.buffer((Sink) this.c);
        this.a.writeTo(buffer);
        buffer.flush();
    }
}
