package org.apache.http.impl;

import java.util.Locale;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.ProtocolVersion;
import org.apache.http.ReasonPhraseCatalog;
import org.apache.http.StatusLine;
import org.apache.http.protocol.HttpContext;

@Deprecated
public class DefaultHttpResponseFactory implements HttpResponseFactory {
    protected final ReasonPhraseCatalog reasonCatalog;

    public DefaultHttpResponseFactory(ReasonPhraseCatalog reasonPhraseCatalog) {
        throw new RuntimeException("Stub!");
    }

    public DefaultHttpResponseFactory() {
        throw new RuntimeException("Stub!");
    }

    public HttpResponse newHttpResponse(ProtocolVersion protocolVersion, int i, HttpContext httpContext) {
        throw new RuntimeException("Stub!");
    }

    public HttpResponse newHttpResponse(StatusLine statusLine, HttpContext httpContext) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public Locale determineLocale(HttpContext httpContext) {
        throw new RuntimeException("Stub!");
    }
}
