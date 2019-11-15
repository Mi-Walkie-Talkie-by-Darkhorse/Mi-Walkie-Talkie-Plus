package org.jboss.netty.handler.codec.http.websocketx;

import java.io.UnsupportedEncodingException;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.util.CharsetUtil;

public class CloseWebSocketFrame extends WebSocketFrame {
    public CloseWebSocketFrame() {
        setBinaryData(ChannelBuffers.EMPTY_BUFFER);
    }

    public CloseWebSocketFrame(int i, String str) {
        this(true, 0, i, str);
    }

    public CloseWebSocketFrame(boolean z, int i) {
        this(z, i, null);
    }

    public CloseWebSocketFrame(boolean z, int i, int i2, String str) {
        setFinalFragment(z);
        setRsv(i);
        byte[] bArr = new byte[0];
        if (str != null) {
            try {
                bArr = str.getBytes("UTF-8");
            } catch (UnsupportedEncodingException e) {
                bArr = str.getBytes();
            }
        }
        ChannelBuffer buffer = ChannelBuffers.buffer(bArr.length + 2);
        buffer.writeShort(i2);
        if (bArr.length > 0) {
            buffer.writeBytes(bArr);
        }
        buffer.readerIndex(0);
        setBinaryData(buffer);
    }

    public CloseWebSocketFrame(boolean z, int i, ChannelBuffer channelBuffer) {
        setFinalFragment(z);
        setRsv(i);
        if (channelBuffer == null) {
            setBinaryData(ChannelBuffers.EMPTY_BUFFER);
        } else {
            setBinaryData(channelBuffer);
        }
    }

    public int getStatusCode() {
        ChannelBuffer binaryData = getBinaryData();
        if (binaryData == null || binaryData.capacity() == 0) {
            return -1;
        }
        binaryData.readerIndex(0);
        short readShort = binaryData.readShort();
        binaryData.readerIndex(0);
        return readShort;
    }

    public String getReasonText() {
        ChannelBuffer binaryData = getBinaryData();
        if (binaryData == null || binaryData.capacity() <= 2) {
            return "";
        }
        binaryData.readerIndex(2);
        String channelBuffer = binaryData.toString(CharsetUtil.UTF_8);
        binaryData.readerIndex(0);
        return channelBuffer;
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
