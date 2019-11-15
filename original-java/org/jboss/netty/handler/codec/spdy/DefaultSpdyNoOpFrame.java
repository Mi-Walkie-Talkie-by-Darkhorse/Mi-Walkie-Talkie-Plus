package org.jboss.netty.handler.codec.spdy;

public class DefaultSpdyNoOpFrame implements SpdyNoOpFrame {
    public String toString() {
        return getClass().getSimpleName();
    }
}
