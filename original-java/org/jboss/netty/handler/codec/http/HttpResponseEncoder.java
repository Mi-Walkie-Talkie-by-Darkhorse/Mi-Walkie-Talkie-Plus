package org.jboss.netty.handler.codec.http;

import org.apache.http.protocol.HTTP;
import org.jboss.netty.buffer.ChannelBuffer;

public class HttpResponseEncoder extends HttpMessageEncoder {
    /* access modifiers changed from: protected */
    public void encodeInitialLine(ChannelBuffer channelBuffer, HttpMessage httpMessage) throws Exception {
        HttpResponse httpResponse = (HttpResponse) httpMessage;
        channelBuffer.writeBytes(httpResponse.getProtocolVersion().toString().getBytes(HTTP.ASCII));
        channelBuffer.writeByte(32);
        channelBuffer.writeBytes(String.valueOf(httpResponse.getStatus().getCode()).getBytes(HTTP.ASCII));
        channelBuffer.writeByte(32);
        channelBuffer.writeBytes(String.valueOf(httpResponse.getStatus().getReasonPhrase()).getBytes(HTTP.ASCII));
        channelBuffer.writeByte(13);
        channelBuffer.writeByte(10);
    }
}
