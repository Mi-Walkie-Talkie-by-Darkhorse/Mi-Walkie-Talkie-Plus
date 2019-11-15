package org.jboss.netty.handler.codec.http.websocketx;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.handler.codec.base64.Base64;
import org.jboss.netty.util.CharsetUtil;

final class WebSocketUtil {
    @Deprecated
    static byte[] md5(byte[] bArr) {
        try {
            return MessageDigest.getInstance("MD5").digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            throw new InternalError("MD5 not supported on this platform");
        }
    }

    static ChannelBuffer md5(ChannelBuffer channelBuffer) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            if (channelBuffer.hasArray()) {
                instance.update(channelBuffer.array(), channelBuffer.readerIndex(), channelBuffer.readableBytes());
            } else {
                instance.update(channelBuffer.toByteBuffer());
            }
            return ChannelBuffers.wrappedBuffer(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            throw new InternalError("MD5 not supported on this platform");
        }
    }

    @Deprecated
    static byte[] sha1(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA1").digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            throw new InternalError("SHA-1 not supported on this platform");
        }
    }

    static ChannelBuffer sha1(ChannelBuffer channelBuffer) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA1");
            if (channelBuffer.hasArray()) {
                instance.update(channelBuffer.array(), channelBuffer.readerIndex(), channelBuffer.readableBytes());
            } else {
                instance.update(channelBuffer.toByteBuffer());
            }
            return ChannelBuffers.wrappedBuffer(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            throw new InternalError("SHA-1 not supported on this platform");
        }
    }

    @Deprecated
    static String base64(byte[] bArr) {
        return Base64.encode(ChannelBuffers.wrappedBuffer(bArr)).toString(CharsetUtil.UTF_8);
    }

    static String base64(ChannelBuffer channelBuffer) {
        return Base64.encode(channelBuffer).toString(CharsetUtil.UTF_8);
    }

    static byte[] randomBytes(int i) {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) randomNumber(0, 255);
        }
        return bArr;
    }

    static int randomNumber(int i, int i2) {
        return (int) ((Math.random() * ((double) i2)) + ((double) i));
    }

    private WebSocketUtil() {
    }
}
