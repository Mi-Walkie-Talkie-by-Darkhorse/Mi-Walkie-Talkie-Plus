package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import org.jboss.netty.util.ThreadNameDeterminer;

public class NioServerBossPool extends AbstractNioBossPool<NioServerBoss> {
    private final ThreadNameDeterminer determiner;

    public NioServerBossPool(Executor executor, int i, ThreadNameDeterminer threadNameDeterminer) {
        super(executor, i, false);
        this.determiner = threadNameDeterminer;
        init();
    }

    public NioServerBossPool(Executor executor, int i) {
        this(executor, i, null);
    }

    /* access modifiers changed from: protected */
    public NioServerBoss newBoss(Executor executor) {
        return new NioServerBoss(executor, this.determiner);
    }
}
