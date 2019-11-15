package org.jboss.netty.channel.socket;

import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.DefaultChannelFuture;

public class ChannelRunnableWrapper extends DefaultChannelFuture implements Runnable {
    private boolean started;
    private final Runnable task;

    public ChannelRunnableWrapper(Channel channel, Runnable runnable) {
        super(channel, true);
        this.task = runnable;
    }

    public void run() {
        synchronized (this) {
            if (!isCancelled()) {
                this.started = true;
                try {
                    this.task.run();
                    setSuccess();
                } catch (Throwable th) {
                    setFailure(th);
                }
            }
        }
    }

    public synchronized boolean cancel() {
        boolean cancel;
        if (this.started) {
            cancel = false;
        } else {
            cancel = super.cancel();
        }
        return cancel;
    }
}
