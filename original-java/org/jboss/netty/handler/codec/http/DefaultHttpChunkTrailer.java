package org.jboss.netty.handler.codec.http;

import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

public class DefaultHttpChunkTrailer implements HttpChunkTrailer {
    private final HttpHeaders headers = new HttpHeaders() {
        /* access modifiers changed from: 0000 */
        public void validateHeaderName(String str) {
            super.validateHeaderName(str);
            if (str.equalsIgnoreCase("Content-Length") || str.equalsIgnoreCase("Transfer-Encoding") || str.equalsIgnoreCase(Names.TRAILER)) {
                throw new IllegalArgumentException("prohibited trailing header: " + str);
            }
        }
    };

    public boolean isLast() {
        return true;
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

    public ChannelBuffer getContent() {
        return ChannelBuffers.EMPTY_BUFFER;
    }

    public void setContent(ChannelBuffer channelBuffer) {
        throw new IllegalStateException("read-only");
    }
}
