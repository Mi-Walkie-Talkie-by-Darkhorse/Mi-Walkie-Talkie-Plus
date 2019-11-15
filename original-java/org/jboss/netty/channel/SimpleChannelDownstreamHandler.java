package org.jboss.netty.channel;

public class SimpleChannelDownstreamHandler implements ChannelDownstreamHandler {
    public void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (channelEvent instanceof MessageEvent) {
            writeRequested(channelHandlerContext, (MessageEvent) channelEvent);
        } else if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            switch (channelStateEvent.getState()) {
                case OPEN:
                    if (!Boolean.TRUE.equals(channelStateEvent.getValue())) {
                        closeRequested(channelHandlerContext, channelStateEvent);
                        return;
                    }
                    return;
                case BOUND:
                    if (channelStateEvent.getValue() != null) {
                        bindRequested(channelHandlerContext, channelStateEvent);
                        return;
                    } else {
                        unbindRequested(channelHandlerContext, channelStateEvent);
                        return;
                    }
                case CONNECTED:
                    if (channelStateEvent.getValue() != null) {
                        connectRequested(channelHandlerContext, channelStateEvent);
                        return;
                    } else {
                        disconnectRequested(channelHandlerContext, channelStateEvent);
                        return;
                    }
                case INTEREST_OPS:
                    setInterestOpsRequested(channelHandlerContext, channelStateEvent);
                    return;
                default:
                    channelHandlerContext.sendDownstream(channelEvent);
                    return;
            }
        } else {
            channelHandlerContext.sendDownstream(channelEvent);
        }
    }

    public void writeRequested(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        channelHandlerContext.sendDownstream(messageEvent);
    }

    public void bindRequested(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendDownstream(channelStateEvent);
    }

    public void connectRequested(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendDownstream(channelStateEvent);
    }

    public void setInterestOpsRequested(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendDownstream(channelStateEvent);
    }

    public void disconnectRequested(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendDownstream(channelStateEvent);
    }

    public void unbindRequested(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendDownstream(channelStateEvent);
    }

    public void closeRequested(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.sendDownstream(channelStateEvent);
    }
}
