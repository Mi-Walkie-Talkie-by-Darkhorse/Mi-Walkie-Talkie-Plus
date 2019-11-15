package org.jboss.netty.channel;

import java.util.Map;
import java.util.Map.Entry;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.buffer.HeapChannelBufferFactory;
import org.jboss.netty.util.internal.ConversionUtil;

public class DefaultChannelConfig implements ChannelConfig {
    private volatile ChannelBufferFactory bufferFactory = HeapChannelBufferFactory.getInstance();
    private volatile int connectTimeoutMillis = 10000;

    public void setOptions(Map<String, Object> map) {
        for (Entry entry : map.entrySet()) {
            setOption((String) entry.getKey(), entry.getValue());
        }
    }

    public boolean setOption(String str, Object obj) {
        if (str == null) {
            throw new NullPointerException("key");
        }
        if ("pipelineFactory".equals(str)) {
            setPipelineFactory((ChannelPipelineFactory) obj);
        } else if ("connectTimeoutMillis".equals(str)) {
            setConnectTimeoutMillis(ConversionUtil.toInt(obj));
        } else if (!"bufferFactory".equals(str)) {
            return false;
        } else {
            setBufferFactory((ChannelBufferFactory) obj);
        }
        return true;
    }

    public int getConnectTimeoutMillis() {
        return this.connectTimeoutMillis;
    }

    public ChannelBufferFactory getBufferFactory() {
        return this.bufferFactory;
    }

    public void setBufferFactory(ChannelBufferFactory channelBufferFactory) {
        if (channelBufferFactory == null) {
            throw new NullPointerException("bufferFactory");
        }
        this.bufferFactory = channelBufferFactory;
    }

    public ChannelPipelineFactory getPipelineFactory() {
        return null;
    }

    public void setConnectTimeoutMillis(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("connectTimeoutMillis: " + i);
        }
        this.connectTimeoutMillis = i;
    }

    public void setPipelineFactory(ChannelPipelineFactory channelPipelineFactory) {
    }
}
