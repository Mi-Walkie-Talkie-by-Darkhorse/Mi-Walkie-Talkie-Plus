package org.jboss.netty.handler.codec.socks;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.replay.ReplayingDecoder;
import org.jboss.netty.handler.codec.socks.SocksMessage.AuthStatus;
import org.jboss.netty.handler.codec.socks.SocksMessage.SubnegotiationVersion;

public class SocksAuthResponseDecoder extends ReplayingDecoder<State> {
    private static final String name = "SOCKS_AUTH_RESPONSE_DECODER";
    private AuthStatus authStatus;
    private SocksResponse msg = SocksCommonUtils.UNKNOWN_SOCKS_RESPONSE;
    private SubnegotiationVersion version;

    public enum State {
        CHECK_PROTOCOL_VERSION,
        READ_AUTH_RESPONSE
    }

    public static String getName() {
        return name;
    }

    public SocksAuthResponseDecoder() {
        super(State.CHECK_PROTOCOL_VERSION);
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, State state) throws Exception {
        switch (state) {
            case CHECK_PROTOCOL_VERSION:
                this.version = SubnegotiationVersion.fromByte(channelBuffer.readByte());
                if (this.version == SubnegotiationVersion.AUTH_PASSWORD) {
                    checkpoint(State.READ_AUTH_RESPONSE);
                }
                break;
            case READ_AUTH_RESPONSE:
                this.authStatus = AuthStatus.fromByte(channelBuffer.readByte());
                this.msg = new SocksAuthResponse(this.authStatus);
                break;
        }
        channelHandlerContext.getPipeline().remove((ChannelHandler) this);
        return this.msg;
    }
}
