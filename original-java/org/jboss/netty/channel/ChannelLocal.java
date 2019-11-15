package org.jboss.netty.channel;

import com.mi.milinkforgame.sdk.data.Const;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentMap;
import org.jboss.netty.util.internal.ConcurrentIdentityWeakKeyHashMap;

public class ChannelLocal<T> implements Iterable<Entry<Channel, T>> {
    private final ConcurrentMap<Channel, T> map;
    private final boolean removeOnClose;
    private final ChannelFutureListener remover;

    public ChannelLocal() {
        this(false);
    }

    public ChannelLocal(boolean z) {
        this.map = new ConcurrentIdentityWeakKeyHashMap();
        this.remover = new ChannelFutureListener() {
            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                ChannelLocal.this.remove(channelFuture.getChannel());
            }
        };
        this.removeOnClose = z;
    }

    /* access modifiers changed from: protected */
    public T initialValue(Channel channel) {
        return null;
    }

    public T get(Channel channel) {
        if (channel == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        }
        T t = this.map.get(channel);
        if (t != null) {
            return t;
        }
        Object initialValue = initialValue(channel);
        if (initialValue != null) {
            T ifAbsent = setIfAbsent(channel, initialValue);
            if (ifAbsent != null) {
                return ifAbsent;
            }
        }
        return initialValue;
    }

    public T set(Channel channel, T t) {
        if (t == null) {
            return remove(channel);
        }
        if (channel == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        }
        T put = this.map.put(channel, t);
        if (!this.removeOnClose) {
            return put;
        }
        channel.getCloseFuture().addListener(this.remover);
        return put;
    }

    public T setIfAbsent(Channel channel, T t) {
        if (t == null) {
            return get(channel);
        }
        if (channel == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        }
        T putIfAbsent = this.map.putIfAbsent(channel, t);
        if (!this.removeOnClose || putIfAbsent != null) {
            return putIfAbsent;
        }
        channel.getCloseFuture().addListener(this.remover);
        return putIfAbsent;
    }

    public T remove(Channel channel) {
        if (channel == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        }
        T remove = this.map.remove(channel);
        if (remove == null) {
            return initialValue(channel);
        }
        if (!this.removeOnClose) {
            return remove;
        }
        channel.getCloseFuture().removeListener(this.remover);
        return remove;
    }

    public Iterator<Entry<Channel, T>> iterator() {
        return Collections.unmodifiableSet(this.map.entrySet()).iterator();
    }
}
