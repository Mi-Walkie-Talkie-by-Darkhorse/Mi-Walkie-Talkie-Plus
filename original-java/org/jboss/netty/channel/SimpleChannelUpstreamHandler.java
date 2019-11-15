package org.jboss.netty.channel;

import java.util.List;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public class SimpleChannelUpstreamHandler implements ChannelUpstreamHandler {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SimpleChannelUpstreamHandler.class.getName());

    public void handleUpstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (channelEvent instanceof MessageEvent) {
            messageReceived(channelHandlerContext, (MessageEvent) channelEvent);
        } else if (channelEvent instanceof WriteCompletionEvent) {
            writeComplete(channelHandlerContext, (WriteCompletionEvent) channelEvent);
        } else if (channelEvent instanceof ChildChannelStateEvent) {
            ChildChannelStateEvent childChannelStateEvent = (ChildChannelStateEvent) channelEvent;
            if (childChannelStateEvent.getChildChannel().isOpen()) {
                childChannelOpen(channelHandlerContext, childChannelStateEvent);
            } else {
                childChannelClosed(channelHandlerContext, childChannelStateEvent);
            }
        } else if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            switch (channelStateEvent.getState()) {
                case OPEN:
                    if (Boolean.TRUE.equals(channelStateEvent.getValue())) {
                        channelOpen(channelHandlerContext, channelStateEvent);
                        return;
                    } else {
                        channelClosed(channelHandlerContext, channelStateEvent);
                        return;
                    }
                case BOUND:
                    if (channelStateEvent.getValue() != null) {
                        channelBound(channelHandlerContext, channelStateEvent);
                        return;
                    } else {
                        channelUnbound(channelHandlerContext, channelStateEvent);
                        return;
                    }
                case CONNECTED:
                    if (channelStateEvent.getValue() != null) {
                        channelConnected(channelHandlerContext, channelStateEvent);
                        return;
                    } else {
                        channelDisconnected(channelHandlerContext, channelStateEvent);
                        return;
                    }
                case INTEREST_OPS:
                    channelInterestChanged(channelHandlerContext, channelStateEvent);
                    return;
                default:
                    channelHandlerContext.sendUpstream(channelEvent);
                    return;
            }
        } else if (channelEvent instanceof ExceptionEvent) {
            exceptionCaught(channelHandlerContext, (ExceptionEvent) channelEvent);
        } else {
            channelHandlerContext.sendUpstream(channelEvent);
        }
    }

    public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        channelHandlerContext.sendUpstream(messageEvent);
    }

    public void exceptionCaught(ChannelHandlerContext channelHandlerContext, ExceptionEvent exceptionEvent) throws Exception {
        ChannelHandler channelHandler;
        ChannelHandler last = channelHandlerContext.getPipeline().getLast();
        if (!(last instanceof ChannelUpstreamHandler) && (channelHandlerContext instanceof DefaultChannelPipeline)) {
            List names = channelHandlerContext.getPipeline().getNames();
            int size = names.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                channelHandler = channelHandlerContext.getPipeline().get((String) names.get(size));
                if (channelHandler instanceof ChannelUpstreamHandler) {
                    break;
                }
                size--;
            }
        }
        channelHandler = last;
        if (this == channelHandler) {
            logger.warn("EXCEPTION, please implement " + getClass().getName() + ".exceptionCaught() for proper handling.", exceptionEvent.getCause());
        }
        channelHandlerContext.sendUpstream(exceptionEvent);
    }

    public void channelOpen(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendUpstream(channelStateEvent);
    }

    public void channelBound(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendUpstream(channelStateEvent);
    }

    public void channelConnected(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendUpstream(channelStateEvent);
    }

    public void channelInterestChanged(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendUpstream(channelStateEvent);
    }

    public void channelDisconnected(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendUpstream(channelStateEvent);
    }

    public void channelUnbound(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendUpstream(channelStateEvent);
    }

    public void channelClosed(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendUpstream(channelStateEvent);
    }

    public void writeComplete(ChannelHandlerContext channelHandlerContext, WriteCompletionEvent writeCompletionEvent) throws Exception {
        channelHandlerContext.sendUpstream(writeCompletionEvent);
    }

    public void childChannelOpen(ChannelHandlerContext channelHandlerContext, ChildChannelStateEvent childChannelStateEvent) throws Exception {
        channelHandlerContext.sendUpstream(childChannelStateEvent);
    }

    public void childChannelClosed(ChannelHandlerContext channelHandlerContext, ChildChannelStateEvent childChannelStateEvent) throws Exception {
        channelHandlerContext.sendUpstream(childChannelStateEvent);
    }
}
