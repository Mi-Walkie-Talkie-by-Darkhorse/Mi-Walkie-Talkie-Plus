package org.apache.http.impl;

import java.io.IOException;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.impl.entity.EntityDeserializer;
import org.apache.http.impl.entity.EntitySerializer;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.HttpParams;

@Deprecated
public abstract class AbstractHttpClientConnection implements HttpClientConnection {
    /* access modifiers changed from: protected */
    public abstract void assertOpen() throws IllegalStateException;

    public AbstractHttpClientConnection() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public EntityDeserializer createEntityDeserializer() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public EntitySerializer createEntitySerializer() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public HttpResponseFactory createHttpResponseFactory() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public HttpMessageParser createResponseParser(SessionInputBuffer sessionInputBuffer, HttpResponseFactory httpResponseFactory, HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public HttpMessageWriter createRequestWriter(SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void init(SessionInputBuffer sessionInputBuffer, SessionOutputBuffer sessionOutputBuffer, HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    public boolean isResponseAvailable(int i) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void sendRequestHeader(HttpRequest httpRequest) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void doFlush() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void flush() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public HttpResponse receiveResponseHeader() throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void receiveResponseEntity(HttpResponse httpResponse) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean isStale() {
        throw new RuntimeException("Stub!");
    }

    public HttpConnectionMetrics getMetrics() {
        throw new RuntimeException("Stub!");
    }
}
