package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import org.jboss.netty.util.HashedWheelTimer;
import org.jboss.netty.util.ThreadNameDeterminer;
import org.jboss.netty.util.Timer;

public class NioClientBossPool extends AbstractNioBossPool<NioClientBoss> {
    private final ThreadNameDeterminer determiner;
    private boolean stopTimer;
    private final Timer timer;

    public NioClientBossPool(Executor executor, int i, Timer timer2, ThreadNameDeterminer threadNameDeterminer) {
        super(executor, i, false);
        this.determiner = threadNameDeterminer;
        this.timer = timer2;
        init();
    }

    public NioClientBossPool(Executor executor, int i) {
        this(executor, i, new HashedWheelTimer(), null);
        this.stopTimer = true;
    }

    /* access modifiers changed from: protected */
    public NioClientBoss newBoss(Executor executor) {
        return new NioClientBoss(executor, this.timer, this.determiner);
    }

    public void shutdown() {
        super.shutdown();
        if (this.stopTimer) {
            this.timer.stop();
        }
    }

    public void releaseExternalResources() {
        super.releaseExternalResources();
        this.timer.stop();
    }
}
