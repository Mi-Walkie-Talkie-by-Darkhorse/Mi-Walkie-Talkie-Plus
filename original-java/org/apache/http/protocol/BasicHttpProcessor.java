package org.apache.http.protocol;

import java.io.IOException;
import java.util.List;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;

@Deprecated
public final class BasicHttpProcessor implements HttpProcessor, HttpRequestInterceptorList, HttpResponseInterceptorList {
    protected List requestInterceptors;
    protected List responseInterceptors;

    public BasicHttpProcessor() {
        throw new RuntimeException("Stub!");
    }

    public void addRequestInterceptor(HttpRequestInterceptor httpRequestInterceptor) {
        throw new RuntimeException("Stub!");
    }

    public void addRequestInterceptor(HttpRequestInterceptor httpRequestInterceptor, int i) {
        throw new RuntimeException("Stub!");
    }

    public void addResponseInterceptor(HttpResponseInterceptor httpResponseInterceptor, int i) {
        throw new RuntimeException("Stub!");
    }

    public void removeRequestInterceptorByClass(Class cls) {
        throw new RuntimeException("Stub!");
    }

    public void removeResponseInterceptorByClass(Class cls) {
        throw new RuntimeException("Stub!");
    }

    public final void addInterceptor(HttpRequestInterceptor httpRequestInterceptor) {
        throw new RuntimeException("Stub!");
    }

    public final void addInterceptor(HttpRequestInterceptor httpRequestInterceptor, int i) {
        throw new RuntimeException("Stub!");
    }

    public int getRequestInterceptorCount() {
        throw new RuntimeException("Stub!");
    }

    public HttpRequestInterceptor getRequestInterceptor(int i) {
        throw new RuntimeException("Stub!");
    }

    public void clearRequestInterceptors() {
        throw new RuntimeException("Stub!");
    }

    public void addResponseInterceptor(HttpResponseInterceptor httpResponseInterceptor) {
        throw new RuntimeException("Stub!");
    }

    public final void addInterceptor(HttpResponseInterceptor httpResponseInterceptor) {
        throw new RuntimeException("Stub!");
    }

    public final void addInterceptor(HttpResponseInterceptor httpResponseInterceptor, int i) {
        throw new RuntimeException("Stub!");
    }

    public int getResponseInterceptorCount() {
        throw new RuntimeException("Stub!");
    }

    public HttpResponseInterceptor getResponseInterceptor(int i) {
        throw new RuntimeException("Stub!");
    }

    public void clearResponseInterceptors() {
        throw new RuntimeException("Stub!");
    }

    public void setInterceptors(List list) {
        throw new RuntimeException("Stub!");
    }

    public void clearInterceptors() {
        throw new RuntimeException("Stub!");
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) throws IOException, HttpException {
        throw new RuntimeException("Stub!");
    }

    public void process(HttpResponse httpResponse, HttpContext httpContext) throws IOException, HttpException {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void copyInterceptors(BasicHttpProcessor basicHttpProcessor) {
        throw new RuntimeException("Stub!");
    }

    public BasicHttpProcessor copy() {
        throw new RuntimeException("Stub!");
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
