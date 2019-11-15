package org.jboss.netty.handler.codec.http;

import org.jboss.netty.handler.codec.spdy.SpdyHeaders.Spdy2HttpNames;
import org.jboss.netty.util.internal.StringUtil;

public class DefaultHttpRequest extends DefaultHttpMessage implements HttpRequest {
    private HttpMethod method;
    private String uri;

    public DefaultHttpRequest(HttpVersion httpVersion, HttpMethod httpMethod, String str) {
        super(httpVersion);
        setMethod(httpMethod);
        setUri(str);
    }

    public HttpMethod getMethod() {
        return this.method;
    }

    public void setMethod(HttpMethod httpMethod) {
        if (httpMethod == null) {
            throw new NullPointerException(Spdy2HttpNames.METHOD);
        }
        this.method = httpMethod;
    }

    public String getUri() {
        return this.uri;
    }

    public void setUri(String str) {
        if (str == null) {
            throw new NullPointerException("uri");
        }
        this.uri = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(chunked: ");
        sb.append(isChunked());
        sb.append(')');
        sb.append(StringUtil.NEWLINE);
        sb.append(getMethod().toString());
        sb.append(' ');
        sb.append(getUri());
        sb.append(' ');
        sb.append(getProtocolVersion().getText());
        sb.append(StringUtil.NEWLINE);
        appendHeaders(sb);
        sb.setLength(sb.length() - StringUtil.NEWLINE.length());
        return sb.toString();
    }
}
