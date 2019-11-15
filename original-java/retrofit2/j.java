package retrofit2;

import java.io.IOException;
import javax.annotation.Nullable;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.HttpUrl.Builder;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.MultipartBody.Part;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;

/* compiled from: RequestBuilder */
final class j {
    private static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private final String b;
    private final HttpUrl c;
    @Nullable
    private String d;
    @Nullable
    private Builder e;
    private final Request.Builder f = new Request.Builder();
    @Nullable
    private MediaType g;
    private final boolean h;
    @Nullable
    private MultipartBody.Builder i;
    @Nullable
    private FormBody.Builder j;
    @Nullable
    private RequestBody k;

    /* compiled from: RequestBuilder */
    private static class a extends RequestBody {
        private final RequestBody a;
        private final MediaType b;

        a(RequestBody requestBody, MediaType mediaType) {
            this.a = requestBody;
            this.b = mediaType;
        }

        public MediaType contentType() {
            return this.b;
        }

        public long contentLength() throws IOException {
            return this.a.contentLength();
        }

        public void writeTo(BufferedSink bufferedSink) throws IOException {
            this.a.writeTo(bufferedSink);
        }
    }

    j(String str, HttpUrl httpUrl, @Nullable String str2, @Nullable Headers headers, @Nullable MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.b = str;
        this.c = httpUrl;
        this.d = str2;
        this.g = mediaType;
        this.h = z;
        if (headers != null) {
            this.f.headers(headers);
        }
        if (z2) {
            this.j = new FormBody.Builder();
        } else if (z3) {
            this.i = new MultipartBody.Builder();
            this.i.setType(MultipartBody.FORM);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(Object obj) {
        this.d = obj.toString();
    }

    /* access modifiers changed from: 0000 */
    public void a(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            MediaType parse = MediaType.parse(str2);
            if (parse == null) {
                throw new IllegalArgumentException("Malformed content type: " + str2);
            }
            this.g = parse;
            return;
        }
        this.f.addHeader(str, str2);
    }

    /* access modifiers changed from: 0000 */
    public void a(String str, String str2, boolean z) {
        if (this.d == null) {
            throw new AssertionError();
        }
        this.d = this.d.replace("{" + str + "}", a(str2, z));
    }

    private static String a(String str, boolean z) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            if (codePointAt < 32 || codePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, 0, i2);
                a(buffer, str, i2, length, z);
                return buffer.readUtf8();
            }
            i2 += Character.charCount(codePointAt);
        }
        return str;
    }

    private static void a(Buffer buffer, String str, int i2, int i3, boolean z) {
        Buffer buffer2 = null;
        while (i2 < i3) {
            int codePointAt = str.codePointAt(i2);
            if (!z || !(codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13)) {
                if (codePointAt < 32 || codePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(codePointAt);
                    while (!buffer2.exhausted()) {
                        byte readByte = buffer2.readByte() & 255;
                        buffer.writeByte(37);
                        buffer.writeByte((int) a[(readByte >> 4) & 15]);
                        buffer.writeByte((int) a[readByte & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(codePointAt);
                }
            }
            i2 += Character.charCount(codePointAt);
        }
    }

    /* access modifiers changed from: 0000 */
    public void b(String str, @Nullable String str2, boolean z) {
        if (this.d != null) {
            this.e = this.c.newBuilder(this.d);
            if (this.e == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.c + ", Relative: " + this.d);
            }
            this.d = null;
        }
        if (z) {
            this.e.addEncodedQueryParameter(str, str2);
        } else {
            this.e.addQueryParameter(str, str2);
        }
    }

    /* access modifiers changed from: 0000 */
    public void c(String str, String str2, boolean z) {
        if (z) {
            this.j.addEncoded(str, str2);
        } else {
            this.j.add(str, str2);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(Headers headers, RequestBody requestBody) {
        this.i.addPart(headers, requestBody);
    }

    /* access modifiers changed from: 0000 */
    public void a(Part part) {
        this.i.addPart(part);
    }

    /* access modifiers changed from: 0000 */
    public void a(RequestBody requestBody) {
        this.k = requestBody;
    }

    /* access modifiers changed from: 0000 */
    public Request a() {
        HttpUrl resolve;
        Builder builder = this.e;
        if (builder != null) {
            resolve = builder.build();
        } else {
            resolve = this.c.resolve(this.d);
            if (resolve == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.c + ", Relative: " + this.d);
            }
        }
        RequestBody requestBody = this.k;
        if (requestBody == null) {
            if (this.j != null) {
                requestBody = this.j.build();
            } else if (this.i != null) {
                requestBody = this.i.build();
            } else if (this.h) {
                requestBody = RequestBody.create((MediaType) null, new byte[0]);
            }
        }
        MediaType mediaType = this.g;
        if (mediaType != null) {
            if (requestBody != null) {
                requestBody = new a(requestBody, mediaType);
            } else {
                this.f.addHeader("Content-Type", mediaType.toString());
            }
        }
        return this.f.url(resolve).method(this.b, requestBody).build();
    }
}
