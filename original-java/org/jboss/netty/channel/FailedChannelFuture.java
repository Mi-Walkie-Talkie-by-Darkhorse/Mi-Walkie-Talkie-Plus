package org.jboss.netty.channel;

public class FailedChannelFuture extends CompleteChannelFuture {
    private final Throwable cause;

    public FailedChannelFuture(Channel channel, Throwable th) {
        super(channel);
        if (th == null) {
            throw new NullPointerException("cause");
        }
        this.cause = th;
    }

    public Throwable getCause() {
        return this.cause;
    }

    public boolean isSuccess() {
        return false;
    }

    @Deprecated
    public ChannelFuture rethrowIfFailed() throws Exception {
        if (this.cause instanceof Exception) {
            throw ((Exception) this.cause);
        } else if (this.cause instanceof Error) {
            throw ((Error) this.cause);
        } else {
            throw new RuntimeException(this.cause);
        }
    }

    public ChannelFuture sync() throws InterruptedException {
        rethrow();
        return this;
    }

    public ChannelFuture syncUninterruptibly() {
        rethrow();
        return this;
    }

    private void rethrow() {
        if (this.cause instanceof RuntimeException) {
            throw ((RuntimeException) this.cause);
        } else if (this.cause instanceof Error) {
            throw ((Error) this.cause);
        } else {
            throw new ChannelException(this.cause);
        }
    }
}
