package org.jboss.netty.handler.codec.http;

import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public interface HttpChunkTrailer extends HttpChunk {
    void addHeader(String str, Object obj);

    void clearHeaders();

    boolean containsHeader(String str);

    String getHeader(String str);

    Set<String> getHeaderNames();

    List<Entry<String, String>> getHeaders();

    List<String> getHeaders(String str);

    boolean isLast();

    void removeHeader(String str);

    void setHeader(String str, Iterable<?> iterable);

    void setHeader(String str, Object obj);
}
