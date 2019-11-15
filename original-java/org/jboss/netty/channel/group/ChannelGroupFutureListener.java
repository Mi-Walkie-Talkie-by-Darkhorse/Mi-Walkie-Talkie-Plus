package org.jboss.netty.channel.group;

import java.util.EventListener;

public interface ChannelGroupFutureListener extends EventListener {
    void operationComplete(ChannelGroupFuture channelGroupFuture) throws Exception;
}
