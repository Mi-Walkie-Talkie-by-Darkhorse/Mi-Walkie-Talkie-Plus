package org.jboss.netty.handler.codec.http;

import java.io.UnsupportedEncodingException;
import java.util.Map.Entry;
import org.apache.http.protocol.HTTP;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;
import org.jboss.netty.util.CharsetUtil;

public abstract class HttpMessageEncoder extends OneToOneEncoder {
    private static final byte[] CRLF = {HttpConstants.CR, 10};
    private static final ChannelBuffer LAST_CHUNK = ChannelBuffers.copiedBuffer((CharSequence) "0\r\n\r\n", CharsetUtil.US_ASCII);
    private volatile boolean transferEncodingChunked;

    /* access modifiers changed from: protected */
    public abstract void encodeInitialLine(ChannelBuffer channelBuffer, HttpMessage httpMessage) throws Exception;

    protected HttpMessageEncoder() {
    }

    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        boolean isTransferEncodingChunked;
        if (obj instanceof HttpMessage) {
            HttpMessage httpMessage = (HttpMessage) obj;
            if (!httpMessage.isChunked()) {
                isTransferEncodingChunked = HttpCodecUtil.isTransferEncodingChunked(httpMessage);
                this.transferEncodingChunked = isTransferEncodingChunked;
            } else if (HttpCodecUtil.isContentLengthSet(httpMessage)) {
                this.transferEncodingChunked = false;
                HttpCodecUtil.removeTransferEncodingChunked(httpMessage);
                isTransferEncodingChunked = false;
            } else {
                if (!HttpCodecUtil.isTransferEncodingChunked(httpMessage)) {
                    httpMessage.addHeader("Transfer-Encoding", "chunked");
                }
                this.transferEncodingChunked = true;
                isTransferEncodingChunked = true;
            }
            ChannelBuffer dynamicBuffer = ChannelBuffers.dynamicBuffer(channel.getConfig().getBufferFactory());
            encodeInitialLine(dynamicBuffer, httpMessage);
            encodeHeaders(dynamicBuffer, httpMessage);
            dynamicBuffer.writeByte(13);
            dynamicBuffer.writeByte(10);
            ChannelBuffer content = httpMessage.getContent();
            if (!content.readable()) {
                return dynamicBuffer;
            }
            if (isTransferEncodingChunked) {
                throw new IllegalArgumentException("HttpMessage.content must be empty if Transfer-Encoding is chunked.");
            }
            return ChannelBuffers.wrappedBuffer(dynamicBuffer, content);
        } else if (!(obj instanceof HttpChunk)) {
            return obj;
        } else {
            HttpChunk httpChunk = (HttpChunk) obj;
            if (!this.transferEncodingChunked) {
                return httpChunk.getContent();
            }
            if (httpChunk.isLast()) {
                this.transferEncodingChunked = false;
                if (!(httpChunk instanceof HttpChunkTrailer)) {
                    return LAST_CHUNK.duplicate();
                }
                ChannelBuffer dynamicBuffer2 = ChannelBuffers.dynamicBuffer(channel.getConfig().getBufferFactory());
                dynamicBuffer2.writeByte(48);
                dynamicBuffer2.writeByte(13);
                dynamicBuffer2.writeByte(10);
                encodeTrailingHeaders(dynamicBuffer2, (HttpChunkTrailer) httpChunk);
                dynamicBuffer2.writeByte(13);
                dynamicBuffer2.writeByte(10);
                return dynamicBuffer2;
            }
            ChannelBuffer content2 = httpChunk.getContent();
            int readableBytes = content2.readableBytes();
            return ChannelBuffers.wrappedBuffer(ChannelBuffers.copiedBuffer((CharSequence) Integer.toHexString(readableBytes), CharsetUtil.US_ASCII), ChannelBuffers.wrappedBuffer(CRLF), content2.slice(content2.readerIndex(), readableBytes), ChannelBuffers.wrappedBuffer(CRLF));
        }
    }

    private static void encodeHeaders(ChannelBuffer channelBuffer, HttpMessage httpMessage) {
        try {
            for (Entry entry : httpMessage.getHeaders()) {
                encodeHeader(channelBuffer, (String) entry.getKey(), (String) entry.getValue());
            }
        } catch (UnsupportedEncodingException e) {
            throw ((Error) new Error().initCause(e));
        }
    }

    private static void encodeTrailingHeaders(ChannelBuffer channelBuffer, HttpChunkTrailer httpChunkTrailer) {
        try {
            for (Entry entry : httpChunkTrailer.getHeaders()) {
                encodeHeader(channelBuffer, (String) entry.getKey(), (String) entry.getValue());
            }
        } catch (UnsupportedEncodingException e) {
            throw ((Error) new Error().initCause(e));
        }
    }

    private static void encodeHeader(ChannelBuffer channelBuffer, String str, String str2) throws UnsupportedEncodingException {
        channelBuffer.writeBytes(str.getBytes(HTTP.ASCII));
        channelBuffer.writeByte(58);
        channelBuffer.writeByte(32);
        channelBuffer.writeBytes(str2.getBytes(HTTP.ASCII));
        channelBuffer.writeByte(13);
        channelBuffer.writeByte(10);
    }
}
