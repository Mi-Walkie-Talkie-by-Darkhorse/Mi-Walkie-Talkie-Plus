package org.jboss.netty.handler.codec.socks;

import java.net.IDN;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.socks.SocksMessage.AddressType;
import org.jboss.netty.handler.codec.socks.SocksMessage.CmdType;
import org.jboss.netty.handler.codec.socks.SocksRequest.SocksRequestType;
import org.jboss.netty.util.NetUtil;
import org.jboss.netty.util.internal.DetectionUtil;

public final class SocksCmdRequest extends SocksRequest {
    private final AddressType addressType;
    private final CmdType cmdType;
    private final String host;
    private final int port;

    public SocksCmdRequest(CmdType cmdType2, AddressType addressType2, String str, int i) {
        super(SocksRequestType.CMD);
        if (DetectionUtil.javaVersion() < 6) {
            throw new IllegalStateException("Only supported with Java version 6+");
        } else if (cmdType2 == null) {
            throw new NullPointerException("cmdType");
        } else if (addressType2 == null) {
            throw new NullPointerException("addressType");
        } else if (str == null) {
            throw new NullPointerException("host");
        } else {
            switch (addressType2) {
                case IPv4:
                    if (!NetUtil.isValidIpV4Address(str)) {
                        throw new IllegalArgumentException(str + " is not a valid IPv4 address");
                    }
                    break;
                case DOMAIN:
                    if (IDN.toASCII(str).length() > 255) {
                        throw new IllegalArgumentException(str + " IDN: " + IDN.toASCII(str) + " exceeds 255 char limit");
                    }
                    break;
                case IPv6:
                    if (!NetUtil.isValidIpV6Address(str)) {
                        throw new IllegalArgumentException(str + " is not a valid IPv6 address");
                    }
                    break;
            }
            if (i >= 0 || i < 65535) {
                this.cmdType = cmdType2;
                this.addressType = addressType2;
                this.host = IDN.toASCII(str);
                this.port = i;
                return;
            }
            throw new IllegalArgumentException(i + " is not in bounds 0 < x < 65536");
        }
    }

    public CmdType getCmdType() {
        return this.cmdType;
    }

    public AddressType getAddressType() {
        return this.addressType;
    }

    public String getHost() {
        return IDN.toUnicode(this.host);
    }

    public int getPort() {
        return this.port;
    }

    public void encodeAsByteBuf(ChannelBuffer channelBuffer) throws Exception {
        channelBuffer.writeByte(getProtocolVersion().getByteValue());
        channelBuffer.writeByte(this.cmdType.getByteValue());
        channelBuffer.writeByte(0);
        channelBuffer.writeByte(this.addressType.getByteValue());
        switch (this.addressType) {
            case IPv4:
                channelBuffer.writeBytes(NetUtil.createByteArrayFromIpAddressString(this.host));
                channelBuffer.writeShort(this.port);
                return;
            case DOMAIN:
                channelBuffer.writeByte(this.host.length());
                channelBuffer.writeBytes(this.host.getBytes("US-ASCII"));
                channelBuffer.writeShort(this.port);
                return;
            case IPv6:
                channelBuffer.writeBytes(NetUtil.createByteArrayFromIpAddressString(this.host));
                channelBuffer.writeShort(this.port);
                return;
            default:
                return;
        }
    }
}
