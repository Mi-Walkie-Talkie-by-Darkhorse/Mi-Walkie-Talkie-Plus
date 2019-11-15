package org.jboss.netty.bootstrap;

import java.net.SocketAddress;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ChildChannelStateEvent;
import org.jboss.netty.channel.DefaultChannelFuture;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.ServerChannelFactory;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;

public class ServerBootstrap extends Bootstrap {
    private volatile ChannelHandler parentHandler;

    private final class Binder extends SimpleChannelUpstreamHandler {
        /* access modifiers changed from: private */
        public final DefaultChannelFuture bindFuture = new DefaultChannelFuture(null, false);
        private final Map<String, Object> childOptions = new HashMap();
        private final SocketAddress localAddress;

        Binder(SocketAddress socketAddress) {
            this.localAddress = socketAddress;
        }

        /* JADX INFO: finally extract failed */
        public void channelOpen(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) {
            try {
                channelStateEvent.getChannel().getConfig().setPipelineFactory(ServerBootstrap.this.getPipelineFactory());
                Map options = ServerBootstrap.this.getOptions();
                HashMap hashMap = new HashMap();
                for (Entry entry : options.entrySet()) {
                    if (((String) entry.getKey()).startsWith("child.")) {
                        this.childOptions.put(((String) entry.getKey()).substring(6), entry.getValue());
                    } else {
                        if (!"pipelineFactory".equals(entry.getKey())) {
                            hashMap.put(entry.getKey(), entry.getValue());
                        }
                    }
                }
                channelStateEvent.getChannel().getConfig().setOptions(hashMap);
                channelHandlerContext.sendUpstream(channelStateEvent);
                channelStateEvent.getChannel().bind(this.localAddress).addListener(new ChannelFutureListener() {
                    public void operationComplete(ChannelFuture channelFuture) throws Exception {
                        if (channelFuture.isSuccess()) {
                            Binder.this.bindFuture.setSuccess();
                        } else {
                            Binder.this.bindFuture.setFailure(channelFuture.getCause());
                        }
                    }
                });
            } catch (Throwable th) {
                channelHandlerContext.sendUpstream(channelStateEvent);
                throw th;
            }
        }

        public void childChannelOpen(ChannelHandlerContext channelHandlerContext, ChildChannelStateEvent childChannelStateEvent) throws Exception {
            try {
                childChannelStateEvent.getChildChannel().getConfig().setOptions(this.childOptions);
            } catch (Throwable th) {
                Channels.fireExceptionCaught(childChannelStateEvent.getChildChannel(), th);
            }
            channelHandlerContext.sendUpstream(childChannelStateEvent);
        }

        public void exceptionCaught(ChannelHandlerContext channelHandlerContext, ExceptionEvent exceptionEvent) throws Exception {
            this.bindFuture.setFailure(exceptionEvent.getCause());
            channelHandlerContext.sendUpstream(exceptionEvent);
        }
    }

    public ServerBootstrap() {
    }

    public ServerBootstrap(ChannelFactory channelFactory) {
        super(channelFactory);
    }

    public void setFactory(ChannelFactory channelFactory) {
        if (channelFactory == null) {
            throw new NullPointerException("factory");
        } else if (!(channelFactory instanceof ServerChannelFactory)) {
            throw new IllegalArgumentException("factory must be a " + ServerChannelFactory.class.getSimpleName() + ": " + channelFactory.getClass());
        } else {
            super.setFactory(channelFactory);
        }
    }

    public ChannelHandler getParentHandler() {
        return this.parentHandler;
    }

    public void setParentHandler(ChannelHandler channelHandler) {
        this.parentHandler = channelHandler;
    }

    public Channel bind() {
        SocketAddress socketAddress = (SocketAddress) getOption("localAddress");
        if (socketAddress != null) {
            return bind(socketAddress);
        }
        throw new IllegalStateException("localAddress option is not set.");
    }

    public Channel bind(SocketAddress socketAddress) {
        ChannelFuture bindAsync = bindAsync(socketAddress);
        bindAsync.awaitUninterruptibly();
        if (bindAsync.isSuccess()) {
            return bindAsync.getChannel();
        }
        bindAsync.getChannel().close().awaitUninterruptibly();
        throw new ChannelException("Failed to bind to: " + socketAddress, bindAsync.getCause());
    }

    public ChannelFuture bindAsync() {
        SocketAddress socketAddress = (SocketAddress) getOption("localAddress");
        if (socketAddress != null) {
            return bindAsync(socketAddress);
        }
        throw new IllegalStateException("localAddress option is not set.");
    }

    public ChannelFuture bindAsync(SocketAddress socketAddress) {
        if (socketAddress == null) {
            throw new NullPointerException("localAddress");
        }
        Binder binder = new Binder(socketAddress);
        ChannelHandler parentHandler2 = getParentHandler();
        ChannelPipeline pipeline = Channels.pipeline();
        pipeline.addLast("binder", binder);
        if (parentHandler2 != null) {
            pipeline.addLast("userHandler", parentHandler2);
        }
        final DefaultChannelFuture defaultChannelFuture = new DefaultChannelFuture(getFactory().newChannel(pipeline), false);
        binder.bindFuture.addListener(new ChannelFutureListener() {
            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                if (channelFuture.isSuccess()) {
                    defaultChannelFuture.setSuccess();
                    return;
                }
                defaultChannelFuture.getChannel().close();
                defaultChannelFuture.setFailure(channelFuture.getCause());
            }
        });
        return defaultChannelFuture;
    }
}
