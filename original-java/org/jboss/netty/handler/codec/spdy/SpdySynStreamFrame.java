package org.jboss.netty.handler.codec.spdy;

public interface SpdySynStreamFrame extends SpdyHeaderBlock {
    @Deprecated
    int getAssociatedToStreamID();

    int getAssociatedToStreamId();

    byte getPriority();

    @Deprecated
    int getStreamID();

    int getStreamId();

    boolean isLast();

    boolean isUnidirectional();

    @Deprecated
    void setAssociatedToStreamID(int i);

    void setAssociatedToStreamId(int i);

    void setLast(boolean z);

    void setPriority(byte b);

    @Deprecated
    void setStreamID(int i);

    void setStreamId(int i);

    void setUnidirectional(boolean z);
}
