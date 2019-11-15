package org.jboss.netty.channel;

public interface ChannelFutureProgressListener extends ChannelFutureListener {
    void operationProgressed(ChannelFuture channelFuture, long j, long j2, long j3) throws Exception;
}
