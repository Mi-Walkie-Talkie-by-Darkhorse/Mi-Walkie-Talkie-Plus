package org.jboss.netty.handler.codec.spdy;

public interface SpdyPingFrame {
    @Deprecated
    int getID();

    int getId();

    @Deprecated
    void setID(int i);

    void setId(int i);
}
