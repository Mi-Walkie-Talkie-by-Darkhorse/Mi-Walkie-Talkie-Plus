package org.apache.http.params;

import java.io.Serializable;

@Deprecated
public final class BasicHttpParams extends AbstractHttpParams implements Serializable {
    public BasicHttpParams() {
        throw new RuntimeException("Stub!");
    }

    public Object getParameter(String str) {
        throw new RuntimeException("Stub!");
    }

    public HttpParams setParameter(String str, Object obj) {
        throw new RuntimeException("Stub!");
    }

    public boolean removeParameter(String str) {
        throw new RuntimeException("Stub!");
    }

    public void setParameters(String[] strArr, Object obj) {
        throw new RuntimeException("Stub!");
    }

    public boolean isParameterSet(String str) {
        throw new RuntimeException("Stub!");
    }

    public boolean isParameterSetLocally(String str) {
        throw new RuntimeException("Stub!");
    }

    public void clear() {
        throw new RuntimeException("Stub!");
    }

    public HttpParams copy() {
        throw new RuntimeException("Stub!");
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void copyParams(HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }
}
