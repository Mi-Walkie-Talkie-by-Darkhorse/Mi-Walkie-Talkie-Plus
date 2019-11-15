package org.jboss.netty.channel.socket;

import java.net.ServerSocket;
import java.net.SocketException;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.DefaultServerChannelConfig;
import org.jboss.netty.util.internal.ConversionUtil;

public class DefaultServerSocketChannelConfig extends DefaultServerChannelConfig implements ServerSocketChannelConfig {
    private volatile int backlog;
    private final ServerSocket socket;

    public DefaultServerSocketChannelConfig(ServerSocket serverSocket) {
        if (serverSocket == null) {
            throw new NullPointerException("socket");
        }
        this.socket = serverSocket;
    }

    public boolean setOption(String str, Object obj) {
        if (super.setOption(str, obj)) {
            return true;
        }
        if ("receiveBufferSize".equals(str)) {
            setReceiveBufferSize(ConversionUtil.toInt(obj));
            return true;
        } else if ("reuseAddress".equals(str)) {
            setReuseAddress(ConversionUtil.toBoolean(obj));
            return true;
        } else if (!"backlog".equals(str)) {
            return false;
        } else {
            setBacklog(ConversionUtil.toInt(obj));
            return true;
        }
    }

    public boolean isReuseAddress() {
        try {
            return this.socket.getReuseAddress();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setReuseAddress(boolean z) {
        try {
            this.socket.setReuseAddress(z);
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public int getReceiveBufferSize() {
        try {
            return this.socket.getReceiveBufferSize();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setReceiveBufferSize(int i) {
        try {
            this.socket.setReceiveBufferSize(i);
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setPerformancePreferences(int i, int i2, int i3) {
        this.socket.setPerformancePreferences(i, i2, i3);
    }

    public int getBacklog() {
        return this.backlog;
    }

    public void setBacklog(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("backlog: " + i);
        }
        this.backlog = i;
    }
}
