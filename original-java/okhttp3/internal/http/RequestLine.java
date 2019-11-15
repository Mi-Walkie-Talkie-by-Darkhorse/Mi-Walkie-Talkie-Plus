package okhttp3.internal.http;

import java.net.Proxy.Type;
import okhttp3.HttpUrl;
import okhttp3.Request;

public final class RequestLine {
    private RequestLine() {
    }

    public static String get(Request request, Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(request.method());
        sb.append(' ');
        if (includeAuthorityInRequestLine(request, type)) {
            sb.append(request.url());
        } else {
            sb.append(requestPath(request.url()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    private static boolean includeAuthorityInRequestLine(Request request, Type type) {
        return !request.isHttps() && type == Type.HTTP;
    }

    public static String requestPath(HttpUrl httpUrl) {
        String encodedPath = httpUrl.encodedPath();
        String encodedQuery = httpUrl.encodedQuery();
        return encodedQuery != null ? encodedPath + '?' + encodedQuery : encodedPath;
    }
}
