package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.socket.ServerSocketChannel;
import org.jboss.netty.channel.socket.ServerSocketChannelFactory;
import org.jboss.netty.util.ExternalResourceReleasable;

public class NioServerSocketChannelFactory implements ServerSocketChannelFactory {
    private final BossPool<NioServerBoss> bossPool;
    private boolean releasePools;
    private final NioServerSocketPipelineSink sink;
    private final WorkerPool<NioWorker> workerPool;

    public NioServerSocketChannelFactory() {
        this((Executor) Executors.newCachedThreadPool(), (Executor) Executors.newCachedThreadPool());
        this.releasePools = true;
    }

    public NioServerSocketChannelFactory(Executor executor, Executor executor2) {
        this(executor, executor2, getMaxThreads(executor2));
    }

    public NioServerSocketChannelFactory(Executor executor, Executor executor2, int i) {
        this(executor, 1, executor2, i);
    }

    public NioServerSocketChannelFactory(Executor executor, int i, Executor executor2, int i2) {
        this(executor, i, (WorkerPool<NioWorker>) new NioWorkerPool<NioWorker>(executor2, i2));
    }

    public NioServerSocketChannelFactory(Executor executor, WorkerPool<NioWorker> workerPool2) {
        this(executor, 1, workerPool2);
    }

    public NioServerSocketChannelFactory(Executor executor, int i, WorkerPool<NioWorker> workerPool2) {
        this((BossPool<NioServerBoss>) new NioServerBossPool<NioServerBoss>(executor, i, null), workerPool2);
    }

    public NioServerSocketChannelFactory(BossPool<NioServerBoss> bossPool2, WorkerPool<NioWorker> workerPool2) {
        if (bossPool2 == null) {
            throw new NullPointerException("bossExecutor");
        } else if (workerPool2 == null) {
            throw new NullPointerException("workerPool");
        } else {
            this.bossPool = bossPool2;
            this.workerPool = workerPool2;
            this.sink = new NioServerSocketPipelineSink();
        }
    }

    public ServerSocketChannel newChannel(ChannelPipeline channelPipeline) {
        return new NioServerSocketChannel(this, channelPipeline, this.sink, this.bossPool.nextBoss(), this.workerPool);
    }

    public void shutdown() {
        this.bossPool.shutdown();
        this.workerPool.shutdown();
        if (this.releasePools) {
            releasePools();
        }
    }

    public void releaseExternalResources() {
        shutdown();
        releasePools();
    }

    private void releasePools() {
        if (this.bossPool instanceof ExternalResourceReleasable) {
            ((ExternalResourceReleasable) this.bossPool).releaseExternalResources();
        }
        if (this.workerPool instanceof ExternalResourceReleasable) {
            ((ExternalResourceReleasable) this.workerPool).releaseExternalResources();
        }
    }

    private static int getMaxThreads(Executor executor) {
        if (executor instanceof ThreadPoolExecutor) {
            return Math.min(((ThreadPoolExecutor) executor).getMaximumPoolSize(), SelectorUtil.DEFAULT_IO_THREADS);
        }
        return SelectorUtil.DEFAULT_IO_THREADS;
    }
}
