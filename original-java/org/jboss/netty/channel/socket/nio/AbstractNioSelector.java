package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.ConcurrentModificationException;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.ThreadNameDeterminer;
import org.jboss.netty.util.ThreadRenamingRunnable;
import org.jboss.netty.util.internal.DeadLockProofWorker;

abstract class AbstractNioSelector implements NioSelector {
    static final /* synthetic */ boolean $assertionsDisabled = (!AbstractNioSelector.class.desiredAssertionStatus());
    private static final int CLEANUP_INTERVAL = 256;
    protected static final InternalLogger logger = InternalLoggerFactory.getInstance(AbstractNioSelector.class);
    private static final AtomicInteger nextId = new AtomicInteger();
    private volatile int cancelledKeys;
    private final Executor executor;
    private final int id;
    protected volatile Selector selector;
    private volatile boolean shutdown;
    private final CountDownLatch shutdownLatch;
    private final Queue<Runnable> taskQueue;
    protected volatile Thread thread;
    protected final AtomicBoolean wakenUp;

    /* access modifiers changed from: protected */
    public abstract void close(SelectionKey selectionKey);

    /* access modifiers changed from: protected */
    public abstract Runnable createRegisterTask(Channel channel, ChannelFuture channelFuture);

    /* access modifiers changed from: protected */
    public abstract ThreadRenamingRunnable newThreadRenamingRunnable(int i, ThreadNameDeterminer threadNameDeterminer);

    /* access modifiers changed from: protected */
    public abstract void process(Selector selector2) throws IOException;

    AbstractNioSelector(Executor executor2) {
        this(executor2, null);
    }

    AbstractNioSelector(Executor executor2, ThreadNameDeterminer threadNameDeterminer) {
        this.id = nextId.incrementAndGet();
        this.wakenUp = new AtomicBoolean();
        this.taskQueue = new ConcurrentLinkedQueue();
        this.shutdownLatch = new CountDownLatch(1);
        this.executor = executor2;
        openSelector(threadNameDeterminer);
    }

    public void register(Channel channel, ChannelFuture channelFuture) {
        registerTask(createRegisterTask(channel, channelFuture));
    }

    /* access modifiers changed from: protected */
    public final void registerTask(Runnable runnable) {
        this.taskQueue.add(runnable);
        Selector selector2 = this.selector;
        if (selector2 != null) {
            if (this.wakenUp.compareAndSet(false, true)) {
                selector2.wakeup();
            }
        } else if (this.taskQueue.remove(runnable)) {
            throw new RejectedExecutionException("Worker has already been shutdown");
        }
    }

    /* access modifiers changed from: protected */
    public final boolean isIoThread() {
        return Thread.currentThread() == this.thread;
    }

    public void rebuildSelector() {
        int i;
        if (!isIoThread()) {
            this.taskQueue.add(new Runnable() {
                public void run() {
                    AbstractNioSelector.this.rebuildSelector();
                }
            });
            return;
        }
        Selector selector2 = this.selector;
        if (selector2 != null) {
            try {
                Selector open = Selector.open();
                int i2 = 0;
                loop0:
                while (true) {
                    try {
                        for (SelectionKey selectionKey : selector2.keys()) {
                            try {
                                if (selectionKey.channel().keyFor(open) == null) {
                                    int interestOps = selectionKey.interestOps();
                                    selectionKey.cancel();
                                    selectionKey.channel().register(open, interestOps, selectionKey.attachment());
                                    i = i2 + 1;
                                    i2 = i;
                                }
                            } catch (Exception e) {
                                logger.warn("Failed to re-register a Channel to the new Selector,", e);
                                close(selectionKey);
                                i = i2;
                            }
                        }
                        break loop0;
                    } catch (ConcurrentModificationException e2) {
                    }
                }
                this.selector = open;
                try {
                    selector2.close();
                } catch (Throwable th) {
                    if (logger.isWarnEnabled()) {
                        logger.warn("Failed to close the old Selector.", th);
                    }
                }
                logger.info("Migrated " + i2 + " channel(s) to the new Selector,");
            } catch (Exception e3) {
                logger.warn("Failed to create a new Selector.", e3);
            }
        }
    }

    public void run() {
        Selector selector2;
        int i;
        boolean z;
        Throwable th;
        boolean z2;
        Selector selector3;
        int i2;
        boolean z3;
        this.thread = Thread.currentThread();
        Selector selector4 = this.selector;
        if (selector4 != null) {
            long j = (SelectorUtil.SELECT_TIMEOUT_NANOS * 80) / 100;
            boolean z4 = false;
            Selector selector5 = selector4;
            int i3 = 0;
            while (true) {
                this.wakenUp.set(false);
                try {
                    long nanoTime = System.nanoTime();
                    int select = select(selector5);
                    if (!SelectorUtil.EPOLL_BUG_WORKAROUND || select != 0 || z4 || this.wakenUp.get()) {
                        i3 = 0;
                    } else {
                        if (System.nanoTime() - nanoTime < j) {
                            boolean z5 = false;
                            for (SelectionKey selectionKey : selector5.keys()) {
                                SelectableChannel channel = selectionKey.channel();
                                try {
                                    if ((!(channel instanceof DatagramChannel) || ((DatagramChannel) channel).isConnected()) && (!(channel instanceof SocketChannel) || ((SocketChannel) channel).isConnected())) {
                                        z3 = z5;
                                        z5 = z3;
                                    } else {
                                        try {
                                            selectionKey.cancel();
                                            z3 = true;
                                        } catch (CancelledKeyException e) {
                                            z3 = true;
                                        }
                                        z5 = z3;
                                    }
                                } catch (CancelledKeyException e2) {
                                    z3 = z5;
                                }
                            }
                            if (z5) {
                                i2 = 0;
                            } else {
                                i2 = i3 + 1;
                            }
                            i3 = i2;
                        } else {
                            i3 = 0;
                        }
                        if (i3 == 1024) {
                            rebuildSelector();
                            z4 = false;
                            selector5 = this.selector;
                            i3 = 0;
                        }
                    }
                    if (this.wakenUp.get()) {
                        try {
                            selector5.wakeup();
                            z2 = true;
                        } catch (Throwable th2) {
                            th = th2;
                            selector2 = selector5;
                            i = i3;
                            z = true;
                            logger.warn("Unexpected exception in the selector loop.", th);
                            try {
                                Thread.sleep(1000);
                            } catch (InterruptedException e3) {
                            }
                            z4 = z;
                            selector5 = selector2;
                            i3 = i;
                        }
                    } else {
                        z2 = false;
                    }
                    try {
                        this.cancelledKeys = 0;
                        processTaskQueue();
                        selector3 = this.selector;
                    } catch (Throwable th3) {
                        th = th3;
                        i = i3;
                        z = z2;
                        selector2 = selector5;
                        logger.warn("Unexpected exception in the selector loop.", th);
                        Thread.sleep(1000);
                        z4 = z;
                        selector5 = selector2;
                        i3 = i;
                    }
                    try {
                        if (this.shutdown) {
                            this.selector = null;
                            processTaskQueue();
                            for (SelectionKey close : selector3.keys()) {
                                close(close);
                            }
                            selector3.close();
                            this.shutdownLatch.countDown();
                            return;
                        }
                        process(selector3);
                        z4 = z2;
                        selector5 = selector3;
                    } catch (IOException e4) {
                        logger.warn("Failed to close a selector.", e4);
                    } catch (Throwable th4) {
                        th = th4;
                        z = z2;
                        selector2 = selector3;
                        i = i3;
                        logger.warn("Unexpected exception in the selector loop.", th);
                        Thread.sleep(1000);
                        z4 = z;
                        selector5 = selector2;
                        i3 = i;
                    }
                } catch (Throwable th5) {
                    selector2 = selector5;
                    i = i3;
                    Throwable th6 = th5;
                    z = z4;
                    th = th6;
                    logger.warn("Unexpected exception in the selector loop.", th);
                    Thread.sleep(1000);
                    z4 = z;
                    selector5 = selector2;
                    i3 = i;
                }
            }
        }
    }

    private void openSelector(ThreadNameDeterminer threadNameDeterminer) {
        try {
            this.selector = Selector.open();
            try {
                DeadLockProofWorker.start(this.executor, newThreadRenamingRunnable(this.id, threadNameDeterminer));
                if ($assertionsDisabled) {
                    return;
                }
                if (this.selector == null || !this.selector.isOpen()) {
                    throw new AssertionError();
                }
                return;
            } catch (Throwable th) {
                logger.warn("Failed to close a selector.", th);
            }
            this.selector = null;
            throw th;
        } catch (Throwable th2) {
            throw new ChannelException("Failed to create a selector.", th2);
        }
    }

    private void processTaskQueue() {
        while (true) {
            Runnable runnable = (Runnable) this.taskQueue.poll();
            if (runnable != null) {
                runnable.run();
                try {
                    cleanUpCancelledKeys();
                } catch (IOException e) {
                }
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void increaseCancelledKeys() {
        this.cancelledKeys++;
    }

    /* access modifiers changed from: protected */
    public final boolean cleanUpCancelledKeys() throws IOException {
        if (this.cancelledKeys < 256) {
            return false;
        }
        this.cancelledKeys = 0;
        this.selector.selectNow();
        return true;
    }

    public void shutdown() {
        if (isIoThread()) {
            throw new IllegalStateException("Must not be called from a I/O-Thread to prevent deadlocks!");
        }
        Selector selector2 = this.selector;
        this.shutdown = true;
        if (selector2 != null) {
            selector2.wakeup();
        }
        try {
            this.shutdownLatch.await();
        } catch (InterruptedException e) {
            logger.error("Interrupted while wait for resources to be released #" + this.id);
            Thread.currentThread().interrupt();
        }
    }

    /* access modifiers changed from: protected */
    public int select(Selector selector2) throws IOException {
        return SelectorUtil.select(selector2);
    }
}
