package org.jboss.netty.bootstrap;

import java.net.SocketAddress;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipelineException;

public class ClientBootstrap extends Bootstrap {
    public ClientBootstrap() {
    }

    public ClientBootstrap(ChannelFactory channelFactory) {
        super(channelFactory);
    }

    public ChannelFuture connect() {
        SocketAddress socketAddress = (SocketAddress) getOption("remoteAddress");
        if (socketAddress != null) {
            return connect(socketAddress);
        }
        throw new IllegalStateException("remoteAddress option is not set.");
    }

    public ChannelFuture connect(SocketAddress socketAddress) {
        if (socketAddress != null) {
            return connect(socketAddress, (SocketAddress) getOption("localAddress"));
        }
        throw new NullPointerException("remoteAddress");
    }

    public ChannelFuture connect(SocketAddress socketAddress, SocketAddress socketAddress2) {
        if (socketAddress == null) {
            throw new NullPointerException("remoteAddress");
        }
        try {
            Channel newChannel = getFactory().newChannel(getPipelineFactory().getPipeline());
            try {
                newChannel.getConfig().setOptions(getOptions());
                if (socketAddress2 != null) {
                    newChannel.bind(socketAddress2);
                }
                return newChannel.connect(socketAddress);
            } catch (Throwable th) {
                newChannel.close();
                throw th;
            }
        } catch (Exception e) {
            throw new ChannelPipelineException("Failed to initialize a pipeline.", e);
        }
    }

    public ChannelFuture bind(SocketAddress socketAddress) {
        if (socketAddress == null) {
            throw new NullPointerException("localAddress");
        }
        try {
            Channel newChannel = getFactory().newChannel(getPipelineFactory().getPipeline());
            try {
                newChannel.getConfig().setOptions(getOptions());
                return newChannel.bind(socketAddress);
            } catch (Throwable th) {
                newChannel.close();
                throw th;
            }
        } catch (Exception e) {
            throw new ChannelPipelineException("Failed to initialize a pipeline.", e);
        }
    }
}
