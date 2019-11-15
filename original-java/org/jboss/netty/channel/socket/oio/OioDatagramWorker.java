package org.jboss.netty.channel.socket.oio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.DatagramPacket;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;

class OioDatagramWorker extends AbstractOioWorker<OioDatagramChannel> {
    OioDatagramWorker(OioDatagramChannel oioDatagramChannel) {
        super(oioDatagramChannel);
    }

    /* access modifiers changed from: 0000 */
    public boolean process() throws IOException {
        byte[] bArr = new byte[((OioDatagramChannel) this.channel).getConfig().getReceiveBufferSizePredictor().nextReceiveBufferSize()];
        DatagramPacket datagramPacket = new DatagramPacket(bArr, bArr.length);
        try {
            ((OioDatagramChannel) this.channel).socket.receive(datagramPacket);
            Channels.fireMessageReceived((Channel) this.channel, (Object) ((OioDatagramChannel) this.channel).getConfig().getBufferFactory().getBuffer(bArr, 0, datagramPacket.getLength()), datagramPacket.getSocketAddress());
        } catch (InterruptedIOException e) {
        }
        return true;
    }

    static void write(OioDatagramChannel oioDatagramChannel, ChannelFuture channelFuture, Object obj, SocketAddress socketAddress) {
        DatagramPacket datagramPacket;
        boolean isIoThread = isIoThread(oioDatagramChannel);
        try {
            ChannelBuffer channelBuffer = (ChannelBuffer) obj;
            int readerIndex = channelBuffer.readerIndex();
            int readableBytes = channelBuffer.readableBytes();
            ByteBuffer byteBuffer = channelBuffer.toByteBuffer();
            if (byteBuffer.hasArray()) {
                datagramPacket = new DatagramPacket(byteBuffer.array(), readerIndex + byteBuffer.arrayOffset(), readableBytes);
            } else {
                byte[] bArr = new byte[readableBytes];
                channelBuffer.getBytes(0, bArr);
                datagramPacket = new DatagramPacket(bArr, readableBytes);
            }
            if (socketAddress != null) {
                datagramPacket.setSocketAddress(socketAddress);
            }
            oioDatagramChannel.socket.send(datagramPacket);
            if (isIoThread) {
                Channels.fireWriteComplete((Channel) oioDatagramChannel, (long) readableBytes);
            } else {
                Channels.fireWriteCompleteLater(oioDatagramChannel, (long) readableBytes);
            }
            channelFuture.setSuccess();
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            if (isIoThread) {
                Channels.fireExceptionCaught((Channel) oioDatagramChannel, th);
            } else {
                Channels.fireExceptionCaughtLater((Channel) oioDatagramChannel, th);
            }
        }
    }

    static void disconnect(OioDatagramChannel oioDatagramChannel, ChannelFuture channelFuture) {
        boolean isConnected = oioDatagramChannel.isConnected();
        boolean isIoThread = isIoThread(oioDatagramChannel);
        try {
            oioDatagramChannel.socket.disconnect();
            channelFuture.setSuccess();
            if (!isConnected) {
                return;
            }
            if (isIoThread) {
                Channels.fireChannelDisconnected((Channel) oioDatagramChannel);
            } else {
                Channels.fireChannelDisconnectedLater(oioDatagramChannel);
            }
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            if (isIoThread) {
                Channels.fireExceptionCaught((Channel) oioDatagramChannel, th);
            } else {
                Channels.fireExceptionCaughtLater((Channel) oioDatagramChannel, th);
            }
        }
    }
}
