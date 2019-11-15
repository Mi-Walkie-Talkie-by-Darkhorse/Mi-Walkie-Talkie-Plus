package org.jboss.netty.handler.codec.replay;

import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.buffer.DynamicChannelBuffer;

@Deprecated
class UnsafeDynamicChannelBuffer extends DynamicChannelBuffer {
    UnsafeDynamicChannelBuffer(ChannelBufferFactory channelBufferFactory, int i) {
        super(channelBufferFactory.getDefaultOrder(), i, channelBufferFactory);
    }

    UnsafeDynamicChannelBuffer(ChannelBufferFactory channelBufferFactory) {
        this(channelBufferFactory, 256);
    }

    /* access modifiers changed from: protected */
    public void checkReadableBytes(int i) {
    }
}
