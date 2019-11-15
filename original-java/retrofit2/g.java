package retrofit2;

import java.io.IOException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

/* compiled from: OkHttpCall */
final class g<T> implements b<T> {
    private final m<T, ?> a;
    @Nullable
    private final Object[] b;
    private volatile boolean c;
    @GuardedBy("this")
    @Nullable
    private Call d;
    @GuardedBy("this")
    @Nullable
    private Throwable e;
    @GuardedBy("this")
    private boolean f;

    /* compiled from: OkHttpCall */
    static final class a extends ResponseBody {
        IOException a;
        private final ResponseBody b;

        a(ResponseBody responseBody) {
            this.b = responseBody;
        }

        public MediaType contentType() {
            return this.b.contentType();
        }

        public long contentLength() {
            return this.b.contentLength();
        }

        public BufferedSource source() {
            return Okio.buffer((Source) new ForwardingSource(this.b.source()) {
                public long read(Buffer buffer, long j) throws IOException {
                    try {
                        return super.read(buffer, j);
                    } catch (IOException e) {
                        a.this.a = e;
                        throw e;
                    }
                }
            });
        }

        public void close() {
            this.b.close();
        }

        /* access modifiers changed from: 0000 */
        public void a() throws IOException {
            if (this.a != null) {
                throw this.a;
            }
        }
    }

    /* compiled from: OkHttpCall */
    static final class b extends ResponseBody {
        private final MediaType a;
        private final long b;

        b(MediaType mediaType, long j) {
            this.a = mediaType;
            this.b = j;
        }

        public MediaType contentType() {
            return this.a;
        }

        public long contentLength() {
            return this.b;
        }

        public BufferedSource source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    g(m<T, ?> mVar, @Nullable Object[] objArr) {
        this.a = mVar;
        this.b = objArr;
    }

    /* renamed from: e */
    public g<T> d() {
        return new g<>(this.a, this.b);
    }

    public k<T> a() throws IOException {
        Call call;
        synchronized (this) {
            if (this.f) {
                throw new IllegalStateException("Already executed.");
            }
            this.f = true;
            if (this.e == null) {
                call = this.d;
                if (call == null) {
                    try {
                        call = f();
                        this.d = call;
                    } catch (IOException | RuntimeException e2) {
                        this.e = e2;
                        throw e2;
                    }
                }
            } else if (this.e instanceof IOException) {
                throw ((IOException) this.e);
            } else {
                throw ((RuntimeException) this.e);
            }
        }
        if (this.c) {
            call.cancel();
        }
        return a(call.execute());
    }

    private Call f() throws IOException {
        Call newCall = this.a.c.newCall(this.a.a(this.b));
        if (newCall != null) {
            return newCall;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    /* access modifiers changed from: 0000 */
    public k<T> a(Response response) throws IOException {
        ResponseBody body = response.body();
        Response build = response.newBuilder().body(new b(body.contentType(), body.contentLength())).build();
        int code = build.code();
        if (code < 200 || code >= 300) {
            try {
                return k.a(n.a(body), build);
            } finally {
                body.close();
            }
        } else if (code == 204 || code == 205) {
            body.close();
            return k.a(null, build);
        } else {
            a aVar = new a(body);
            try {
                return k.a(this.a.a((ResponseBody) aVar), build);
            } catch (RuntimeException e2) {
                aVar.a();
                throw e2;
            }
        }
    }

    public void b() {
        Call call;
        this.c = true;
        synchronized (this) {
            call = this.d;
        }
        if (call != null) {
            call.cancel();
        }
    }

    public boolean c() {
        boolean z = true;
        if (!this.c) {
            synchronized (this) {
                if (this.d == null || !this.d.isCanceled()) {
                    z = false;
                }
            }
        }
        return z;
    }
}
