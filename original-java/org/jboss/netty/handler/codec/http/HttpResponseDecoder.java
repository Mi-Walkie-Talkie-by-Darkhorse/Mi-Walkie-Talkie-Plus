package org.jboss.netty.handler.codec.http;

public class HttpResponseDecoder extends HttpMessageDecoder {
    public HttpResponseDecoder() {
    }

    public HttpResponseDecoder(int i, int i2, int i3) {
        super(i, i2, i3);
    }

    /* access modifiers changed from: protected */
    public HttpMessage createMessage(String[] strArr) {
        return new DefaultHttpResponse(HttpVersion.valueOf(strArr[0]), new HttpResponseStatus(Integer.valueOf(strArr[1]).intValue(), strArr[2]));
    }

    /* access modifiers changed from: protected */
    public boolean isDecodingRequest() {
        return false;
    }
}
