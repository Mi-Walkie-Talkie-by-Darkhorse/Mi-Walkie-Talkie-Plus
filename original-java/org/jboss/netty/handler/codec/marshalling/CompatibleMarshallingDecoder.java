package org.jboss.netty.handler.codec.marshalling;

import org.jboss.marshalling.ByteInput;
import org.jboss.marshalling.Unmarshaller;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.handler.codec.frame.TooLongFrameException;
import org.jboss.netty.handler.codec.replay.ReplayingDecoder;
import org.jboss.netty.handler.codec.replay.VoidEnum;

public class CompatibleMarshallingDecoder extends ReplayingDecoder<VoidEnum> {
    private boolean discardingTooLongFrame;
    protected final int maxObjectSize;
    protected final UnmarshallerProvider provider;

    public CompatibleMarshallingDecoder(UnmarshallerProvider unmarshallerProvider, int i) {
        this.provider = unmarshallerProvider;
        this.maxObjectSize = i;
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, VoidEnum voidEnum) throws Exception {
        ByteInput byteInput;
        if (this.discardingTooLongFrame) {
            channelBuffer.skipBytes(actualReadableBytes());
            checkpoint();
            return null;
        }
        Unmarshaller unmarshaller = this.provider.getUnmarshaller(channelHandlerContext);
        ByteInput channelBufferByteInput = new ChannelBufferByteInput(channelBuffer);
        if (this.maxObjectSize != Integer.MAX_VALUE) {
            byteInput = new LimitingByteInput(channelBufferByteInput, (long) this.maxObjectSize);
        } else {
            byteInput = channelBufferByteInput;
        }
        try {
            unmarshaller.start(byteInput);
            Object readObject = unmarshaller.readObject();
            unmarshaller.finish();
            unmarshaller.close();
            return readObject;
        } catch (TooBigObjectException e) {
            this.discardingTooLongFrame = true;
            throw new TooLongFrameException();
        } catch (Throwable th) {
            unmarshaller.close();
            throw th;
        }
    }

    /* access modifiers changed from: protected */
    public Object decodeLast(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, VoidEnum voidEnum) throws Exception {
        switch (channelBuffer.readableBytes()) {
            case 0:
                return null;
            case 1:
                if (channelBuffer.getByte(channelBuffer.readerIndex()) == 121) {
                    channelBuffer.skipBytes(1);
                    return null;
                }
                break;
        }
        return decode(channelHandlerContext, channel, channelBuffer, voidEnum);
    }

    public void exceptionCaught(ChannelHandlerContext channelHandlerContext, ExceptionEvent exceptionEvent) throws Exception {
        if (exceptionEvent.getCause() instanceof TooLongFrameException) {
            exceptionEvent.getChannel().close();
        } else {
            super.exceptionCaught(channelHandlerContext, exceptionEvent);
        }
    }
}
