package org.jboss.netty.handler.codec.serialization;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferInputStream;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.frame.LengthFieldBasedFrameDecoder;

public class ObjectDecoder extends LengthFieldBasedFrameDecoder {
    private final ClassResolver classResolver;

    @Deprecated
    public ObjectDecoder() {
        this(1048576);
    }

    public ObjectDecoder(ClassResolver classResolver2) {
        this(1048576, classResolver2);
    }

    @Deprecated
    public ObjectDecoder(int i) {
        this(i, ClassResolvers.weakCachingResolver(null));
    }

    public ObjectDecoder(int i, ClassResolver classResolver2) {
        super(i, 0, 4, 0, 4);
        if (classResolver2 == null) {
            throw new NullPointerException("classResolver");
        }
        this.classResolver = classResolver2;
    }

    @Deprecated
    public ObjectDecoder(int i, ClassLoader classLoader) {
        this(i, ClassResolvers.weakCachingResolver(classLoader));
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        ChannelBuffer channelBuffer2 = (ChannelBuffer) super.decode(channelHandlerContext, channel, channelBuffer);
        if (channelBuffer2 == null) {
            return null;
        }
        return new CompactObjectInputStream(new ChannelBufferInputStream(channelBuffer2), this.classResolver).readObject();
    }

    /* access modifiers changed from: protected */
    public ChannelBuffer extractFrame(ChannelBuffer channelBuffer, int i, int i2) {
        return channelBuffer.slice(i, i2);
    }
}
