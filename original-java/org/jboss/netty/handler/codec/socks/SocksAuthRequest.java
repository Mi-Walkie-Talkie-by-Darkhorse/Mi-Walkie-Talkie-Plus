package org.jboss.netty.handler.codec.socks;

import java.nio.charset.CharsetEncoder;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.socks.SocksMessage.SubnegotiationVersion;
import org.jboss.netty.handler.codec.socks.SocksRequest.SocksRequestType;
import org.jboss.netty.util.CharsetUtil;

public final class SocksAuthRequest extends SocksRequest {
    private static final SubnegotiationVersion SUBNEGOTIATION_VERSION = SubnegotiationVersion.AUTH_PASSWORD;
    private static final CharsetEncoder asciiEncoder = CharsetUtil.getEncoder(CharsetUtil.US_ASCII);
    private final String password;
    private final String username;

    public SocksAuthRequest(String str, String str2) {
        super(SocksRequestType.AUTH);
        if (str == null) {
            throw new NullPointerException("username");
        } else if (str2 == null) {
            throw new NullPointerException("username");
        } else if (!asciiEncoder.canEncode(str) || !asciiEncoder.canEncode(str2)) {
            throw new IllegalArgumentException(" username: " + str + " or password: " + str2 + " values should be in pure ascii");
        } else if (str.length() > 255) {
            throw new IllegalArgumentException(str + " exceeds 255 char limit");
        } else if (str2.length() > 255) {
            throw new IllegalArgumentException(str2 + " exceeds 255 char limit");
        } else {
            this.username = str;
            this.password = str2;
        }
    }

    public String getUsername() {
        return this.username;
    }

    public String getPassword() {
        return this.password;
    }

    public void encodeAsByteBuf(ChannelBuffer channelBuffer) throws Exception {
        channelBuffer.writeByte(SUBNEGOTIATION_VERSION.getByteValue());
        channelBuffer.writeByte(this.username.length());
        channelBuffer.writeBytes(this.username.getBytes("US-ASCII"));
        channelBuffer.writeByte(this.password.length());
        channelBuffer.writeBytes(this.password.getBytes("US-ASCII"));
    }
}
