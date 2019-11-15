package org.jboss.netty.handler.codec.http;

import java.util.Collections;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;

public interface HttpChunk {
    public static final HttpChunkTrailer LAST_CHUNK = new HttpChunkTrailer() {
        public ChannelBuffer getContent() {
            return ChannelBuffers.EMPTY_BUFFER;
        }

        public void setContent(ChannelBuffer channelBuffer) {
            throw new IllegalStateException("read-only");
        }

        public boolean isLast() {
            return true;
        }

        public void addHeader(String str, Object obj) {
            throw new IllegalStateException("read-only");
        }

        public void clearHeaders() {
        }

        public boolean containsHeader(String str) {
            return false;
        }

        public String getHeader(String str) {
            return null;
        }

        public Set<String> getHeaderNames() {
            return Collections.emptySet();
        }

        public List<String> getHeaders(String str) {
            return Collections.emptyList();
        }

        public List<Entry<String, String>> getHeaders() {
            return Collections.emptyList();
        }

        public void removeHeader(String str) {
        }

        public void setHeader(String str, Object obj) {
            throw new IllegalStateException("read-only");
        }

        public void setHeader(String str, Iterable<?> iterable) {
            throw new IllegalStateException("read-only");
        }
    };

    ChannelBuffer getContent();

    boolean isLast();

    void setContent(ChannelBuffer channelBuffer);
}
