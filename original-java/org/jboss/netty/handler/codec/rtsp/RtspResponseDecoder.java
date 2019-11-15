package org.jboss.netty.handler.codec.rtsp;

import org.jboss.netty.handler.codec.http.DefaultHttpResponse;
import org.jboss.netty.handler.codec.http.HttpMessage;
import org.jboss.netty.handler.codec.http.HttpResponseStatus;

public class RtspResponseDecoder extends RtspMessageDecoder {
    public RtspResponseDecoder() {
    }

    public RtspResponseDecoder(int i, int i2, int i3) {
        super(i, i2, i3);
    }

    /* access modifiers changed from: protected */
    public HttpMessage createMessage(String[] strArr) throws Exception {
        return new DefaultHttpResponse(RtspVersions.valueOf(strArr[0]), new HttpResponseStatus(Integer.valueOf(strArr[1]).intValue(), strArr[2]));
    }

    /* access modifiers changed from: protected */
    public boolean isDecodingRequest() {
        return false;
    }
}
