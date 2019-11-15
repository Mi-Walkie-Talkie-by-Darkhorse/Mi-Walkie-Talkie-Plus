package org.jboss.netty.handler.codec.socks;

import org.jboss.netty.handler.codec.replay.ReplayingDecoder;
import org.jboss.netty.handler.codec.socks.SocksMessage.SubnegotiationVersion;

public class SocksAuthRequestDecoder extends ReplayingDecoder<State> {
    private static final String name = "SOCKS_AUTH_REQUEST_DECODER";
    private int fieldLength;
    private SocksRequest msg = SocksCommonUtils.UNKNOWN_SOCKS_REQUEST;
    private String password;
    private String username;
    private SubnegotiationVersion version;

    enum State {
        CHECK_PROTOCOL_VERSION,
        READ_USERNAME,
        READ_PASSWORD
    }

    public static String getName() {
        return name;
    }

    public SocksAuthRequestDecoder() {
        super(State.CHECK_PROTOCOL_VERSION);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:2:0x000b, code lost:
        r4.getPipeline().remove((org.jboss.netty.channel.ChannelHandler) r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0014, code lost:
        return r3.msg;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x002a, code lost:
        r3.fieldLength = r6.readByte();
        r3.username = r6.readBytes(r3.fieldLength).toString(org.jboss.netty.util.CharsetUtil.US_ASCII);
        checkpoint(org.jboss.netty.handler.codec.socks.SocksAuthRequestDecoder.State.READ_PASSWORD);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0043, code lost:
        r3.fieldLength = r6.readByte();
        r3.password = r6.readBytes(r3.fieldLength).toString(org.jboss.netty.util.CharsetUtil.US_ASCII);
        r3.msg = new org.jboss.netty.handler.codec.socks.SocksAuthRequest(r3.username, r3.password);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object decode(org.jboss.netty.channel.ChannelHandlerContext r4, org.jboss.netty.channel.Channel r5, org.jboss.netty.buffer.ChannelBuffer r6, org.jboss.netty.handler.codec.socks.SocksAuthRequestDecoder.State r7) throws java.lang.Exception {
        /*
            r3 = this;
            int[] r0 = org.jboss.netty.handler.codec.socks.SocksAuthRequestDecoder.AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$socks$SocksAuthRequestDecoder$State
            int r1 = r7.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x0015;
                case 2: goto L_0x002a;
                case 3: goto L_0x0043;
                default: goto L_0x000b;
            }
        L_0x000b:
            org.jboss.netty.channel.ChannelPipeline r0 = r4.getPipeline()
            r0.remove(r3)
            org.jboss.netty.handler.codec.socks.SocksRequest r0 = r3.msg
            return r0
        L_0x0015:
            byte r0 = r6.readByte()
            org.jboss.netty.handler.codec.socks.SocksMessage$SubnegotiationVersion r0 = org.jboss.netty.handler.codec.socks.SocksMessage.SubnegotiationVersion.fromByte(r0)
            r3.version = r0
            org.jboss.netty.handler.codec.socks.SocksMessage$SubnegotiationVersion r0 = r3.version
            org.jboss.netty.handler.codec.socks.SocksMessage$SubnegotiationVersion r1 = org.jboss.netty.handler.codec.socks.SocksMessage.SubnegotiationVersion.AUTH_PASSWORD
            if (r0 != r1) goto L_0x000b
            org.jboss.netty.handler.codec.socks.SocksAuthRequestDecoder$State r0 = org.jboss.netty.handler.codec.socks.SocksAuthRequestDecoder.State.READ_USERNAME
            r3.checkpoint(r0)
        L_0x002a:
            byte r0 = r6.readByte()
            r3.fieldLength = r0
            int r0 = r3.fieldLength
            org.jboss.netty.buffer.ChannelBuffer r0 = r6.readBytes(r0)
            java.nio.charset.Charset r1 = org.jboss.netty.util.CharsetUtil.US_ASCII
            java.lang.String r0 = r0.toString(r1)
            r3.username = r0
            org.jboss.netty.handler.codec.socks.SocksAuthRequestDecoder$State r0 = org.jboss.netty.handler.codec.socks.SocksAuthRequestDecoder.State.READ_PASSWORD
            r3.checkpoint(r0)
        L_0x0043:
            byte r0 = r6.readByte()
            r3.fieldLength = r0
            int r0 = r3.fieldLength
            org.jboss.netty.buffer.ChannelBuffer r0 = r6.readBytes(r0)
            java.nio.charset.Charset r1 = org.jboss.netty.util.CharsetUtil.US_ASCII
            java.lang.String r0 = r0.toString(r1)
            r3.password = r0
            org.jboss.netty.handler.codec.socks.SocksAuthRequest r0 = new org.jboss.netty.handler.codec.socks.SocksAuthRequest
            java.lang.String r1 = r3.username
            java.lang.String r2 = r3.password
            r0.<init>(r1, r2)
            r3.msg = r0
            goto L_0x000b
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.socks.SocksAuthRequestDecoder.decode(org.jboss.netty.channel.ChannelHandlerContext, org.jboss.netty.channel.Channel, org.jboss.netty.buffer.ChannelBuffer, org.jboss.netty.handler.codec.socks.SocksAuthRequestDecoder$State):java.lang.Object");
    }
}
