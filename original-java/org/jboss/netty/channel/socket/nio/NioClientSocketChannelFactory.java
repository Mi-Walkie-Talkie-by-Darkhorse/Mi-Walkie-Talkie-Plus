package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.socket.ClientSocketChannelFactory;
import org.jboss.netty.channel.socket.SocketChannel;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.Timer;

public class NioClientSocketChannelFactory implements ClientSocketChannelFactory {
    private static final int DEFAULT_BOSS_COUNT = 1;
    private final BossPool<NioClientBoss> bossPool;
    private boolean releasePools;
    private final NioClientSocketPipelineSink sink;
    private final WorkerPool<NioWorker> workerPool;

    public NioClientSocketChannelFactory() {
        this((Executor) Executors.newCachedThreadPool(), (Executor) Executors.newCachedThreadPool());
        this.releasePools = true;
    }

    public NioClientSocketChannelFactory(Executor executor, Executor executor2) {
        this(executor, executor2, 1, SelectorUtil.DEFAULT_IO_THREADS);
    }

    public NioClientSocketChannelFactory(Executor executor, Executor executor2, int i) {
        this(executor, executor2, 1, i);
    }

    public NioClientSocketChannelFactory(Executor executor, Executor executor2, int i, int i2) {
        this(executor, i, (WorkerPool<NioWorker>) new NioWorkerPool<NioWorker>(executor2, i2));
    }

    public NioClientSocketChannelFactory(Executor executor, int i, WorkerPool<NioWorker> workerPool2) {
        this((BossPool<NioClientBoss>) new NioClientBossPool<NioClientBoss>(executor, i), workerPool2);
    }

    public NioClientSocketChannelFactory(Executor executor, int i, WorkerPool<NioWorker> workerPool2, Timer timer) {
        this((BossPool<NioClientBoss>) new NioClientBossPool<NioClientBoss>(executor, i, timer, null), workerPool2);
    }

    public NioClientSocketChannelFactory(BossPool<NioClientBoss> bossPool2, WorkerPool<NioWorker> workerPool2) {
        if (bossPool2 == null) {
            throw new NullPointerException("bossPool");
        } else if (workerPool2 == null) {
            throw new NullPointerException("workerPool");
        } else {
            this.bossPool = bossPool2;
            this.workerPool = workerPool2;
            this.sink = new NioClientSocketPipelineSink(bossPool2);
        }
    }

    public SocketChannel newChannel(ChannelPipeline channelPipeline) {
        return new NioClientSocketChannel(this, channelPipeline, this.sink, (NioWorker) this.workerPool.nextWorker());
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
}
