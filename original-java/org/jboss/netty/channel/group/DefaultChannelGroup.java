package org.jboss.netty.channel.group;

import java.net.SocketAddress;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ServerChannel;
import org.jboss.netty.util.internal.ConcurrentHashMap;

public class DefaultChannelGroup extends AbstractSet<Channel> implements ChannelGroup {
    private static final AtomicInteger nextId = new AtomicInteger();
    private final String name;
    private final ConcurrentMap<Integer, Channel> nonServerChannels;
    private final ChannelFutureListener remover;
    private final ConcurrentMap<Integer, Channel> serverChannels;

    public DefaultChannelGroup() {
        this("group-0x" + Integer.toHexString(nextId.incrementAndGet()));
    }

    public DefaultChannelGroup(String str) {
        this.serverChannels = new ConcurrentHashMap();
        this.nonServerChannels = new ConcurrentHashMap();
        this.remover = new ChannelFutureListener() {
            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                DefaultChannelGroup.this.remove(channelFuture.getChannel());
            }
        };
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        }
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public boolean isEmpty() {
        return this.nonServerChannels.isEmpty() && this.serverChannels.isEmpty();
    }

    public int size() {
        return this.nonServerChannels.size() + this.serverChannels.size();
    }

    public Channel find(Integer num) {
        Channel channel = (Channel) this.nonServerChannels.get(num);
        return channel != null ? channel : (Channel) this.serverChannels.get(num);
    }

    public boolean contains(Object obj) {
        if (obj instanceof Integer) {
            if (this.nonServerChannels.containsKey(obj) || this.serverChannels.containsKey(obj)) {
                return true;
            }
            return false;
        } else if (!(obj instanceof Channel)) {
            return false;
        } else {
            Channel channel = (Channel) obj;
            if (obj instanceof ServerChannel) {
                return this.serverChannels.containsKey(channel.getId());
            }
            return this.nonServerChannels.containsKey(channel.getId());
        }
    }

    public boolean add(Channel channel) {
        boolean z = (channel instanceof ServerChannel ? this.serverChannels : this.nonServerChannels).putIfAbsent(channel.getId(), channel) == null;
        if (z) {
            channel.getCloseFuture().addListener(this.remover);
        }
        return z;
    }

    public boolean remove(Object obj) {
        Channel channel = null;
        if (obj instanceof Integer) {
            channel = (Channel) this.nonServerChannels.remove(obj);
            if (channel == null) {
                channel = (Channel) this.serverChannels.remove(obj);
            }
        } else if (obj instanceof Channel) {
            Channel channel2 = (Channel) obj;
            if (channel2 instanceof ServerChannel) {
                channel = (Channel) this.serverChannels.remove(channel2.getId());
            } else {
                channel = (Channel) this.nonServerChannels.remove(channel2.getId());
            }
        }
        if (channel == null) {
            return false;
        }
        channel.getCloseFuture().removeListener(this.remover);
        return true;
    }

    public void clear() {
        this.nonServerChannels.clear();
        this.serverChannels.clear();
    }

    public Iterator<Channel> iterator() {
        return new CombinedIterator(this.serverChannels.values().iterator(), this.nonServerChannels.values().iterator());
    }

    public Object[] toArray() {
        ArrayList arrayList = new ArrayList(size());
        arrayList.addAll(this.serverChannels.values());
        arrayList.addAll(this.nonServerChannels.values());
        return arrayList.toArray();
    }

    public <T> T[] toArray(T[] tArr) {
        ArrayList arrayList = new ArrayList(size());
        arrayList.addAll(this.serverChannels.values());
        arrayList.addAll(this.nonServerChannels.values());
        return arrayList.toArray(tArr);
    }

    public ChannelGroupFuture close() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(size());
        for (Channel channel : this.serverChannels.values()) {
            linkedHashMap.put(channel.getId(), channel.close().awaitUninterruptibly());
        }
        for (Channel channel2 : this.nonServerChannels.values()) {
            linkedHashMap.put(channel2.getId(), channel2.close());
        }
        return new DefaultChannelGroupFuture((ChannelGroup) this, (Map<Integer, ChannelFuture>) linkedHashMap);
    }

    public ChannelGroupFuture disconnect() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(size());
        for (Channel channel : this.serverChannels.values()) {
            linkedHashMap.put(channel.getId(), channel.disconnect().awaitUninterruptibly());
        }
        for (Channel channel2 : this.nonServerChannels.values()) {
            linkedHashMap.put(channel2.getId(), channel2.disconnect());
        }
        return new DefaultChannelGroupFuture((ChannelGroup) this, (Map<Integer, ChannelFuture>) linkedHashMap);
    }

    public ChannelGroupFuture setInterestOps(int i) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(size());
        for (Channel channel : this.serverChannels.values()) {
            linkedHashMap.put(channel.getId(), channel.setInterestOps(i).awaitUninterruptibly());
        }
        for (Channel channel2 : this.nonServerChannels.values()) {
            linkedHashMap.put(channel2.getId(), channel2.setInterestOps(i));
        }
        return new DefaultChannelGroupFuture((ChannelGroup) this, (Map<Integer, ChannelFuture>) linkedHashMap);
    }

    public ChannelGroupFuture setReadable(boolean z) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(size());
        for (Channel channel : this.serverChannels.values()) {
            linkedHashMap.put(channel.getId(), channel.setReadable(z).awaitUninterruptibly());
        }
        for (Channel channel2 : this.nonServerChannels.values()) {
            linkedHashMap.put(channel2.getId(), channel2.setReadable(z));
        }
        return new DefaultChannelGroupFuture((ChannelGroup) this, (Map<Integer, ChannelFuture>) linkedHashMap);
    }

    public ChannelGroupFuture unbind() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(size());
        for (Channel channel : this.serverChannels.values()) {
            linkedHashMap.put(channel.getId(), channel.unbind().awaitUninterruptibly());
        }
        for (Channel channel2 : this.nonServerChannels.values()) {
            linkedHashMap.put(channel2.getId(), channel2.unbind());
        }
        return new DefaultChannelGroupFuture((ChannelGroup) this, (Map<Integer, ChannelFuture>) linkedHashMap);
    }

    public ChannelGroupFuture write(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(size());
        if (obj instanceof ChannelBuffer) {
            ChannelBuffer channelBuffer = (ChannelBuffer) obj;
            for (Channel channel : this.nonServerChannels.values()) {
                linkedHashMap.put(channel.getId(), channel.write(channelBuffer.duplicate()));
            }
        } else {
            for (Channel channel2 : this.nonServerChannels.values()) {
                linkedHashMap.put(channel2.getId(), channel2.write(obj));
            }
        }
        return new DefaultChannelGroupFuture((ChannelGroup) this, (Map<Integer, ChannelFuture>) linkedHashMap);
    }

    public ChannelGroupFuture write(Object obj, SocketAddress socketAddress) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(size());
        if (obj instanceof ChannelBuffer) {
            ChannelBuffer channelBuffer = (ChannelBuffer) obj;
            for (Channel channel : this.nonServerChannels.values()) {
                linkedHashMap.put(channel.getId(), channel.write(channelBuffer.duplicate(), socketAddress));
            }
        } else {
            for (Channel channel2 : this.nonServerChannels.values()) {
                linkedHashMap.put(channel2.getId(), channel2.write(obj, socketAddress));
            }
        }
        return new DefaultChannelGroupFuture((ChannelGroup) this, (Map<Integer, ChannelFuture>) linkedHashMap);
    }

    public int hashCode() {
        return System.identityHashCode(this);
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public int compareTo(ChannelGroup channelGroup) {
        int compareTo = getName().compareTo(channelGroup.getName());
        return compareTo != 0 ? compareTo : System.identityHashCode(this) - System.identityHashCode(channelGroup);
    }

    public String toString() {
        return getClass().getSimpleName() + "(name: " + getName() + ", size: " + size() + ')';
    }
}
