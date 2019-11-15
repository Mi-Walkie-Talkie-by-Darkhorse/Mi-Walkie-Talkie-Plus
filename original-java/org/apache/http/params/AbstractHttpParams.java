package org.apache.http.params;

@Deprecated
public abstract class AbstractHttpParams implements HttpParams {
    protected AbstractHttpParams() {
        throw new RuntimeException("Stub!");
    }

    public long getLongParameter(String str, long j) {
        throw new RuntimeException("Stub!");
    }

    public HttpParams setLongParameter(String str, long j) {
        throw new RuntimeException("Stub!");
    }

    public int getIntParameter(String str, int i) {
        throw new RuntimeException("Stub!");
    }

    public HttpParams setIntParameter(String str, int i) {
        throw new RuntimeException("Stub!");
    }

    public double getDoubleParameter(String str, double d) {
        throw new RuntimeException("Stub!");
    }

    public HttpParams setDoubleParameter(String str, double d) {
        throw new RuntimeException("Stub!");
    }

    public boolean getBooleanParameter(String str, boolean z) {
        throw new RuntimeException("Stub!");
    }

    public HttpParams setBooleanParameter(String str, boolean z) {
        throw new RuntimeException("Stub!");
    }

    public boolean isParameterTrue(String str) {
        throw new RuntimeException("Stub!");
    }

    public boolean isParameterFalse(String str) {
        throw new RuntimeException("Stub!");
    }
}
