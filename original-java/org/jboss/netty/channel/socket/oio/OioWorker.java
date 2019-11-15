package org.jboss.netty.channel.socket.oio;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.WritableByteChannel;
import java.util.regex.Pattern;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.DefaultFileRegion;
import org.jboss.netty.channel.FileRegion;

class OioWorker extends AbstractOioWorker<OioSocketChannel> {
    private static final Pattern SOCKET_CLOSED_MESSAGE = Pattern.compile("^.*(?:Socket.*closed).*$", 2);

    OioWorker(OioSocketChannel oioSocketChannel) {
        super(oioSocketChannel);
    }

    public void run() {
        if ((this.channel instanceof OioAcceptedSocketChannel) && ((OioSocketChannel) this.channel).isOpen()) {
            Channels.fireChannelConnected((Channel) this.channel, (SocketAddress) ((OioSocketChannel) this.channel).getRemoteAddress());
        }
        super.run();
    }

    /* access modifiers changed from: 0000 */
    public boolean process() throws IOException {
        PushbackInputStream inputStream = ((OioSocketChannel) this.channel).getInputStream();
        int available = inputStream.available();
        if (available > 0) {
            byte[] bArr = new byte[available];
            Channels.fireMessageReceived((Channel) this.channel, (Object) ((OioSocketChannel) this.channel).getConfig().getBufferFactory().getBuffer(bArr, 0, inputStream.read(bArr)));
            return true;
        }
        int read = inputStream.read();
        if (read < 0) {
            return false;
        }
        inputStream.unread(read);
        return true;
    }

    /* JADX INFO: finally extract failed */
    static void write(OioSocketChannel oioSocketChannel, ChannelFuture channelFuture, Object obj) {
        int readableBytes;
        boolean isIoThread = isIoThread(oioSocketChannel);
        OutputStream outputStream = oioSocketChannel.getOutputStream();
        if (outputStream == null) {
            ClosedChannelException closedChannelException = new ClosedChannelException();
            channelFuture.setFailure(closedChannelException);
            if (isIoThread) {
                Channels.fireExceptionCaught((Channel) oioSocketChannel, (Throwable) closedChannelException);
            } else {
                Channels.fireExceptionCaughtLater((Channel) oioSocketChannel, (Throwable) closedChannelException);
            }
        } else {
            int i = 0;
            try {
                if (obj instanceof FileRegion) {
                    FileRegion fileRegion = (FileRegion) obj;
                    try {
                        synchronized (outputStream) {
                            WritableByteChannel newChannel = java.nio.channels.Channels.newChannel(outputStream);
                            do {
                                long transferTo = fileRegion.transferTo(newChannel, (long) i);
                                if (transferTo <= 0) {
                                    break;
                                }
                                i = (int) (transferTo + ((long) i));
                            } while (((long) i) < fileRegion.getCount());
                        }
                        if ((fileRegion instanceof DefaultFileRegion) && ((DefaultFileRegion) fileRegion).releaseAfterTransfer()) {
                            fileRegion.releaseExternalResources();
                        }
                        readableBytes = i;
                    } catch (Throwable th) {
                        Throwable th2 = th;
                        if ((fileRegion instanceof DefaultFileRegion) && ((DefaultFileRegion) fileRegion).releaseAfterTransfer()) {
                            fileRegion.releaseExternalResources();
                        }
                        throw th2;
                    }
                } else {
                    ChannelBuffer channelBuffer = (ChannelBuffer) obj;
                    readableBytes = channelBuffer.readableBytes();
                    synchronized (outputStream) {
                        channelBuffer.getBytes(channelBuffer.readerIndex(), outputStream, readableBytes);
                    }
                }
                channelFuture.setSuccess();
                if (isIoThread) {
                    Channels.fireWriteComplete((Channel) oioSocketChannel, (long) readableBytes);
                } else {
                    Channels.fireWriteCompleteLater(oioSocketChannel, (long) readableBytes);
                }
            } catch (Throwable th3) {
                th = th3;
                if ((th instanceof SocketException) && SOCKET_CLOSED_MESSAGE.matcher(String.valueOf(th.getMessage())).matches()) {
                    th = new ClosedChannelException();
                }
                channelFuture.setFailure(th);
                if (isIoThread) {
                    Channels.fireExceptionCaught((Channel) oioSocketChannel, th);
                } else {
                    Channels.fireExceptionCaughtLater((Channel) oioSocketChannel, th);
                }
            }
        }
    }
}
