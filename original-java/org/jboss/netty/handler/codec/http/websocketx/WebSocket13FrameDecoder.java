package org.jboss.netty.handler.codec.http.websocketx;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;

public class WebSocket13FrameDecoder extends WebSocket08FrameDecoder {
    public WebSocket13FrameDecoder(boolean z, boolean z2) {
        this(z, z2, FileTracerConfig.FOREVER);
    }

    public WebSocket13FrameDecoder(boolean z, boolean z2, long j) {
        super(z, z2, j);
    }
}
