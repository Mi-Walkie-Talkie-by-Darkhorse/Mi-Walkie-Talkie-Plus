package org.jboss.netty.channel.socket.oio;

import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.net.Socket;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;

class OioClientSocketChannel extends OioSocketChannel {
    volatile PushbackInputStream in;
    volatile OutputStream out;

    OioClientSocketChannel(ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink) {
        super(null, channelFactory, channelPipeline, channelSink, new Socket());
        Channels.fireChannelOpen((Channel) this);
    }

    /* access modifiers changed from: 0000 */
    public PushbackInputStream getInputStream() {
        return this.in;
    }

    /* access modifiers changed from: 0000 */
    public OutputStream getOutputStream() {
        return this.out;
    }
}
