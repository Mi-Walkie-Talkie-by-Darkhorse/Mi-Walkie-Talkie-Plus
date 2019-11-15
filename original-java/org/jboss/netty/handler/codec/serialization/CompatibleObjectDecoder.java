package org.jboss.netty.handler.codec.serialization;

import java.io.InputStream;
import java.io.ObjectInputStream;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferInputStream;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.replay.ReplayingDecoder;

@Deprecated
public class CompatibleObjectDecoder extends ReplayingDecoder<CompatibleObjectDecoderState> {
    private final SwitchableInputStream bin = new SwitchableInputStream();
    private ObjectInputStream oin;

    public CompatibleObjectDecoder() {
        super(CompatibleObjectDecoderState.READ_HEADER);
    }

    /* access modifiers changed from: protected */
    public ObjectInputStream newObjectInputStream(InputStream inputStream) throws Exception {
        return new ObjectInputStream(inputStream);
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, CompatibleObjectDecoderState compatibleObjectDecoderState) throws Exception {
        this.bin.switchStream(new ChannelBufferInputStream(channelBuffer));
        switch (compatibleObjectDecoderState) {
            case READ_HEADER:
                this.oin = newObjectInputStream(this.bin);
                checkpoint(CompatibleObjectDecoderState.READ_OBJECT);
                break;
            case READ_OBJECT:
                break;
            default:
                throw new IllegalStateException("Unknown state: " + compatibleObjectDecoderState);
        }
        return this.oin.readObject();
    }

    /* access modifiers changed from: protected */
    public Object decodeLast(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, CompatibleObjectDecoderState compatibleObjectDecoderState) throws Exception {
        switch (channelBuffer.readableBytes()) {
            case 0:
                return null;
            case 1:
                if (channelBuffer.getByte(channelBuffer.readerIndex()) == 121) {
                    channelBuffer.skipBytes(1);
                    this.oin.close();
                    return null;
                }
                break;
        }
        Object decode = decode(channelHandlerContext, channel, channelBuffer, compatibleObjectDecoderState);
        this.oin.close();
        return decode;
    }
}
