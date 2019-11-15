package org.apache.http.client.protocol;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

@Deprecated
public class RequestTargetAuthentication implements HttpRequestInterceptor {
    public RequestTargetAuthentication() {
        throw new RuntimeException("Stub!");
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }
}
