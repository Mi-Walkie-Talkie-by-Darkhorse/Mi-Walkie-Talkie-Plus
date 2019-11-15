package org.jboss.netty.handler.codec.spdy;

public interface SpdySynReplyFrame extends SpdyHeaderBlock {
    @Deprecated
    int getStreamID();

    int getStreamId();

    boolean isLast();

    void setLast(boolean z);

    @Deprecated
    void setStreamID(int i);

    void setStreamId(int i);
}
