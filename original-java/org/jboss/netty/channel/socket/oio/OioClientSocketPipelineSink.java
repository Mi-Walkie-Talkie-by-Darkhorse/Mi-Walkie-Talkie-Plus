package org.jboss.netty.channel.socket.oio;

import java.net.SocketAddress;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.util.ThreadNameDeterminer;

class OioClientSocketPipelineSink extends AbstractOioChannelSink {
    private final ThreadNameDeterminer determiner;
    private final Executor workerExecutor;

    OioClientSocketPipelineSink(Executor executor, ThreadNameDeterminer threadNameDeterminer) {
        this.workerExecutor = executor;
        this.determiner = threadNameDeterminer;
    }

    public void eventSunk(ChannelPipeline channelPipeline, ChannelEvent channelEvent) throws Exception {
        OioClientSocketChannel oioClientSocketChannel = (OioClientSocketChannel) channelEvent.getChannel();
        ChannelFuture future = channelEvent.getFuture();
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            ChannelState state = channelStateEvent.getState();
            Object value = channelStateEvent.getValue();
            switch (state) {
                case OPEN:
                    if (Boolean.FALSE.equals(value)) {
                        AbstractOioWorker.close(oioClientSocketChannel, future);
                        return;
                    }
                    return;
                case BOUND:
                    if (value != null) {
                        bind(oioClientSocketChannel, future, (SocketAddress) value);
                        return;
                    } else {
                        AbstractOioWorker.close(oioClientSocketChannel, future);
                        return;
                    }
                case CONNECTED:
                    if (value != null) {
                        connect(oioClientSocketChannel, future, (SocketAddress) value);
                        return;
                    } else {
                        AbstractOioWorker.close(oioClientSocketChannel, future);
                        return;
                    }
                case INTEREST_OPS:
                    AbstractOioWorker.setInterestOps(oioClientSocketChannel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (channelEvent instanceof MessageEvent) {
            OioWorker.write(oioClientSocketChannel, future, ((MessageEvent) channelEvent).getMessage());
        }
    }

    private static void bind(OioClientSocketChannel oioClientSocketChannel, ChannelFuture channelFuture, SocketAddress socketAddress) {
        try {
            oioClientSocketChannel.socket.bind(socketAddress);
            channelFuture.setSuccess();
            Channels.fireChannelBound((Channel) oioClientSocketChannel, (SocketAddress) oioClientSocketChannel.getLocalAddress());
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            Channels.fireExceptionCaught((Channel) oioClientSocketChannel, th);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x00a6  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00ae  */
    /* JADX WARNING: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void connect(org.jboss.netty.channel.socket.oio.OioClientSocketChannel r7, org.jboss.netty.channel.ChannelFuture r8, java.net.SocketAddress r9) {
        /*
            r6 = this;
            r1 = 1
            boolean r0 = r7.isBound()
            r2 = 0
            org.jboss.netty.channel.ChannelFutureListener r3 = org.jboss.netty.channel.ChannelFutureListener.CLOSE_ON_FAILURE
            r8.addListener(r3)
            java.net.Socket r3 = r7.socket     // Catch:{ Throwable -> 0x006c, all -> 0x00aa }
            org.jboss.netty.channel.socket.SocketChannelConfig r4 = r7.getConfig()     // Catch:{ Throwable -> 0x006c, all -> 0x00aa }
            int r4 = r4.getConnectTimeoutMillis()     // Catch:{ Throwable -> 0x006c, all -> 0x00aa }
            r3.connect(r9, r4)     // Catch:{ Throwable -> 0x006c, all -> 0x00aa }
            java.io.PushbackInputStream r2 = new java.io.PushbackInputStream     // Catch:{ Throwable -> 0x00b4 }
            java.net.Socket r3 = r7.socket     // Catch:{ Throwable -> 0x00b4 }
            java.io.InputStream r3 = r3.getInputStream()     // Catch:{ Throwable -> 0x00b4 }
            r4 = 1
            r2.<init>(r3, r4)     // Catch:{ Throwable -> 0x00b4 }
            r7.in = r2     // Catch:{ Throwable -> 0x00b4 }
            java.net.Socket r2 = r7.socket     // Catch:{ Throwable -> 0x00b4 }
            java.io.OutputStream r2 = r2.getOutputStream()     // Catch:{ Throwable -> 0x00b4 }
            r7.out = r2     // Catch:{ Throwable -> 0x00b4 }
            r8.setSuccess()     // Catch:{ Throwable -> 0x00b4 }
            if (r0 != 0) goto L_0x003a
            java.net.InetSocketAddress r0 = r7.getLocalAddress()     // Catch:{ Throwable -> 0x00b4 }
            org.jboss.netty.channel.Channels.fireChannelBound(r7, r0)     // Catch:{ Throwable -> 0x00b4 }
        L_0x003a:
            java.net.InetSocketAddress r0 = r7.getRemoteAddress()     // Catch:{ Throwable -> 0x00b4 }
            org.jboss.netty.channel.Channels.fireChannelConnected(r7, r0)     // Catch:{ Throwable -> 0x00b4 }
            java.util.concurrent.Executor r0 = r6.workerExecutor     // Catch:{ Throwable -> 0x00b4 }
            org.jboss.netty.util.ThreadRenamingRunnable r2 = new org.jboss.netty.util.ThreadRenamingRunnable     // Catch:{ Throwable -> 0x00b4 }
            org.jboss.netty.channel.socket.oio.OioWorker r3 = new org.jboss.netty.channel.socket.oio.OioWorker     // Catch:{ Throwable -> 0x00b4 }
            r3.<init>(r7)     // Catch:{ Throwable -> 0x00b4 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00b4 }
            r4.<init>()     // Catch:{ Throwable -> 0x00b4 }
            java.lang.String r5 = "Old I/O client worker ("
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Throwable -> 0x00b4 }
            java.lang.StringBuilder r4 = r4.append(r7)     // Catch:{ Throwable -> 0x00b4 }
            r5 = 41
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Throwable -> 0x00b4 }
            java.lang.String r4 = r4.toString()     // Catch:{ Throwable -> 0x00b4 }
            org.jboss.netty.util.ThreadNameDeterminer r5 = r6.determiner     // Catch:{ Throwable -> 0x00b4 }
            r2.<init>(r3, r4, r5)     // Catch:{ Throwable -> 0x00b4 }
            org.jboss.netty.util.internal.DeadLockProofWorker.start(r0, r2)     // Catch:{ Throwable -> 0x00b4 }
        L_0x006b:
            return
        L_0x006c:
            r0 = move-exception
            r1 = r2
        L_0x006e:
            boolean r2 = r0 instanceof java.net.ConnectException     // Catch:{ all -> 0x00b2 }
            if (r2 == 0) goto L_0x009e
            boolean r2 = r0 instanceof java.net.ConnectException     // Catch:{ all -> 0x00b2 }
            if (r2 == 0) goto L_0x009e
            java.net.ConnectException r2 = new java.net.ConnectException     // Catch:{ all -> 0x00b2 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00b2 }
            r3.<init>()     // Catch:{ all -> 0x00b2 }
            java.lang.String r4 = r0.getMessage()     // Catch:{ all -> 0x00b2 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00b2 }
            java.lang.String r4 = ": "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00b2 }
            java.lang.StringBuilder r3 = r3.append(r9)     // Catch:{ all -> 0x00b2 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x00b2 }
            r2.<init>(r3)     // Catch:{ all -> 0x00b2 }
            java.lang.StackTraceElement[] r0 = r0.getStackTrace()     // Catch:{ all -> 0x00b2 }
            r2.setStackTrace(r0)     // Catch:{ all -> 0x00b2 }
            r0 = r2
        L_0x009e:
            r8.setFailure(r0)     // Catch:{ all -> 0x00b2 }
            org.jboss.netty.channel.Channels.fireExceptionCaught(r7, r0)     // Catch:{ all -> 0x00b2 }
            if (r1 == 0) goto L_0x006b
            org.jboss.netty.channel.socket.oio.AbstractOioWorker.close(r7, r8)
            goto L_0x006b
        L_0x00aa:
            r0 = move-exception
            r1 = r2
        L_0x00ac:
            if (r1 == 0) goto L_0x00b1
            org.jboss.netty.channel.socket.oio.AbstractOioWorker.close(r7, r8)
        L_0x00b1:
            throw r0
        L_0x00b2:
            r0 = move-exception
            goto L_0x00ac
        L_0x00b4:
            r0 = move-exception
            goto L_0x006e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.oio.OioClientSocketPipelineSink.connect(org.jboss.netty.channel.socket.oio.OioClientSocketChannel, org.jboss.netty.channel.ChannelFuture, java.net.SocketAddress):void");
    }
}
