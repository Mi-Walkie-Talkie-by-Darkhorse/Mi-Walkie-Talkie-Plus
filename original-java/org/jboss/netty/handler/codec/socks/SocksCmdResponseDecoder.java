package org.jboss.netty.handler.codec.socks;

import org.jboss.netty.handler.codec.replay.ReplayingDecoder;
import org.jboss.netty.handler.codec.socks.SocksMessage.AddressType;
import org.jboss.netty.handler.codec.socks.SocksMessage.CmdStatus;
import org.jboss.netty.handler.codec.socks.SocksMessage.ProtocolVersion;

public class SocksCmdResponseDecoder extends ReplayingDecoder<State> {
    private static final String name = "SOCKS_CMD_RESPONSE_DECODER";
    private AddressType addressType;
    private CmdStatus cmdStatus;
    private int fieldLength;
    private String host;
    private SocksResponse msg = SocksCommonUtils.UNKNOWN_SOCKS_RESPONSE;
    private int port;
    private byte reserved;
    private ProtocolVersion version;

    public enum State {
        CHECK_PROTOCOL_VERSION,
        READ_CMD_HEADER,
        READ_CMD_ADDRESS
    }

    public static String getName() {
        return name;
    }

    public SocksCmdResponseDecoder() {
        super(State.CHECK_PROTOCOL_VERSION);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0057, code lost:
        r3.host = org.jboss.netty.handler.codec.socks.SocksCommonUtils.intToIp(r6.readInt());
        r3.port = r6.readUnsignedShort();
        r3.msg = new org.jboss.netty.handler.codec.socks.SocksCmdResponse(r3.cmdStatus, r3.addressType);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0073, code lost:
        r3.fieldLength = r6.readByte();
        r3.host = r6.readBytes(r3.fieldLength).toString(org.jboss.netty.util.CharsetUtil.US_ASCII);
        r3.port = r6.readUnsignedShort();
        r3.msg = new org.jboss.netty.handler.codec.socks.SocksCmdResponse(r3.cmdStatus, r3.addressType);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x009a, code lost:
        r3.host = org.jboss.netty.handler.codec.socks.SocksCommonUtils.ipv6toStr(r6.readBytes(16).array());
        r3.port = r6.readUnsignedShort();
        r3.msg = new org.jboss.netty.handler.codec.socks.SocksCmdResponse(r3.cmdStatus, r3.addressType);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:2:0x000b, code lost:
        r4.getPipeline().remove((org.jboss.netty.channel.ChannelHandler) r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0014, code lost:
        return r3.msg;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x002a, code lost:
        r3.cmdStatus = org.jboss.netty.handler.codec.socks.SocksMessage.CmdStatus.fromByte(r6.readByte());
        r3.reserved = r6.readByte();
        r3.addressType = org.jboss.netty.handler.codec.socks.SocksMessage.AddressType.fromByte(r6.readByte());
        checkpoint(org.jboss.netty.handler.codec.socks.SocksCmdResponseDecoder.State.READ_CMD_ADDRESS);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0053, code lost:
        switch(r3.addressType) {
            case org.jboss.netty.handler.codec.socks.SocksMessage.AddressType.IPv4 :org.jboss.netty.handler.codec.socks.SocksMessage$AddressType: goto L_0x0057;
            case org.jboss.netty.handler.codec.socks.SocksMessage.AddressType.DOMAIN :org.jboss.netty.handler.codec.socks.SocksMessage$AddressType: goto L_0x0073;
            case org.jboss.netty.handler.codec.socks.SocksMessage.AddressType.IPv6 :org.jboss.netty.handler.codec.socks.SocksMessage$AddressType: goto L_0x009a;
            default: goto L_0x0056;
        };
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object decode(org.jboss.netty.channel.ChannelHandlerContext r4, org.jboss.netty.channel.Channel r5, org.jboss.netty.buffer.ChannelBuffer r6, org.jboss.netty.handler.codec.socks.SocksCmdResponseDecoder.State r7) throws java.lang.Exception {
        /*
            r3 = this;
            int[] r0 = org.jboss.netty.handler.codec.socks.SocksCmdResponseDecoder.AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$socks$SocksCmdResponseDecoder$State
            int r1 = r7.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x0015;
                case 2: goto L_0x002a;
                case 3: goto L_0x0049;
                default: goto L_0x000b;
            }
        L_0x000b:
            org.jboss.netty.channel.ChannelPipeline r0 = r4.getPipeline()
            r0.remove(r3)
            org.jboss.netty.handler.codec.socks.SocksResponse r0 = r3.msg
            return r0
        L_0x0015:
            byte r0 = r6.readByte()
            org.jboss.netty.handler.codec.socks.SocksMessage$ProtocolVersion r0 = org.jboss.netty.handler.codec.socks.SocksMessage.ProtocolVersion.fromByte(r0)
            r3.version = r0
            org.jboss.netty.handler.codec.socks.SocksMessage$ProtocolVersion r0 = r3.version
            org.jboss.netty.handler.codec.socks.SocksMessage$ProtocolVersion r1 = org.jboss.netty.handler.codec.socks.SocksMessage.ProtocolVersion.SOCKS5
            if (r0 != r1) goto L_0x000b
            org.jboss.netty.handler.codec.socks.SocksCmdResponseDecoder$State r0 = org.jboss.netty.handler.codec.socks.SocksCmdResponseDecoder.State.READ_CMD_HEADER
            r3.checkpoint(r0)
        L_0x002a:
            byte r0 = r6.readByte()
            org.jboss.netty.handler.codec.socks.SocksMessage$CmdStatus r0 = org.jboss.netty.handler.codec.socks.SocksMessage.CmdStatus.fromByte(r0)
            r3.cmdStatus = r0
            byte r0 = r6.readByte()
            r3.reserved = r0
            byte r0 = r6.readByte()
            org.jboss.netty.handler.codec.socks.SocksMessage$AddressType r0 = org.jboss.netty.handler.codec.socks.SocksMessage.AddressType.fromByte(r0)
            r3.addressType = r0
            org.jboss.netty.handler.codec.socks.SocksCmdResponseDecoder$State r0 = org.jboss.netty.handler.codec.socks.SocksCmdResponseDecoder.State.READ_CMD_ADDRESS
            r3.checkpoint(r0)
        L_0x0049:
            int[] r0 = org.jboss.netty.handler.codec.socks.SocksCmdResponseDecoder.AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$socks$SocksMessage$AddressType
            org.jboss.netty.handler.codec.socks.SocksMessage$AddressType r1 = r3.addressType
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x0057;
                case 2: goto L_0x0073;
                case 3: goto L_0x009a;
                default: goto L_0x0056;
            }
        L_0x0056:
            goto L_0x000b
        L_0x0057:
            int r0 = r6.readInt()
            java.lang.String r0 = org.jboss.netty.handler.codec.socks.SocksCommonUtils.intToIp(r0)
            r3.host = r0
            int r0 = r6.readUnsignedShort()
            r3.port = r0
            org.jboss.netty.handler.codec.socks.SocksCmdResponse r0 = new org.jboss.netty.handler.codec.socks.SocksCmdResponse
            org.jboss.netty.handler.codec.socks.SocksMessage$CmdStatus r1 = r3.cmdStatus
            org.jboss.netty.handler.codec.socks.SocksMessage$AddressType r2 = r3.addressType
            r0.<init>(r1, r2)
            r3.msg = r0
            goto L_0x000b
        L_0x0073:
            byte r0 = r6.readByte()
            r3.fieldLength = r0
            int r0 = r3.fieldLength
            org.jboss.netty.buffer.ChannelBuffer r0 = r6.readBytes(r0)
            java.nio.charset.Charset r1 = org.jboss.netty.util.CharsetUtil.US_ASCII
            java.lang.String r0 = r0.toString(r1)
            r3.host = r0
            int r0 = r6.readUnsignedShort()
            r3.port = r0
            org.jboss.netty.handler.codec.socks.SocksCmdResponse r0 = new org.jboss.netty.handler.codec.socks.SocksCmdResponse
            org.jboss.netty.handler.codec.socks.SocksMessage$CmdStatus r1 = r3.cmdStatus
            org.jboss.netty.handler.codec.socks.SocksMessage$AddressType r2 = r3.addressType
            r0.<init>(r1, r2)
            r3.msg = r0
            goto L_0x000b
        L_0x009a:
            r0 = 16
            org.jboss.netty.buffer.ChannelBuffer r0 = r6.readBytes(r0)
            byte[] r0 = r0.array()
            java.lang.String r0 = org.jboss.netty.handler.codec.socks.SocksCommonUtils.ipv6toStr(r0)
            r3.host = r0
            int r0 = r6.readUnsignedShort()
            r3.port = r0
            org.jboss.netty.handler.codec.socks.SocksCmdResponse r0 = new org.jboss.netty.handler.codec.socks.SocksCmdResponse
            org.jboss.netty.handler.codec.socks.SocksMessage$CmdStatus r1 = r3.cmdStatus
            org.jboss.netty.handler.codec.socks.SocksMessage$AddressType r2 = r3.addressType
            r0.<init>(r1, r2)
            r3.msg = r0
            goto L_0x000b
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.socks.SocksCmdResponseDecoder.decode(org.jboss.netty.channel.ChannelHandlerContext, org.jboss.netty.channel.Channel, org.jboss.netty.buffer.ChannelBuffer, org.jboss.netty.handler.codec.socks.SocksCmdResponseDecoder$State):java.lang.Object");
    }
}
