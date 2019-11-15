package org.jboss.netty.handler.codec.socks;

import org.jboss.netty.handler.codec.replay.ReplayingDecoder;
import org.jboss.netty.handler.codec.socks.SocksMessage.AddressType;
import org.jboss.netty.handler.codec.socks.SocksMessage.CmdType;
import org.jboss.netty.handler.codec.socks.SocksMessage.ProtocolVersion;

public class SocksCmdRequestDecoder extends ReplayingDecoder<State> {
    private static final String name = "SOCKS_CMD_REQUEST_DECODER";
    private AddressType addressType;
    private CmdType cmdType;
    private int fieldLength;
    private String host;
    private SocksRequest msg = SocksCommonUtils.UNKNOWN_SOCKS_REQUEST;
    private int port;
    private byte reserved;
    private ProtocolVersion version;

    enum State {
        CHECK_PROTOCOL_VERSION,
        READ_CMD_HEADER,
        READ_CMD_ADDRESS
    }

    public static String getName() {
        return name;
    }

    public SocksCmdRequestDecoder() {
        super(State.CHECK_PROTOCOL_VERSION);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0057, code lost:
        r5.host = org.jboss.netty.handler.codec.socks.SocksCommonUtils.intToIp(r8.readInt());
        r5.port = r8.readUnsignedShort();
        r5.msg = new org.jboss.netty.handler.codec.socks.SocksCmdRequest(r5.cmdType, r5.addressType, r5.host, r5.port);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0077, code lost:
        r5.fieldLength = r8.readByte();
        r5.host = r8.readBytes(r5.fieldLength).toString(org.jboss.netty.util.CharsetUtil.US_ASCII);
        r5.port = r8.readUnsignedShort();
        r5.msg = new org.jboss.netty.handler.codec.socks.SocksCmdRequest(r5.cmdType, r5.addressType, r5.host, r5.port);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x00a2, code lost:
        r5.host = org.jboss.netty.handler.codec.socks.SocksCommonUtils.ipv6toStr(r8.readBytes(16).array());
        r5.port = r8.readUnsignedShort();
        r5.msg = new org.jboss.netty.handler.codec.socks.SocksCmdRequest(r5.cmdType, r5.addressType, r5.host, r5.port);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:2:0x000b, code lost:
        r6.getPipeline().remove((org.jboss.netty.channel.ChannelHandler) r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0014, code lost:
        return r5.msg;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x002a, code lost:
        r5.cmdType = org.jboss.netty.handler.codec.socks.SocksMessage.CmdType.fromByte(r8.readByte());
        r5.reserved = r8.readByte();
        r5.addressType = org.jboss.netty.handler.codec.socks.SocksMessage.AddressType.fromByte(r8.readByte());
        checkpoint(org.jboss.netty.handler.codec.socks.SocksCmdRequestDecoder.State.READ_CMD_ADDRESS);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0053, code lost:
        switch(r5.addressType) {
            case org.jboss.netty.handler.codec.socks.SocksMessage.AddressType.IPv4 :org.jboss.netty.handler.codec.socks.SocksMessage$AddressType: goto L_0x0057;
            case org.jboss.netty.handler.codec.socks.SocksMessage.AddressType.DOMAIN :org.jboss.netty.handler.codec.socks.SocksMessage$AddressType: goto L_0x0077;
            case org.jboss.netty.handler.codec.socks.SocksMessage.AddressType.IPv6 :org.jboss.netty.handler.codec.socks.SocksMessage$AddressType: goto L_0x00a2;
            default: goto L_0x0056;
        };
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object decode(org.jboss.netty.channel.ChannelHandlerContext r6, org.jboss.netty.channel.Channel r7, org.jboss.netty.buffer.ChannelBuffer r8, org.jboss.netty.handler.codec.socks.SocksCmdRequestDecoder.State r9) throws java.lang.Exception {
        /*
            r5 = this;
            int[] r0 = org.jboss.netty.handler.codec.socks.SocksCmdRequestDecoder.AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$socks$SocksCmdRequestDecoder$State
            int r1 = r9.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x0015;
                case 2: goto L_0x002a;
                case 3: goto L_0x0049;
                default: goto L_0x000b;
            }
        L_0x000b:
            org.jboss.netty.channel.ChannelPipeline r0 = r6.getPipeline()
            r0.remove(r5)
            org.jboss.netty.handler.codec.socks.SocksRequest r0 = r5.msg
            return r0
        L_0x0015:
            byte r0 = r8.readByte()
            org.jboss.netty.handler.codec.socks.SocksMessage$ProtocolVersion r0 = org.jboss.netty.handler.codec.socks.SocksMessage.ProtocolVersion.fromByte(r0)
            r5.version = r0
            org.jboss.netty.handler.codec.socks.SocksMessage$ProtocolVersion r0 = r5.version
            org.jboss.netty.handler.codec.socks.SocksMessage$ProtocolVersion r1 = org.jboss.netty.handler.codec.socks.SocksMessage.ProtocolVersion.SOCKS5
            if (r0 != r1) goto L_0x000b
            org.jboss.netty.handler.codec.socks.SocksCmdRequestDecoder$State r0 = org.jboss.netty.handler.codec.socks.SocksCmdRequestDecoder.State.READ_CMD_HEADER
            r5.checkpoint(r0)
        L_0x002a:
            byte r0 = r8.readByte()
            org.jboss.netty.handler.codec.socks.SocksMessage$CmdType r0 = org.jboss.netty.handler.codec.socks.SocksMessage.CmdType.fromByte(r0)
            r5.cmdType = r0
            byte r0 = r8.readByte()
            r5.reserved = r0
            byte r0 = r8.readByte()
            org.jboss.netty.handler.codec.socks.SocksMessage$AddressType r0 = org.jboss.netty.handler.codec.socks.SocksMessage.AddressType.fromByte(r0)
            r5.addressType = r0
            org.jboss.netty.handler.codec.socks.SocksCmdRequestDecoder$State r0 = org.jboss.netty.handler.codec.socks.SocksCmdRequestDecoder.State.READ_CMD_ADDRESS
            r5.checkpoint(r0)
        L_0x0049:
            int[] r0 = org.jboss.netty.handler.codec.socks.SocksCmdRequestDecoder.AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$socks$SocksMessage$AddressType
            org.jboss.netty.handler.codec.socks.SocksMessage$AddressType r1 = r5.addressType
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x0057;
                case 2: goto L_0x0077;
                case 3: goto L_0x00a2;
                default: goto L_0x0056;
            }
        L_0x0056:
            goto L_0x000b
        L_0x0057:
            int r0 = r8.readInt()
            java.lang.String r0 = org.jboss.netty.handler.codec.socks.SocksCommonUtils.intToIp(r0)
            r5.host = r0
            int r0 = r8.readUnsignedShort()
            r5.port = r0
            org.jboss.netty.handler.codec.socks.SocksCmdRequest r0 = new org.jboss.netty.handler.codec.socks.SocksCmdRequest
            org.jboss.netty.handler.codec.socks.SocksMessage$CmdType r1 = r5.cmdType
            org.jboss.netty.handler.codec.socks.SocksMessage$AddressType r2 = r5.addressType
            java.lang.String r3 = r5.host
            int r4 = r5.port
            r0.<init>(r1, r2, r3, r4)
            r5.msg = r0
            goto L_0x000b
        L_0x0077:
            byte r0 = r8.readByte()
            r5.fieldLength = r0
            int r0 = r5.fieldLength
            org.jboss.netty.buffer.ChannelBuffer r0 = r8.readBytes(r0)
            java.nio.charset.Charset r1 = org.jboss.netty.util.CharsetUtil.US_ASCII
            java.lang.String r0 = r0.toString(r1)
            r5.host = r0
            int r0 = r8.readUnsignedShort()
            r5.port = r0
            org.jboss.netty.handler.codec.socks.SocksCmdRequest r0 = new org.jboss.netty.handler.codec.socks.SocksCmdRequest
            org.jboss.netty.handler.codec.socks.SocksMessage$CmdType r1 = r5.cmdType
            org.jboss.netty.handler.codec.socks.SocksMessage$AddressType r2 = r5.addressType
            java.lang.String r3 = r5.host
            int r4 = r5.port
            r0.<init>(r1, r2, r3, r4)
            r5.msg = r0
            goto L_0x000b
        L_0x00a2:
            r0 = 16
            org.jboss.netty.buffer.ChannelBuffer r0 = r8.readBytes(r0)
            byte[] r0 = r0.array()
            java.lang.String r0 = org.jboss.netty.handler.codec.socks.SocksCommonUtils.ipv6toStr(r0)
            r5.host = r0
            int r0 = r8.readUnsignedShort()
            r5.port = r0
            org.jboss.netty.handler.codec.socks.SocksCmdRequest r0 = new org.jboss.netty.handler.codec.socks.SocksCmdRequest
            org.jboss.netty.handler.codec.socks.SocksMessage$CmdType r1 = r5.cmdType
            org.jboss.netty.handler.codec.socks.SocksMessage$AddressType r2 = r5.addressType
            java.lang.String r3 = r5.host
            int r4 = r5.port
            r0.<init>(r1, r2, r3, r4)
            r5.msg = r0
            goto L_0x000b
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.socks.SocksCmdRequestDecoder.decode(org.jboss.netty.channel.ChannelHandlerContext, org.jboss.netty.channel.Channel, org.jboss.netty.buffer.ChannelBuffer, org.jboss.netty.handler.codec.socks.SocksCmdRequestDecoder$State):java.lang.Object");
    }
}
