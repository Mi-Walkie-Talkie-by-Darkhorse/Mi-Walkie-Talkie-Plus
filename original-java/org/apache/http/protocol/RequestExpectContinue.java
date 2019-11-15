package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;

@Deprecated
public class RequestExpectContinue implements HttpRequestInterceptor {
    public RequestExpectContinue() {
        throw new RuntimeException("Stub!");
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }
}
