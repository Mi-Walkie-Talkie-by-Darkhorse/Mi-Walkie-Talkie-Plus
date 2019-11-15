package org.jboss.netty.handler.codec.rtsp;

import org.apache.http.protocol.HTTP;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.http.HttpMessage;
import org.jboss.netty.handler.codec.http.HttpResponse;

public class RtspResponseEncoder extends RtspMessageEncoder {
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
