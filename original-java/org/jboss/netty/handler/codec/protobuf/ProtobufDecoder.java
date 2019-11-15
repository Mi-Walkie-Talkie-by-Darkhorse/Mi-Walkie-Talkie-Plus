package org.jboss.netty.handler.codec.protobuf;

import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.MessageLite;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneDecoder;

@Sharable
public class ProtobufDecoder extends OneToOneDecoder {
    private static final boolean HAS_PARSER;
    private final ExtensionRegistry extensionRegistry;
    private final MessageLite prototype;

    static {
        boolean z = false;
        try {
            MessageLite.class.getDeclaredMethod("getParserForType", new Class[0]);
            z = true;
        } catch (Throwable th) {
        }
        HAS_PARSER = z;
    }

    public ProtobufDecoder(MessageLite messageLite) {
        this(messageLite, null);
    }

    public ProtobufDecoder(MessageLite messageLite, ExtensionRegistry extensionRegistry2) {
        if (messageLite == null) {
            throw new NullPointerException("prototype");
        }
        this.prototype = messageLite.getDefaultInstanceForType();
        this.extensionRegistry = extensionRegistry2;
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        byte[] bArr;
        int i = 0;
        if (!(obj instanceof ChannelBuffer)) {
            return obj;
        }
        ChannelBuffer channelBuffer = (ChannelBuffer) obj;
        int readableBytes = channelBuffer.readableBytes();
        if (channelBuffer.hasArray()) {
            bArr = channelBuffer.array();
            i = channelBuffer.arrayOffset() + channelBuffer.readerIndex();
        } else {
            bArr = new byte[readableBytes];
            channelBuffer.getBytes(channelBuffer.readerIndex(), bArr, 0, readableBytes);
        }
        if (this.extensionRegistry == null) {
            if (HAS_PARSER) {
                return this.prototype.getParserForType().parseFrom(bArr, i, readableBytes);
            }
            return this.prototype.newBuilderForType().mergeFrom(bArr, i, readableBytes).build();
        } else if (HAS_PARSER) {
            return this.prototype.getParserForType().parseFrom(bArr, i, readableBytes, this.extensionRegistry);
        } else {
            return this.prototype.newBuilderForType().mergeFrom(bArr, i, readableBytes, this.extensionRegistry).build();
        }
    }
}
