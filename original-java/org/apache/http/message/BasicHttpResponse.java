package org.apache.http.message;

import java.util.Locale;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.ReasonPhraseCatalog;
import org.apache.http.StatusLine;

@Deprecated
public class BasicHttpResponse extends AbstractHttpMessage implements HttpResponse {
    public BasicHttpResponse(StatusLine statusLine, ReasonPhraseCatalog reasonPhraseCatalog, Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public BasicHttpResponse(StatusLine statusLine) {
        throw new RuntimeException("Stub!");
    }

    public BasicHttpResponse(ProtocolVersion protocolVersion, int i, String str) {
        throw new RuntimeException("Stub!");
    }

    public ProtocolVersion getProtocolVersion() {
        throw new RuntimeException("Stub!");
    }

    public StatusLine getStatusLine() {
        throw new RuntimeException("Stub!");
    }

    public HttpEntity getEntity() {
        throw new RuntimeException("Stub!");
    }

    public Locale getLocale() {
        throw new RuntimeException("Stub!");
    }

    public void setStatusLine(StatusLine statusLine) {
        throw new RuntimeException("Stub!");
    }

    public void setStatusLine(ProtocolVersion protocolVersion, int i) {
        throw new RuntimeException("Stub!");
    }

    public void setStatusLine(ProtocolVersion protocolVersion, int i, String str) {
        throw new RuntimeException("Stub!");
    }

    public void setStatusCode(int i) {
        throw new RuntimeException("Stub!");
    }

    public void setReasonPhrase(String str) {
        throw new RuntimeException("Stub!");
    }

    public void setEntity(HttpEntity httpEntity) {
        throw new RuntimeException("Stub!");
    }

    public void setLocale(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public String getReason(int i) {
        throw new RuntimeException("Stub!");
    }
}
