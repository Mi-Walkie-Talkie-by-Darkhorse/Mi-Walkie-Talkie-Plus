package okhttp3;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import org.jboss.netty.handler.codec.http.HttpConstants;
import org.jboss.netty.handler.codec.http.HttpHeaders.Values;

public final class MultipartBody extends RequestBody {
    public static final MediaType ALTERNATIVE = MediaType.parse("multipart/alternative");
    private static final byte[] COLONSPACE = {HttpConstants.COLON, HttpConstants.SP};
    private static final byte[] CRLF = {HttpConstants.CR, 10};
    private static final byte[] DASHDASH = {45, 45};
    public static final MediaType DIGEST = MediaType.parse("multipart/digest");
    public static final MediaType FORM = MediaType.parse(Values.MULTIPART_FORM_DATA);
    public static final MediaType MIXED = MediaType.parse(HttpPostBodyUtil.MULTIPART_MIXED);
    public static final MediaType PARALLEL = MediaType.parse("multipart/parallel");
    private final ByteString boundary;
    private long contentLength = -1;
    private final MediaType contentType;
    private final MediaType originalType;
    private final List<Part> parts;

    public static final class Part {
        final RequestBody body;
        @Nullable
        final Headers headers;

        public static Part create(RequestBody requestBody) {
            return create(null, requestBody);
        }

        public static Part create(@Nullable Headers headers2, RequestBody requestBody) {
            if (requestBody == null) {
                throw new NullPointerException("body == null");
            } else if (headers2 != null && headers2.get("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            } else if (headers2 == null || headers2.get("Content-Length") == null) {
                return new Part(headers2, requestBody);
            } else {
                throw new IllegalArgumentException("Unexpected header: Content-Length");
            }
        }

        public static Part createFormData(String str, String str2) {
            return createFormData(str, null, RequestBody.create((MediaType) null, str2));
        }

        public static Part createFormData(String str, @Nullable String str2, RequestBody requestBody) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            StringBuilder sb = new StringBuilder("form-data; name=");
            MultipartBody.appendQuotedString(sb, str);
            if (str2 != null) {
                sb.append("; filename=");
                MultipartBody.appendQuotedString(sb, str2);
            }
            return create(Headers.of(HttpPostBodyUtil.CONTENT_DISPOSITION, sb.toString()), requestBody);
        }

        private Part(@Nullable Headers headers2, RequestBody requestBody) {
            this.headers = headers2;
            this.body = requestBody;
        }

        @Nullable
        public Headers headers() {
            return this.headers;
        }

        public RequestBody body() {
            return this.body;
        }
    }

    public static final class Builder {
        private final ByteString boundary;
        private final List<Part> parts;
        private MediaType type;

        public Builder() {
            this(UUID.randomUUID().toString());
        }

        public Builder(String str) {
            this.type = MultipartBody.MIXED;
            this.parts = new ArrayList();
            this.boundary = ByteString.encodeUtf8(str);
        }

        public Builder setType(MediaType mediaType) {
            if (mediaType == null) {
                throw new NullPointerException("type == null");
            } else if (!mediaType.type().equals("multipart")) {
                throw new IllegalArgumentException("multipart != " + mediaType);
            } else {
                this.type = mediaType;
                return this;
            }
        }

        public Builder addPart(RequestBody requestBody) {
            return addPart(Part.create(requestBody));
        }

        public Builder addPart(@Nullable Headers headers, RequestBody requestBody) {
            return addPart(Part.create(headers, requestBody));
        }

        public Builder addFormDataPart(String str, String str2) {
            return addPart(Part.createFormData(str, str2));
        }

        public Builder addFormDataPart(String str, @Nullable String str2, RequestBody requestBody) {
            return addPart(Part.createFormData(str, str2, requestBody));
        }

        public Builder addPart(Part part) {
            if (part == null) {
                throw new NullPointerException("part == null");
            }
            this.parts.add(part);
            return this;
        }

        public MultipartBody build() {
            if (!this.parts.isEmpty()) {
                return new MultipartBody(this.boundary, this.type, this.parts);
            }
            throw new IllegalStateException("Multipart body must have at least one part.");
        }
    }

    MultipartBody(ByteString byteString, MediaType mediaType, List<Part> list) {
        this.boundary = byteString;
        this.originalType = mediaType;
        this.contentType = MediaType.parse(mediaType + "; boundary=" + byteString.utf8());
        this.parts = Util.immutableList(list);
    }

    public MediaType type() {
        return this.originalType;
    }

    public String boundary() {
        return this.boundary.utf8();
    }

    public int size() {
        return this.parts.size();
    }

    public List<Part> parts() {
        return this.parts;
    }

    public Part part(int i) {
        return (Part) this.parts.get(i);
    }

    public MediaType contentType() {
        return this.contentType;
    }

    public long contentLength() throws IOException {
        long j = this.contentLength;
        if (j != -1) {
            return j;
        }
        long writeOrCountBytes = writeOrCountBytes(null, true);
        this.contentLength = writeOrCountBytes;
        return writeOrCountBytes;
    }

    public void writeTo(BufferedSink bufferedSink) throws IOException {
        writeOrCountBytes(bufferedSink, false);
    }

    private long writeOrCountBytes(@Nullable BufferedSink bufferedSink, boolean z) throws IOException {
        Buffer buffer;
        long j = 0;
        if (z) {
            Buffer buffer2 = new Buffer();
            buffer = buffer2;
            r13 = buffer2;
        } else {
            buffer = 0;
            r13 = bufferedSink;
        }
        int size = this.parts.size();
        for (int i = 0; i < size; i++) {
            Part part = (Part) this.parts.get(i);
            Headers headers = part.headers;
            RequestBody requestBody = part.body;
            r13.write(DASHDASH);
            r13.write(this.boundary);
            r13.write(CRLF);
            if (headers != null) {
                int size2 = headers.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    r13.writeUtf8(headers.name(i2)).write(COLONSPACE).writeUtf8(headers.value(i2)).write(CRLF);
                }
            }
            MediaType contentType2 = requestBody.contentType();
            if (contentType2 != null) {
                r13.writeUtf8("Content-Type: ").writeUtf8(contentType2.toString()).write(CRLF);
            }
            long contentLength2 = requestBody.contentLength();
            if (contentLength2 != -1) {
                r13.writeUtf8("Content-Length: ").writeDecimalLong(contentLength2).write(CRLF);
            } else if (z) {
                buffer.clear();
                return -1;
            }
            r13.write(CRLF);
            if (z) {
                j += contentLength2;
            } else {
                requestBody.writeTo(r13);
            }
            r13.write(CRLF);
        }
        r13.write(DASHDASH);
        r13.write(this.boundary);
        r13.write(DASHDASH);
        r13.write(CRLF);
        if (!z) {
            return j;
        }
        long size3 = j + buffer.size();
        buffer.clear();
        return size3;
    }

    static StringBuilder appendQuotedString(StringBuilder sb, String str) {
        sb.append('\"');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case 10:
                    sb.append("%0A");
                    break;
                case 13:
                    sb.append("%0D");
                    break;
                case '\"':
                    sb.append("%22");
                    break;
                default:
                    sb.append(charAt);
                    break;
            }
        }
        sb.append('\"');
        return sb;
    }
}
