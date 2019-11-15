package org.jboss.netty.handler.codec.spdy;

import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.jboss.netty.util.internal.StringUtil;

public class DefaultSpdyHeaderBlock implements SpdyHeaderBlock {
    private final SpdyHeaders headers = new SpdyHeaders();
    private boolean invalid;

    protected DefaultSpdyHeaderBlock() {
    }

    public boolean isInvalid() {
        return this.invalid;
    }

    public void setInvalid() {
        this.invalid = true;
    }

    public void addHeader(String str, Object obj) {
        this.headers.addHeader(str, obj);
    }

    public void setHeader(String str, Object obj) {
        this.headers.setHeader(str, obj);
    }

    public void setHeader(String str, Iterable<?> iterable) {
        this.headers.setHeader(str, iterable);
    }

    public void removeHeader(String str) {
        this.headers.removeHeader(str);
    }

    public void clearHeaders() {
        this.headers.clearHeaders();
    }

    public String getHeader(String str) {
        return this.headers.getHeader(str);
    }

    public List<String> getHeaders(String str) {
        return this.headers.getHeaders(str);
    }

    public List<Entry<String, String>> getHeaders() {
        return this.headers.getHeaders();
    }

    public boolean containsHeader(String str) {
        return this.headers.containsHeader(str);
    }

    public Set<String> getHeaderNames() {
        return this.headers.getHeaderNames();
    }

    /* access modifiers changed from: protected */
    public void appendHeaders(StringBuilder sb) {
        for (Entry entry : getHeaders()) {
            sb.append("    ");
            sb.append((String) entry.getKey());
            sb.append(": ");
            sb.append((String) entry.getValue());
            sb.append(StringUtil.NEWLINE);
        }
    }
}
