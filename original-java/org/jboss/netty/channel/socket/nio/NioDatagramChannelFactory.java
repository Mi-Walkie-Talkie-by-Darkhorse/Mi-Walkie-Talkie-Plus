package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.socket.DatagramChannel;
import org.jboss.netty.channel.socket.DatagramChannelFactory;
import org.jboss.netty.channel.socket.InternetProtocolFamily;
import org.jboss.netty.util.ExternalResourceReleasable;

public class NioDatagramChannelFactory implements DatagramChannelFactory {
    private final InternetProtocolFamily family;
    private boolean releasePool;
    private final NioDatagramPipelineSink sink;
    private final WorkerPool<NioDatagramWorker> workerPool;

    public NioDatagramChannelFactory() {
        this((InternetProtocolFamily) null);
    }

    public NioDatagramChannelFactory(InternetProtocolFamily internetProtocolFamily) {
        this.workerPool = new NioDatagramWorkerPool(Executors.newCachedThreadPool(), SelectorUtil.DEFAULT_IO_THREADS);
        this.family = internetProtocolFamily;
        this.sink = new NioDatagramPipelineSink(this.workerPool);
        this.releasePool = true;
    }

    public NioDatagramChannelFactory(Executor executor) {
        this(executor, SelectorUtil.DEFAULT_IO_THREADS);
    }

    public NioDatagramChannelFactory(Executor executor, int i) {
        this((WorkerPool<NioDatagramWorker>) new NioDatagramWorkerPool<NioDatagramWorker>(executor, i));
    }

    public NioDatagramChannelFactory(WorkerPool<NioDatagramWorker> workerPool2) {
        this(workerPool2, (InternetProtocolFamily) null);
    }

    public NioDatagramChannelFactory(Executor executor, InternetProtocolFamily internetProtocolFamily) {
        this(executor, SelectorUtil.DEFAULT_IO_THREADS, internetProtocolFamily);
    }

    public NioDatagramChannelFactory(Executor executor, int i, InternetProtocolFamily internetProtocolFamily) {
        this((WorkerPool<NioDatagramWorker>) new NioDatagramWorkerPool<NioDatagramWorker>(executor, i), internetProtocolFamily);
    }

    public NioDatagramChannelFactory(WorkerPool<NioDatagramWorker> workerPool2, InternetProtocolFamily internetProtocolFamily) {
        this.workerPool = workerPool2;
        this.family = internetProtocolFamily;
        this.sink = new NioDatagramPipelineSink(workerPool2);
    }

    public DatagramChannel newChannel(ChannelPipeline channelPipeline) {
        return new NioDatagramChannel(this, channelPipeline, this.sink, this.sink.nextWorker(), this.family);
    }

    public void shutdown() {
        this.workerPool.shutdown();
        if (this.releasePool) {
            releasePool();
        }
    }

    public void releaseExternalResources() {
        shutdown();
        releasePool();
    }

    private void releasePool() {
        if (this.workerPool instanceof ExternalResourceReleasable) {
            ((ExternalResourceReleasable) this.workerPool).releaseExternalResources();
        }
    }
}
