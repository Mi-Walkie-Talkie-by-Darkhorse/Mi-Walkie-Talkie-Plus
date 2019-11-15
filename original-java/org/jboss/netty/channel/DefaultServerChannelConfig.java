package org.jboss.netty.channel;

import java.util.Map;
import java.util.Map.Entry;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.buffer.HeapChannelBufferFactory;

public class DefaultServerChannelConfig implements ChannelConfig {
    private volatile ChannelBufferFactory bufferFactory = HeapChannelBufferFactory.getInstance();
    private volatile ChannelPipelineFactory pipelineFactory;

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
        } else if (!"bufferFactory".equals(str)) {
            return false;
        } else {
            setBufferFactory((ChannelBufferFactory) obj);
        }
        return true;
    }

    public ChannelPipelineFactory getPipelineFactory() {
        return this.pipelineFactory;
    }

    public void setPipelineFactory(ChannelPipelineFactory channelPipelineFactory) {
        if (channelPipelineFactory == null) {
            throw new NullPointerException("pipelineFactory");
        }
        this.pipelineFactory = channelPipelineFactory;
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

    public int getConnectTimeoutMillis() {
        return 0;
    }

    public void setConnectTimeoutMillis(int i) {
    }
}
