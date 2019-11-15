package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;

@Deprecated
public class RequestTargetHost implements HttpRequestInterceptor {
    public RequestTargetHost() {
        throw new RuntimeException("Stub!");
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }
}
