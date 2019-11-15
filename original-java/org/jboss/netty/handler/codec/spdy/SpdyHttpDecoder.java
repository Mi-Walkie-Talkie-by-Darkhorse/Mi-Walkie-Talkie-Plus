package org.jboss.netty.handler.codec.spdy;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.handler.codec.frame.TooLongFrameException;
import org.jboss.netty.handler.codec.http.DefaultHttpRequest;
import org.jboss.netty.handler.codec.http.DefaultHttpResponse;
import org.jboss.netty.handler.codec.http.HttpHeaders;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import org.jboss.netty.handler.codec.http.HttpMessage;
import org.jboss.netty.handler.codec.http.HttpMethod;
import org.jboss.netty.handler.codec.http.HttpRequest;
import org.jboss.netty.handler.codec.http.HttpResponse;
import org.jboss.netty.handler.codec.http.HttpResponseStatus;
import org.jboss.netty.handler.codec.http.HttpVersion;
import org.jboss.netty.handler.codec.oneone.OneToOneDecoder;

public class SpdyHttpDecoder extends OneToOneDecoder {
    private final int maxContentLength;
    private final Map<Integer, HttpMessage> messageMap;
    private final int spdyVersion;

    @Deprecated
    public SpdyHttpDecoder(int i) {
        this(2, i);
    }

    public SpdyHttpDecoder(int i, int i2) {
        this(i, i2, new HashMap());
    }

    protected SpdyHttpDecoder(int i, int i2, Map<Integer, HttpMessage> map) {
        if (i < 2 || i > 3) {
            throw new IllegalArgumentException("unsupported version: " + i);
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("maxContentLength must be a positive integer: " + i2);
        } else {
            this.spdyVersion = i;
            this.maxContentLength = i2;
            this.messageMap = map;
        }
    }

    /* access modifiers changed from: protected */
    public HttpMessage putMessage(int i, HttpMessage httpMessage) {
        return (HttpMessage) this.messageMap.put(Integer.valueOf(i), httpMessage);
    }

    /* access modifiers changed from: protected */
    public HttpMessage getMessage(int i) {
        return (HttpMessage) this.messageMap.get(Integer.valueOf(i));
    }

    /* access modifiers changed from: protected */
    public HttpMessage removeMessage(int i) {
        return (HttpMessage) this.messageMap.remove(Integer.valueOf(i));
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        if (obj instanceof SpdySynStreamFrame) {
            SpdySynStreamFrame spdySynStreamFrame = (SpdySynStreamFrame) obj;
            int streamId = spdySynStreamFrame.getStreamId();
            if (SpdyCodecUtil.isServerId(streamId)) {
                int associatedToStreamId = spdySynStreamFrame.getAssociatedToStreamId();
                if (associatedToStreamId == 0) {
                    Channels.write(channelHandlerContext, Channels.future(channel), (Object) new DefaultSpdyRstStreamFrame(streamId, SpdyStreamStatus.INVALID_STREAM));
                }
                String url = SpdyHeaders.getUrl(this.spdyVersion, spdySynStreamFrame);
                if (url == null) {
                    Channels.write(channelHandlerContext, Channels.future(channel), (Object) new DefaultSpdyRstStreamFrame(streamId, SpdyStreamStatus.PROTOCOL_ERROR));
                }
                try {
                    HttpResponse createHttpResponse = createHttpResponse(this.spdyVersion, spdySynStreamFrame);
                    SpdyHttpHeaders.setStreamId(createHttpResponse, streamId);
                    SpdyHttpHeaders.setAssociatedToStreamId(createHttpResponse, associatedToStreamId);
                    SpdyHttpHeaders.setPriority(createHttpResponse, spdySynStreamFrame.getPriority());
                    SpdyHttpHeaders.setUrl(createHttpResponse, url);
                    if (spdySynStreamFrame.isLast()) {
                        HttpHeaders.setContentLength(createHttpResponse, 0);
                        return createHttpResponse;
                    }
                    putMessage(streamId, createHttpResponse);
                } catch (Exception e) {
                    Channels.write(channelHandlerContext, Channels.future(channel), (Object) new DefaultSpdyRstStreamFrame(streamId, SpdyStreamStatus.PROTOCOL_ERROR));
                }
            } else {
                try {
                    HttpRequest createHttpRequest = createHttpRequest(this.spdyVersion, spdySynStreamFrame);
                    SpdyHttpHeaders.setStreamId(createHttpRequest, streamId);
                    if (spdySynStreamFrame.isLast()) {
                        return createHttpRequest;
                    }
                    putMessage(streamId, createHttpRequest);
                } catch (Exception e2) {
                    DefaultSpdySynReplyFrame defaultSpdySynReplyFrame = new DefaultSpdySynReplyFrame(streamId);
                    defaultSpdySynReplyFrame.setLast(true);
                    SpdyHeaders.setStatus(this.spdyVersion, defaultSpdySynReplyFrame, HttpResponseStatus.BAD_REQUEST);
                    SpdyHeaders.setVersion(this.spdyVersion, defaultSpdySynReplyFrame, HttpVersion.HTTP_1_0);
                    Channels.write(channelHandlerContext, Channels.future(channel), (Object) defaultSpdySynReplyFrame);
                }
            }
        } else if (obj instanceof SpdySynReplyFrame) {
            SpdySynReplyFrame spdySynReplyFrame = (SpdySynReplyFrame) obj;
            int streamId2 = spdySynReplyFrame.getStreamId();
            try {
                HttpResponse createHttpResponse2 = createHttpResponse(this.spdyVersion, spdySynReplyFrame);
                SpdyHttpHeaders.setStreamId(createHttpResponse2, streamId2);
                if (spdySynReplyFrame.isLast()) {
                    HttpHeaders.setContentLength(createHttpResponse2, 0);
                    return createHttpResponse2;
                }
                putMessage(streamId2, createHttpResponse2);
            } catch (Exception e3) {
                Channels.write(channelHandlerContext, Channels.future(channel), (Object) new DefaultSpdyRstStreamFrame(streamId2, SpdyStreamStatus.PROTOCOL_ERROR));
            }
        } else if (obj instanceof SpdyHeadersFrame) {
            SpdyHeadersFrame spdyHeadersFrame = (SpdyHeadersFrame) obj;
            int streamId3 = spdyHeadersFrame.getStreamId();
            HttpMessage message = getMessage(streamId3);
            if (message == null) {
                return null;
            }
            for (Entry entry : spdyHeadersFrame.getHeaders()) {
                message.addHeader((String) entry.getKey(), entry.getValue());
            }
            if (spdyHeadersFrame.isLast()) {
                HttpHeaders.setContentLength(message, (long) message.getContent().readableBytes());
                removeMessage(streamId3);
                return message;
            }
        } else if (obj instanceof SpdyDataFrame) {
            SpdyDataFrame spdyDataFrame = (SpdyDataFrame) obj;
            int streamId4 = spdyDataFrame.getStreamId();
            HttpMessage message2 = getMessage(streamId4);
            if (message2 == null) {
                return null;
            }
            ChannelBuffer content = message2.getContent();
            if (content.readableBytes() > this.maxContentLength - spdyDataFrame.getData().readableBytes()) {
                removeMessage(streamId4);
                throw new TooLongFrameException("HTTP content length exceeded " + this.maxContentLength + " bytes.");
            }
            if (content == ChannelBuffers.EMPTY_BUFFER) {
                content = ChannelBuffers.dynamicBuffer(channel.getConfig().getBufferFactory());
                content.writeBytes(spdyDataFrame.getData());
                message2.setContent(content);
            } else {
                content.writeBytes(spdyDataFrame.getData());
            }
            if (spdyDataFrame.isLast()) {
                HttpHeaders.setContentLength(message2, (long) content.readableBytes());
                removeMessage(streamId4);
                return message2;
            }
        } else if (obj instanceof SpdyRstStreamFrame) {
            removeMessage(((SpdyRstStreamFrame) obj).getStreamId());
        }
        return null;
    }

    private static HttpRequest createHttpRequest(int i, SpdyHeaderBlock spdyHeaderBlock) throws Exception {
        HttpMethod method = SpdyHeaders.getMethod(i, spdyHeaderBlock);
        String url = SpdyHeaders.getUrl(i, spdyHeaderBlock);
        HttpVersion version = SpdyHeaders.getVersion(i, spdyHeaderBlock);
        SpdyHeaders.removeMethod(i, spdyHeaderBlock);
        SpdyHeaders.removeUrl(i, spdyHeaderBlock);
        SpdyHeaders.removeVersion(i, spdyHeaderBlock);
        DefaultHttpRequest defaultHttpRequest = new DefaultHttpRequest(version, method, url);
        SpdyHeaders.removeScheme(i, spdyHeaderBlock);
        if (i >= 3) {
            String host = SpdyHeaders.getHost(spdyHeaderBlock);
            SpdyHeaders.removeHost(spdyHeaderBlock);
            HttpHeaders.setHost(defaultHttpRequest, host);
        }
        for (Entry entry : spdyHeaderBlock.getHeaders()) {
            defaultHttpRequest.addHeader((String) entry.getKey(), entry.getValue());
        }
        HttpHeaders.setKeepAlive(defaultHttpRequest, true);
        defaultHttpRequest.removeHeader("Transfer-Encoding");
        return defaultHttpRequest;
    }

    private static HttpResponse createHttpResponse(int i, SpdyHeaderBlock spdyHeaderBlock) throws Exception {
        HttpResponseStatus status = SpdyHeaders.getStatus(i, spdyHeaderBlock);
        HttpVersion version = SpdyHeaders.getVersion(i, spdyHeaderBlock);
        SpdyHeaders.removeStatus(i, spdyHeaderBlock);
        SpdyHeaders.removeVersion(i, spdyHeaderBlock);
        DefaultHttpResponse defaultHttpResponse = new DefaultHttpResponse(version, status);
        for (Entry entry : spdyHeaderBlock.getHeaders()) {
            defaultHttpResponse.addHeader((String) entry.getKey(), entry.getValue());
        }
        HttpHeaders.setKeepAlive(defaultHttpResponse, true);
        defaultHttpResponse.removeHeader("Transfer-Encoding");
        defaultHttpResponse.removeHeader(Names.TRAILER);
        return defaultHttpResponse;
    }
}
