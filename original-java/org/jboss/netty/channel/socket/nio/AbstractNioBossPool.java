package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.socket.nio.Boss;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.internal.ExecutorUtil;

public abstract class AbstractNioBossPool<E extends Boss> implements BossPool<E>, ExternalResourceReleasable {
    private final Executor bossExecutor;
    private final AtomicInteger bossIndex;
    private final Boss[] bosses;
    private volatile boolean initDone;

    /* access modifiers changed from: protected */
    public abstract E newBoss(Executor executor);

    AbstractNioBossPool(Executor executor, int i) {
        this(executor, i, true);
    }

    AbstractNioBossPool(Executor executor, int i, boolean z) {
        this.bossIndex = new AtomicInteger();
        if (executor == null) {
            throw new NullPointerException("bossExecutor");
        } else if (i <= 0) {
            throw new IllegalArgumentException("bossCount (" + i + ") " + "must be a positive integer.");
        } else {
            this.bosses = new Boss[i];
            this.bossExecutor = executor;
            if (z) {
                init();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void init() {
        if (this.initDone) {
            throw new IllegalStateException("Init was done before");
        }
        this.initDone = true;
        for (int i = 0; i < this.bosses.length; i++) {
            this.bosses[i] = newBoss(this.bossExecutor);
        }
    }

    public E nextBoss() {
        return this.bosses[Math.abs(this.bossIndex.getAndIncrement() % this.bosses.length)];
    }

    public void rebuildSelectors() {
        for (Boss rebuildSelector : this.bosses) {
            rebuildSelector.rebuildSelector();
        }
    }

    public void releaseExternalResources() {
        shutdown();
        ExecutorUtil.shutdownNow(this.bossExecutor);
    }

    public void shutdown() {
        for (Boss shutdown : this.bosses) {
            shutdown.shutdown();
        }
    }
}
