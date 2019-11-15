package com.mi.milinkforgame.sdk.base.os.dns;

import com.mi.milinkforgame.sdk.util.SecureRandomUtils;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.security.SecureRandom;

final class UdpClient {
    private static final int EPHEMERAL_RANGE = 64511;
    private static final int EPHEMERAL_START = 1024;
    private static final int EPHEMERAL_STOP = 65535;
    private static final int MAX_SIZE = 512;
    private static SecureRandom prng = SecureRandomUtils.createSecureRandom();
    private long timeout_value = 5000;

    UdpClient() {
    }

    public byte[] sendrecv(String str, byte[] bArr) throws IOException, SocketTimeoutException {
        SelectionKey selectionKey = null;
        try {
            DatagramChannel open = DatagramChannel.open();
            open.configureBlocking(false);
            SelectionKey register = open.register(Selector.open(), 1);
            try {
                DatagramChannel datagramChannel = (DatagramChannel) register.channel();
                datagramChannel.socket().bind(new InetSocketAddress(prng.nextInt(EPHEMERAL_RANGE) + 1024));
                datagramChannel.connect(new InetSocketAddress(InetAddress.getByName(str), 53));
                datagramChannel.write(ByteBuffer.wrap(bArr));
                byte[] bArr2 = new byte[512];
                long currentTimeMillis = System.currentTimeMillis() + this.timeout_value;
                while (!register.isReadable()) {
                    blockUntil(register, currentTimeMillis);
                }
                if (register.isValid()) {
                    register.interestOps(0);
                }
                long read = (long) datagramChannel.read(ByteBuffer.wrap(bArr2));
                if (read > 0) {
                    int i = (int) read;
                    byte[] bArr3 = new byte[i];
                    System.arraycopy(bArr2, 0, bArr3, 0, i);
                    if (register == null) {
                        return bArr3;
                    }
                    register.selector().close();
                    register.channel().close();
                    return bArr3;
                }
                if (register != null) {
                    register.selector().close();
                    register.channel().close();
                }
                return null;
            } catch (Throwable th) {
                th = th;
                selectionKey = register;
                if (selectionKey != null) {
                    selectionKey.selector().close();
                    selectionKey.channel().close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void setTimeout(long j) {
        if (j > 0) {
            this.timeout_value = j;
        }
    }

    private static void blockUntil(SelectionKey selectionKey, long j) throws IOException, SocketTimeoutException {
        long currentTimeMillis = j - System.currentTimeMillis();
        int i = 0;
        if (currentTimeMillis > 0) {
            i = selectionKey.selector().select(currentTimeMillis);
        } else if (currentTimeMillis == 0) {
            i = selectionKey.selector().selectNow();
        }
        if (i == 0) {
            throw new SocketTimeoutException();
        }
    }
}
