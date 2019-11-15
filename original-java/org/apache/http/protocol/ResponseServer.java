package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;

@Deprecated
public class ResponseServer implements HttpResponseInterceptor {
    public ResponseServer() {
        throw new RuntimeException("Stub!");
    }

    public void process(HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }
}
