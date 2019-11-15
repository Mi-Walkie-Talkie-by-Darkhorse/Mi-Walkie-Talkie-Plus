package org.jboss.netty.channel.socket.oio;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.socket.ServerSocketChannel;
import org.jboss.netty.channel.socket.ServerSocketChannelFactory;
import org.jboss.netty.util.ThreadNameDeterminer;
import org.jboss.netty.util.internal.ExecutorUtil;

public class OioServerSocketChannelFactory implements ServerSocketChannelFactory {
    final Executor bossExecutor;
    private boolean shutdownExecutor;
    private final ChannelSink sink;
    private final Executor workerExecutor;

    public OioServerSocketChannelFactory() {
        this(Executors.newCachedThreadPool(), Executors.newCachedThreadPool());
        this.shutdownExecutor = true;
    }

    public OioServerSocketChannelFactory(Executor executor, Executor executor2) {
        this(executor, executor2, null);
    }

    public OioServerSocketChannelFactory(Executor executor, Executor executor2, ThreadNameDeterminer threadNameDeterminer) {
        if (executor == null) {
            throw new NullPointerException("bossExecutor");
        } else if (executor2 == null) {
            throw new NullPointerException("workerExecutor");
        } else {
            this.bossExecutor = executor;
            this.workerExecutor = executor2;
            this.sink = new OioServerSocketPipelineSink(executor2, threadNameDeterminer);
        }
    }

    public ServerSocketChannel newChannel(ChannelPipeline channelPipeline) {
        return new OioServerSocketChannel(this, channelPipeline, this.sink);
    }

    public void shutdown() {
        if (this.shutdownExecutor) {
            ExecutorUtil.shutdownNow(this.workerExecutor);
        }
    }

    public void releaseExternalResources() {
        shutdown();
        ExecutorUtil.shutdownNow(this.workerExecutor);
    }
}
