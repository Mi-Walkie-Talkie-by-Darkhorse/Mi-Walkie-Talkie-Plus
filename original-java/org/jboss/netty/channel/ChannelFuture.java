package org.jboss.netty.channel;

import java.util.concurrent.TimeUnit;

public interface ChannelFuture {
    void addListener(ChannelFutureListener channelFutureListener);

    ChannelFuture await() throws InterruptedException;

    boolean await(long j) throws InterruptedException;

    boolean await(long j, TimeUnit timeUnit) throws InterruptedException;

    ChannelFuture awaitUninterruptibly();

    boolean awaitUninterruptibly(long j);

    boolean awaitUninterruptibly(long j, TimeUnit timeUnit);

    boolean cancel();

    Throwable getCause();

    Channel getChannel();

    boolean isCancelled();

    boolean isDone();

    boolean isSuccess();

    void removeListener(ChannelFutureListener channelFutureListener);

    @Deprecated
    ChannelFuture rethrowIfFailed() throws Exception;

    boolean setFailure(Throwable th);

    boolean setProgress(long j, long j2, long j3);

    boolean setSuccess();

    ChannelFuture sync() throws InterruptedException;

    ChannelFuture syncUninterruptibly();
}
