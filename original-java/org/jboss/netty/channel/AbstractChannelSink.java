package org.jboss.netty.channel;

public abstract class AbstractChannelSink implements ChannelSink {
    protected AbstractChannelSink() {
    }

    /* JADX WARNING: type inference failed for: r0v0, types: [java.lang.Throwable] */
    /* JADX WARNING: type inference failed for: r4v2, types: [java.lang.Throwable] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void exceptionCaught(org.jboss.netty.channel.ChannelPipeline r2, org.jboss.netty.channel.ChannelEvent r3, org.jboss.netty.channel.ChannelPipelineException r4) throws java.lang.Exception {
        /*
            r1 = this;
            java.lang.Throwable r0 = r4.getCause()
            if (r0 != 0) goto L_0x001c
        L_0x0006:
            boolean r0 = r1.isFireExceptionCaughtLater(r3, r4)
            if (r0 == 0) goto L_0x0014
            org.jboss.netty.channel.Channel r0 = r3.getChannel()
            org.jboss.netty.channel.Channels.fireExceptionCaughtLater(r0, r4)
        L_0x0013:
            return
        L_0x0014:
            org.jboss.netty.channel.Channel r0 = r3.getChannel()
            org.jboss.netty.channel.Channels.fireExceptionCaught(r0, r4)
            goto L_0x0013
        L_0x001c:
            r4 = r0
            goto L_0x0006
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.AbstractChannelSink.exceptionCaught(org.jboss.netty.channel.ChannelPipeline, org.jboss.netty.channel.ChannelEvent, org.jboss.netty.channel.ChannelPipelineException):void");
    }

    /* access modifiers changed from: protected */
    public boolean isFireExceptionCaughtLater(ChannelEvent channelEvent, Throwable th) {
        return false;
    }

    public ChannelFuture execute(ChannelPipeline channelPipeline, Runnable runnable) {
        try {
            runnable.run();
            return Channels.succeededFuture(channelPipeline.getChannel());
        } catch (Throwable th) {
            return Channels.failedFuture(channelPipeline.getChannel(), th);
        }
    }
}
