package org.jboss.netty.handler.codec.http.websocketx;

import com.tencent.connect.common.Constants;

public enum WebSocketVersion {
    UNKNOWN,
    V00,
    V07,
    V08,
    V13;

    public String toHttpHeaderValue() {
        if (this == V00) {
            return "0";
        }
        if (this == V07) {
            return "7";
        }
        if (this == V08) {
            return Constants.VIA_SHARE_TYPE_PUBLISHVIDEO;
        }
        if (this == V13) {
            return Constants.VIA_REPORT_TYPE_JOININ_GROUP;
        }
        throw new IllegalStateException("Unknown web socket version: " + this);
    }
}
