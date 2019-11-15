package org.jboss.netty.channel.socket.oio;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.socket.DatagramChannel;
import org.jboss.netty.channel.socket.DatagramChannelFactory;
import org.jboss.netty.util.ThreadNameDeterminer;
import org.jboss.netty.util.internal.ExecutorUtil;

public class OioDatagramChannelFactory implements DatagramChannelFactory {
    private boolean shutdownExecutor;
    final OioDatagramPipelineSink sink;
    private final Executor workerExecutor;

    public OioDatagramChannelFactory() {
        this(Executors.newCachedThreadPool());
        this.shutdownExecutor = true;
    }

    public OioDatagramChannelFactory(Executor executor) {
        this(executor, null);
    }

    public OioDatagramChannelFactory(Executor executor, ThreadNameDeterminer threadNameDeterminer) {
        if (executor == null) {
            throw new NullPointerException("workerExecutor");
        }
        this.workerExecutor = executor;
        this.sink = new OioDatagramPipelineSink(executor, threadNameDeterminer);
    }

    public DatagramChannel newChannel(ChannelPipeline channelPipeline) {
        return new OioDatagramChannel(this, channelPipeline, this.sink);
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
