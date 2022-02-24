package com.ifengyu.intercom.g.e;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

/* compiled from: CountingRequestBody.java */
/* loaded from: classes2.dex */
public class a extends RequestBody {

    /* renamed from: a  reason: collision with root package name */
    protected RequestBody f5260a;

    /* renamed from: b  reason: collision with root package name */
    protected b f5261b;

    /* renamed from: c  reason: collision with root package name */
    protected C0147a f5262c;

    /* compiled from: CountingRequestBody.java */
    /* renamed from: com.ifengyu.intercom.g.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    protected final class C0147a extends ForwardingSink {

        /* renamed from: a  reason: collision with root package name */
        private long f5263a = 0;

        public C0147a(Sink sink) {
            super(sink);
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            super.write(buffer, j);
            long j2 = this.f5263a + j;
            this.f5263a = j2;
            a aVar = a.this;
            aVar.f5261b.a(j2, aVar.contentLength());
        }
    }

    /* compiled from: CountingRequestBody.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(long j, long j2);
    }

    public a(RequestBody requestBody, b bVar) {
        this.f5260a = requestBody;
        this.f5261b = bVar;
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        try {
            return this.f5260a.contentLength();
        } catch (IOException e) {
            e.printStackTrace();
            return -1L;
        }
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.f5260a.contentType();
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        C0147a aVar = new C0147a(bufferedSink);
        this.f5262c = aVar;
        BufferedSink buffer = Okio.buffer(aVar);
        this.f5260a.writeTo(buffer);
        buffer.flush();
    }
}
