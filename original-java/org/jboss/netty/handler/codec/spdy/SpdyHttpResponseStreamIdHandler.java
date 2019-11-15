package org.jboss.netty.handler.codec.spdy;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelHandler;
import org.jboss.netty.handler.codec.http.HttpMessage;
import org.jboss.netty.handler.codec.http.HttpResponse;
import org.jboss.netty.handler.codec.spdy.SpdyHttpHeaders.Names;

public class SpdyHttpResponseStreamIdHandler extends SimpleChannelHandler {
    private static final Integer NO_ID = Integer.valueOf(-1);
    private final Queue<Integer> ids = new ConcurrentLinkedQueue();

    public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        if (messageEvent.getMessage() instanceof HttpMessage) {
            if (!((HttpMessage) messageEvent.getMessage()).containsHeader(Names.STREAM_ID)) {
                this.ids.add(NO_ID);
            } else {
                this.ids.add(Integer.valueOf(SpdyHttpHeaders.getStreamId((HttpMessage) messageEvent.getMessage())));
            }
        } else if (messageEvent.getMessage() instanceof SpdyRstStreamFrame) {
            this.ids.remove(Integer.valueOf(((SpdyRstStreamFrame) messageEvent.getMessage()).getStreamId()));
        }
        super.messageReceived(channelHandlerContext, messageEvent);
    }

    public void writeRequested(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        if (messageEvent.getMessage() instanceof HttpResponse) {
            HttpResponse httpResponse = (HttpResponse) messageEvent.getMessage();
            Integer num = (Integer) this.ids.poll();
            if (!(num == null || num.intValue() == NO_ID.intValue() || httpResponse.containsHeader(Names.STREAM_ID))) {
                SpdyHttpHeaders.setStreamId(httpResponse, num.intValue());
            }
        }
        super.writeRequested(channelHandlerContext, messageEvent);
    }
}
