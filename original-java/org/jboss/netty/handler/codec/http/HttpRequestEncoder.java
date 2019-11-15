package org.jboss.netty.handler.codec.http;

import org.apache.http.protocol.HTTP;
import org.jboss.netty.buffer.ChannelBuffer;

public class HttpRequestEncoder extends HttpMessageEncoder {
    private static final char SLASH = '/';

    /* access modifiers changed from: protected */
    public void encodeInitialLine(ChannelBuffer channelBuffer, HttpMessage httpMessage) throws Exception {
        HttpRequest httpRequest = (HttpRequest) httpMessage;
        channelBuffer.writeBytes(httpRequest.getMethod().toString().getBytes(HTTP.ASCII));
        channelBuffer.writeByte(32);
        String uri = httpRequest.getUri();
        int indexOf = uri.indexOf("://");
        if (indexOf != -1 && uri.lastIndexOf(47) <= indexOf + 3) {
            uri = uri + '/';
        }
        channelBuffer.writeBytes(uri.getBytes("UTF-8"));
        channelBuffer.writeByte(32);
        channelBuffer.writeBytes(httpRequest.getProtocolVersion().toString().getBytes(HTTP.ASCII));
        channelBuffer.writeByte(13);
        channelBuffer.writeByte(10);
    }
}
