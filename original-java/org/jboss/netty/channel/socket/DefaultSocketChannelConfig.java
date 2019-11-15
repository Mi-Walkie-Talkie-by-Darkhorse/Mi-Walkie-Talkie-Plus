package org.jboss.netty.channel.socket;

import java.net.Socket;
import java.net.SocketException;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.DefaultChannelConfig;
import org.jboss.netty.util.internal.ConversionUtil;

public class DefaultSocketChannelConfig extends DefaultChannelConfig implements SocketChannelConfig {
    private final Socket socket;

    public DefaultSocketChannelConfig(Socket socket2) {
        if (socket2 == null) {
            throw new NullPointerException("socket");
        }
        this.socket = socket2;
    }

    public boolean setOption(String str, Object obj) {
        if (super.setOption(str, obj)) {
            return true;
        }
        if ("receiveBufferSize".equals(str)) {
            setReceiveBufferSize(ConversionUtil.toInt(obj));
            return true;
        } else if ("sendBufferSize".equals(str)) {
            setSendBufferSize(ConversionUtil.toInt(obj));
            return true;
        } else if ("tcpNoDelay".equals(str)) {
            setTcpNoDelay(ConversionUtil.toBoolean(obj));
            return true;
        } else if ("keepAlive".equals(str)) {
            setKeepAlive(ConversionUtil.toBoolean(obj));
            return true;
        } else if ("reuseAddress".equals(str)) {
            setReuseAddress(ConversionUtil.toBoolean(obj));
            return true;
        } else if ("soLinger".equals(str)) {
            setSoLinger(ConversionUtil.toInt(obj));
            return true;
        } else if (!"trafficClass".equals(str)) {
            return false;
        } else {
            setTrafficClass(ConversionUtil.toInt(obj));
            return true;
        }
    }

    public int getReceiveBufferSize() {
        try {
            return this.socket.getReceiveBufferSize();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public int getSendBufferSize() {
        try {
            return this.socket.getSendBufferSize();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public int getSoLinger() {
        try {
            return this.socket.getSoLinger();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public int getTrafficClass() {
        try {
            return this.socket.getTrafficClass();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public boolean isKeepAlive() {
        try {
            return this.socket.getKeepAlive();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public boolean isReuseAddress() {
        try {
            return this.socket.getReuseAddress();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public boolean isTcpNoDelay() {
        try {
            return this.socket.getTcpNoDelay();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setKeepAlive(boolean z) {
        try {
            this.socket.setKeepAlive(z);
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setPerformancePreferences(int i, int i2, int i3) {
        this.socket.setPerformancePreferences(i, i2, i3);
    }

    public void setReceiveBufferSize(int i) {
        try {
            this.socket.setReceiveBufferSize(i);
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

    public void setSendBufferSize(int i) {
        try {
            this.socket.setSendBufferSize(i);
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setSoLinger(int i) {
        if (i < 0) {
            try {
                this.socket.setSoLinger(false, 0);
            } catch (SocketException e) {
                throw new ChannelException((Throwable) e);
            }
        } else {
            this.socket.setSoLinger(true, i);
        }
    }

    public void setTcpNoDelay(boolean z) {
        try {
            this.socket.setTcpNoDelay(z);
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setTrafficClass(int i) {
        try {
            this.socket.setTrafficClass(i);
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }
}
