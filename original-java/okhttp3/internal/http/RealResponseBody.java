package okhttp3.internal.http;

import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;

public final class RealResponseBody extends ResponseBody {
    private final Headers headers;
    private final BufferedSource source;

    public RealResponseBody(Headers headers2, BufferedSource bufferedSource) {
        this.headers = headers2;
        this.source = bufferedSource;
    }

    public MediaType contentType() {
        String str = this.headers.get("Content-Type");
        if (str != null) {
            return MediaType.parse(str);
        }
        return null;
    }

    public long contentLength() {
        return HttpHeaders.contentLength(this.headers);
    }

    public BufferedSource source() {
        return this.source;
    }
}
