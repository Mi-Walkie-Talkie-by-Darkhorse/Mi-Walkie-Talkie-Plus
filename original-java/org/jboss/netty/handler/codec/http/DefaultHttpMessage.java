package org.jboss.netty.handler.codec.http;

import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.util.internal.StringUtil;

public class DefaultHttpMessage implements HttpMessage {
    private boolean chunked;
    private ChannelBuffer content = ChannelBuffers.EMPTY_BUFFER;
    private final HttpHeaders headers = new HttpHeaders();
    private HttpVersion version;

    protected DefaultHttpMessage(HttpVersion httpVersion) {
        setProtocolVersion(httpVersion);
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

    @Deprecated
    public long getContentLength() {
        return HttpHeaders.getContentLength(this);
    }

    @Deprecated
    public long getContentLength(long j) {
        return HttpHeaders.getContentLength(this, j);
    }

    public boolean isChunked() {
        if (this.chunked) {
            return true;
        }
        return HttpCodecUtil.isTransferEncodingChunked(this);
    }

    public void setChunked(boolean z) {
        this.chunked = z;
        if (z) {
            setContent(ChannelBuffers.EMPTY_BUFFER);
        }
    }

    @Deprecated
    public boolean isKeepAlive() {
        return HttpHeaders.isKeepAlive(this);
    }

    public void clearHeaders() {
        this.headers.clearHeaders();
    }

    public void setContent(ChannelBuffer channelBuffer) {
        if (channelBuffer == null) {
            channelBuffer = ChannelBuffers.EMPTY_BUFFER;
        }
        if (!channelBuffer.readable() || !isChunked()) {
            this.content = channelBuffer;
            return;
        }
        throw new IllegalArgumentException("non-empty content disallowed if this.chunked == true");
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

    public HttpVersion getProtocolVersion() {
        return this.version;
    }

    public void setProtocolVersion(HttpVersion httpVersion) {
        if (httpVersion == null) {
            throw new NullPointerException("version");
        }
        this.version = httpVersion;
    }

    public ChannelBuffer getContent() {
        return this.content;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(version: ");
        sb.append(getProtocolVersion().getText());
        sb.append(", keepAlive: ");
        sb.append(HttpHeaders.isKeepAlive(this));
        sb.append(", chunked: ");
        sb.append(isChunked());
        sb.append(')');
        sb.append(StringUtil.NEWLINE);
        appendHeaders(sb);
        sb.setLength(sb.length() - StringUtil.NEWLINE.length());
        return sb.toString();
    }

    /* access modifiers changed from: 0000 */
    public void appendHeaders(StringBuilder sb) {
        for (Entry entry : getHeaders()) {
            sb.append((String) entry.getKey());
            sb.append(": ");
            sb.append((String) entry.getValue());
            sb.append(StringUtil.NEWLINE);
        }
    }
}
