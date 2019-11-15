package com.ifengyu.im.imservice.network;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.GeneratedMessageLite;
import com.ifengyu.im.protobuf.base.DataBuffer;
import com.ifengyu.im.protobuf.base.Header;
import com.ifengyu.im.utils.Logger;
import java.net.InetSocketAddress;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.jboss.netty.bootstrap.ClientBootstrap;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelPipelineFactory;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.SimpleChannelHandler;
import org.jboss.netty.channel.socket.nio.NioClientSocketChannelFactory;
import org.jboss.netty.handler.codec.frame.LengthFieldBasedFrameDecoder;

public class SocketThread extends Thread {
    private static Logger logger = Logger.getLogger(SocketThread.class);
    private Channel channel = null;
    private ChannelFactory channelFactory = null;
    private ChannelFuture channelFuture = null;
    private ClientBootstrap clientBootstrap = null;
    private int nPort = 0;
    private String strHost = null;

    public SocketThread(String str, int i, SimpleChannelHandler simpleChannelHandler) {
        this.strHost = str;
        this.nPort = i;
        init(simpleChannelHandler);
    }

    public void run() {
        doConnect();
    }

    private void init(final SimpleChannelHandler simpleChannelHandler) {
        this.channelFactory = new NioClientSocketChannelFactory((Executor) Executors.newSingleThreadExecutor(), (Executor) Executors.newSingleThreadExecutor());
        this.clientBootstrap = new ClientBootstrap(this.channelFactory);
        this.clientBootstrap.setOption("connectTimeoutMillis", Integer.valueOf(5000));
        this.clientBootstrap.setPipelineFactory(new ChannelPipelineFactory() {
            public ChannelPipeline getPipeline() throws Exception {
                ChannelPipeline pipeline = Channels.pipeline();
                pipeline.addLast("decoder", new LengthFieldBasedFrameDecoder(409600, 0, 4, -4, 0));
                pipeline.addLast("handler", simpleChannelHandler);
                return pipeline;
            }
        });
        this.clientBootstrap.setOption("tcpNoDelay", Boolean.valueOf(true));
        this.clientBootstrap.setOption("keepAlive", Boolean.valueOf(true));
    }

    public boolean doConnect() {
        try {
            if ((this.channel == null || !this.channel.isConnected()) && this.strHost != null && this.nPort > 0) {
                this.channelFuture = this.clientBootstrap.connect(new InetSocketAddress(this.strHost, this.nPort));
                this.channel = this.channelFuture.awaitUninterruptibly().getChannel();
                if (!this.channelFuture.isSuccess()) {
                    ThrowableExtension.printStackTrace(this.channelFuture.getCause());
                    this.clientBootstrap.releaseExternalResources();
                    return false;
                }
            }
            this.channelFuture.getChannel().getCloseFuture().awaitUninterruptibly();
            this.clientBootstrap.releaseExternalResources();
            return true;
        } catch (Exception e) {
            logger.e("do connect failed. e: %s", e.getStackTrace().toString());
            return false;
        }
    }

    public Channel getChannel() {
        return this.channel;
    }

    public void close() {
        if (this.channelFuture != null) {
            if (this.channelFuture.getChannel() != null) {
                this.channelFuture.getChannel().close();
            }
            this.channelFuture.cancel();
        }
    }

    @Deprecated
    public boolean isClose() {
        if (this.channelFuture == null || this.channelFuture.getChannel() == null || !this.channelFuture.getChannel().isConnected()) {
            return true;
        }
        return false;
    }

    public boolean sendRequest(GeneratedMessageLite generatedMessageLite, Header header) {
        DataBuffer encode = header.encode();
        DataBuffer dataBuffer = new DataBuffer();
        int serializedSize = generatedMessageLite.getSerializedSize();
        dataBuffer.writeBytes(generatedMessageLite.toByteArray());
        DataBuffer dataBuffer2 = new DataBuffer(serializedSize + 16);
        dataBuffer2.writeDataBuffer(encode);
        dataBuffer2.writeDataBuffer(dataBuffer);
        if (dataBuffer2 == null || this.channelFuture.getChannel() == null) {
            logger.e("packet#send failed", new Object[0]);
            return false;
        }
        Channel channel2 = this.channelFuture.getChannel();
        boolean isWritable = channel2.isWritable();
        boolean isConnected = channel2.isConnected();
        if (!isWritable || !isConnected) {
            throw new RuntimeException("#sendRequest#channel is close!");
        }
        this.channelFuture.getChannel().write(dataBuffer2.getOrignalBuffer());
        logger.d("packet#send ok", new Object[0]);
        return true;
    }
}
