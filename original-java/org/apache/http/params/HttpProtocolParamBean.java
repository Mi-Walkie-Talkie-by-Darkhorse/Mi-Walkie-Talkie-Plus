package org.apache.http.params;

import org.apache.http.HttpVersion;

@Deprecated
public class HttpProtocolParamBean extends HttpAbstractParamBean {
    public HttpProtocolParamBean(HttpParams httpParams) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public void setHttpElementCharset(String str) {
        throw new RuntimeException("Stub!");
    }

    public void setContentCharset(String str) {
        throw new RuntimeException("Stub!");
    }

    public void setVersion(HttpVersion httpVersion) {
        throw new RuntimeException("Stub!");
    }

    public void setUserAgent(String str) {
        throw new RuntimeException("Stub!");
    }

    public void setUseExpectContinue(boolean z) {
        throw new RuntimeException("Stub!");
    }
}
