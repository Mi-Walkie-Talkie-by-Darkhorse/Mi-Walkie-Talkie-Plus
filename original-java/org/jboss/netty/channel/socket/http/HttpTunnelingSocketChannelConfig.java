package org.jboss.netty.channel.socket.http;

import java.util.Map;
import java.util.Map.Entry;
import javax.net.ssl.SSLContext;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.channel.ChannelPipelineFactory;
import org.jboss.netty.channel.socket.SocketChannelConfig;
import org.jboss.netty.util.internal.ConversionUtil;

public final class HttpTunnelingSocketChannelConfig implements SocketChannelConfig {
    private final HttpTunnelingClientSocketChannel channel;
    private volatile boolean enableSslSessionCreation = true;
    private volatile String[] enabledSslCipherSuites;
    private volatile String[] enabledSslProtocols;
    private volatile String serverName;
    private volatile String serverPath = "/netty-tunnel";
    private volatile SSLContext sslContext;

    HttpTunnelingSocketChannelConfig(HttpTunnelingClientSocketChannel httpTunnelingClientSocketChannel) {
        this.channel = httpTunnelingClientSocketChannel;
    }

    public String getServerName() {
        return this.serverName;
    }

    public void setServerName(String str) {
        this.serverName = str;
    }

    public String getServerPath() {
        return this.serverPath;
    }

    public void setServerPath(String str) {
        if (str == null) {
            throw new NullPointerException("serverPath");
        }
        this.serverPath = str;
    }

    public SSLContext getSslContext() {
        return this.sslContext;
    }

    public void setSslContext(SSLContext sSLContext) {
        this.sslContext = sSLContext;
    }

    public String[] getEnabledSslCipherSuites() {
        String[] strArr = this.enabledSslCipherSuites;
        if (strArr == null) {
            return null;
        }
        return (String[]) strArr.clone();
    }

    public void setEnabledSslCipherSuites(String[] strArr) {
        if (strArr == null) {
            this.enabledSslCipherSuites = null;
        } else {
            this.enabledSslCipherSuites = (String[]) strArr.clone();
        }
    }

    public String[] getEnabledSslProtocols() {
        String[] strArr = this.enabledSslProtocols;
        if (strArr == null) {
            return null;
        }
        return (String[]) strArr.clone();
    }

    public void setEnabledSslProtocols(String[] strArr) {
        if (strArr == null) {
            this.enabledSslProtocols = null;
        } else {
            this.enabledSslProtocols = (String[]) strArr.clone();
        }
    }

    public boolean isEnableSslSessionCreation() {
        return this.enableSslSessionCreation;
    }

    public void setEnableSslSessionCreation(boolean z) {
        this.enableSslSessionCreation = z;
    }

    public void setOptions(Map<String, Object> map) {
        for (Entry entry : map.entrySet()) {
            setOption((String) entry.getKey(), entry.getValue());
        }
    }

    public boolean setOption(String str, Object obj) {
        if (this.channel.realChannel.getConfig().setOption(str, obj)) {
            return true;
        }
        if ("serverName".equals(str)) {
            setServerName(String.valueOf(obj));
            return true;
        } else if ("serverPath".equals(str)) {
            setServerPath(String.valueOf(obj));
            return true;
        } else if ("sslContext".equals(str)) {
            setSslContext((SSLContext) obj);
            return true;
        } else if ("enabledSslCipherSuites".equals(str)) {
            setEnabledSslCipherSuites(ConversionUtil.toStringArray(obj));
            return true;
        } else if ("enabledSslProtocols".equals(str)) {
            setEnabledSslProtocols(ConversionUtil.toStringArray(obj));
            return true;
        } else if (!"enableSslSessionCreation".equals(str)) {
            return false;
        } else {
            setEnableSslSessionCreation(ConversionUtil.toBoolean(obj));
            return true;
        }
    }

    public int getReceiveBufferSize() {
        return this.channel.realChannel.getConfig().getReceiveBufferSize();
    }

    public int getSendBufferSize() {
        return this.channel.realChannel.getConfig().getSendBufferSize();
    }

    public int getSoLinger() {
        return this.channel.realChannel.getConfig().getSoLinger();
    }

    public int getTrafficClass() {
        return this.channel.realChannel.getConfig().getTrafficClass();
    }

    public boolean isKeepAlive() {
        return this.channel.realChannel.getConfig().isKeepAlive();
    }

    public boolean isReuseAddress() {
        return this.channel.realChannel.getConfig().isReuseAddress();
    }

    public boolean isTcpNoDelay() {
        return this.channel.realChannel.getConfig().isTcpNoDelay();
    }

    public void setKeepAlive(boolean z) {
        this.channel.realChannel.getConfig().setKeepAlive(z);
    }

    public void setPerformancePreferences(int i, int i2, int i3) {
        this.channel.realChannel.getConfig().setPerformancePreferences(i, i2, i3);
    }

    public void setReceiveBufferSize(int i) {
        this.channel.realChannel.getConfig().setReceiveBufferSize(i);
    }

    public void setReuseAddress(boolean z) {
        this.channel.realChannel.getConfig().setReuseAddress(z);
    }

    public void setSendBufferSize(int i) {
        this.channel.realChannel.getConfig().setSendBufferSize(i);
    }

    public void setSoLinger(int i) {
        this.channel.realChannel.getConfig().setSoLinger(i);
    }

    public void setTcpNoDelay(boolean z) {
        this.channel.realChannel.getConfig().setTcpNoDelay(z);
    }

    public void setTrafficClass(int i) {
        this.channel.realChannel.getConfig().setTrafficClass(i);
    }

    public ChannelBufferFactory getBufferFactory() {
        return this.channel.realChannel.getConfig().getBufferFactory();
    }

    public int getConnectTimeoutMillis() {
        return this.channel.realChannel.getConfig().getConnectTimeoutMillis();
    }

    public ChannelPipelineFactory getPipelineFactory() {
        return this.channel.realChannel.getConfig().getPipelineFactory();
    }

    public void setBufferFactory(ChannelBufferFactory channelBufferFactory) {
        this.channel.realChannel.getConfig().setBufferFactory(channelBufferFactory);
    }

    public void setConnectTimeoutMillis(int i) {
        this.channel.realChannel.getConfig().setConnectTimeoutMillis(i);
    }

    public void setPipelineFactory(ChannelPipelineFactory channelPipelineFactory) {
        this.channel.realChannel.getConfig().setPipelineFactory(channelPipelineFactory);
    }
}
