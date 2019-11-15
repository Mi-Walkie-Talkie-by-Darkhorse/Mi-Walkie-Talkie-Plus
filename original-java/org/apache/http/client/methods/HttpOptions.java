package org.apache.http.client.methods;

import java.net.URI;
import java.util.Set;
import org.apache.http.HttpResponse;

@Deprecated
public class HttpOptions extends HttpRequestBase {
    public static final String METHOD_NAME = "OPTIONS";

    public HttpOptions() {
        throw new RuntimeException("Stub!");
    }

    public HttpOptions(URI uri) {
        throw new RuntimeException("Stub!");
    }

    public HttpOptions(String str) {
        throw new RuntimeException("Stub!");
    }

    public String getMethod() {
        throw new RuntimeException("Stub!");
    }

    public Set<String> getAllowedMethods(HttpResponse httpResponse) {
        throw new RuntimeException("Stub!");
    }
}
