package org.jboss.netty.buffer;

public interface WrappedChannelBuffer extends ChannelBuffer {
    ChannelBuffer unwrap();
}
