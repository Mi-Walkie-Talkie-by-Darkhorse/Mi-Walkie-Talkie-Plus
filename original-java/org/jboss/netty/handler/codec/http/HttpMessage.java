package org.jboss.netty.handler.codec.http;

import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.jboss.netty.buffer.ChannelBuffer;

public interface HttpMessage {
    void addHeader(String str, Object obj);

    void clearHeaders();

    boolean containsHeader(String str);

    ChannelBuffer getContent();

    @Deprecated
    long getContentLength();

    @Deprecated
    long getContentLength(long j);

    String getHeader(String str);

    Set<String> getHeaderNames();

    List<Entry<String, String>> getHeaders();

    List<String> getHeaders(String str);

    HttpVersion getProtocolVersion();

    boolean isChunked();

    @Deprecated
    boolean isKeepAlive();

    void removeHeader(String str);

    void setChunked(boolean z);

    void setContent(ChannelBuffer channelBuffer);

    void setHeader(String str, Iterable<?> iterable);

    void setHeader(String str, Object obj);

    void setProtocolVersion(HttpVersion httpVersion);
}
