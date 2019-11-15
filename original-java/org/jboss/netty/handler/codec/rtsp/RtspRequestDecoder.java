package org.jboss.netty.handler.codec.rtsp;

import org.jboss.netty.handler.codec.http.DefaultHttpRequest;
import org.jboss.netty.handler.codec.http.HttpMessage;

public class RtspRequestDecoder extends RtspMessageDecoder {
    public RtspRequestDecoder() {
    }

    public RtspRequestDecoder(int i, int i2, int i3) {
        super(i, i2, i3);
    }

    /* access modifiers changed from: protected */
    public HttpMessage createMessage(String[] strArr) throws Exception {
        return new DefaultHttpRequest(RtspVersions.valueOf(strArr[2]), RtspMethods.valueOf(strArr[0]), strArr[1]);
    }

    /* access modifiers changed from: protected */
    public boolean isDecodingRequest() {
        return true;
    }
}
