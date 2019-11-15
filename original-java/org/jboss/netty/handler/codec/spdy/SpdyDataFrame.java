package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.buffer.ChannelBuffer;

public interface SpdyDataFrame {
    ChannelBuffer getData();

    @Deprecated
    int getStreamID();

    int getStreamId();

    @Deprecated
    boolean isCompressed();

    boolean isLast();

    @Deprecated
    void setCompressed(boolean z);

    void setData(ChannelBuffer channelBuffer);

    void setLast(boolean z);

    @Deprecated
    void setStreamID(int i);

    void setStreamId(int i);
}
