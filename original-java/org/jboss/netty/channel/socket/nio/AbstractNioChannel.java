package org.jboss.netty.channel.socket.nio;

import java.net.InetSocketAddress;
import java.nio.channels.SelectableChannel;
import java.nio.channels.WritableByteChannel;
import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.AbstractChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.util.internal.ThreadLocalBoolean;

abstract class AbstractNioChannel<C extends SelectableChannel & WritableByteChannel> extends AbstractChannel {
    final C channel;
    SendBuffer currentWriteBuffer;
    MessageEvent currentWriteEvent;
    final AtomicInteger highWaterMarkCounter = new AtomicInteger();
    boolean inWriteNowLoop;
    private volatile InetSocketAddress localAddress;
    volatile InetSocketAddress remoteAddress;
    final AbstractNioWorker worker;
    final Queue<MessageEvent> writeBufferQueue = new WriteRequestQueue();
    final AtomicInteger writeBufferSize = new AtomicInteger();
    final Object writeLock = new Object();
    boolean writeSuspended;
    final Runnable writeTask = new WriteTask();
    final AtomicBoolean writeTaskInTaskQueue = new AtomicBoolean();

    private final class WriteRequestQueue implements Queue<MessageEvent> {
        static final /* synthetic */ boolean $assertionsDisabled = (!AbstractNioChannel.class.desiredAssertionStatus());
        private final ThreadLocalBoolean notifying = new ThreadLocalBoolean();
        private final Queue<MessageEvent> queue = new ConcurrentLinkedQueue();

        public WriteRequestQueue() {
        }

        public MessageEvent remove() {
            return (MessageEvent) this.queue.remove();
        }

        public MessageEvent element() {
            return (MessageEvent) this.queue.element();
        }

        public MessageEvent peek() {
            return (MessageEvent) this.queue.peek();
        }

        public int size() {
            return this.queue.size();
        }

        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        public Iterator<MessageEvent> iterator() {
            return this.queue.iterator();
        }

        public Object[] toArray() {
            return this.queue.toArray();
        }

        public <T> T[] toArray(T[] tArr) {
            return this.queue.toArray(tArr);
        }

        public boolean containsAll(Collection<?> collection) {
            return this.queue.containsAll(collection);
        }

        public boolean addAll(Collection<? extends MessageEvent> collection) {
            return this.queue.addAll(collection);
        }

        public boolean removeAll(Collection<?> collection) {
            return this.queue.removeAll(collection);
        }

        public boolean retainAll(Collection<?> collection) {
            return this.queue.retainAll(collection);
        }

        public void clear() {
            this.queue.clear();
        }

        public boolean add(MessageEvent messageEvent) {
            return this.queue.add(messageEvent);
        }

        public boolean remove(Object obj) {
            return this.queue.remove(obj);
        }

        public boolean contains(Object obj) {
            return this.queue.contains(obj);
        }

        public boolean offer(MessageEvent messageEvent) {
            boolean offer = this.queue.offer(messageEvent);
            if ($assertionsDisabled || offer) {
                int messageSize = getMessageSize(messageEvent);
                int addAndGet = AbstractNioChannel.this.writeBufferSize.addAndGet(messageSize);
                int writeBufferHighWaterMark = AbstractNioChannel.this.getConfig().getWriteBufferHighWaterMark();
                if (addAndGet >= writeBufferHighWaterMark && addAndGet - messageSize < writeBufferHighWaterMark) {
                    AbstractNioChannel.this.highWaterMarkCounter.incrementAndGet();
                    if (!((Boolean) this.notifying.get()).booleanValue()) {
                        this.notifying.set(Boolean.TRUE);
                        Channels.fireChannelInterestChanged((Channel) AbstractNioChannel.this);
                        this.notifying.set(Boolean.FALSE);
                    }
                }
                return true;
            }
            throw new AssertionError();
        }

        public MessageEvent poll() {
            MessageEvent messageEvent = (MessageEvent) this.queue.poll();
            if (messageEvent != null) {
                int messageSize = getMessageSize(messageEvent);
                int addAndGet = AbstractNioChannel.this.writeBufferSize.addAndGet(-messageSize);
                int writeBufferLowWaterMark = AbstractNioChannel.this.getConfig().getWriteBufferLowWaterMark();
                if ((addAndGet == 0 || addAndGet < writeBufferLowWaterMark) && messageSize + addAndGet >= writeBufferLowWaterMark) {
                    AbstractNioChannel.this.highWaterMarkCounter.decrementAndGet();
                    if (AbstractNioChannel.this.isConnected() && !((Boolean) this.notifying.get()).booleanValue()) {
                        this.notifying.set(Boolean.TRUE);
                        Channels.fireChannelInterestChanged((Channel) AbstractNioChannel.this);
                        this.notifying.set(Boolean.FALSE);
                    }
                }
            }
            return messageEvent;
        }

        private int getMessageSize(MessageEvent messageEvent) {
            Object message = messageEvent.getMessage();
            if (message instanceof ChannelBuffer) {
                return ((ChannelBuffer) message).readableBytes();
            }
            return 0;
        }
    }

    private final class WriteTask implements Runnable {
        WriteTask() {
        }

        public void run() {
            AbstractNioChannel.this.writeTaskInTaskQueue.set(false);
            AbstractNioChannel.this.worker.writeFromTaskLoop(AbstractNioChannel.this);
        }
    }

    public abstract NioChannelConfig getConfig();

    /* access modifiers changed from: 0000 */
    public abstract InetSocketAddress getLocalSocketAddress() throws Exception;

    /* access modifiers changed from: 0000 */
    public abstract InetSocketAddress getRemoteSocketAddress() throws Exception;

    protected AbstractNioChannel(Integer num, Channel channel2, ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink, AbstractNioWorker abstractNioWorker, C c) {
        super(num, channel2, channelFactory, channelPipeline, channelSink);
        this.worker = abstractNioWorker;
        this.channel = c;
    }

    protected AbstractNioChannel(Channel channel2, ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink, AbstractNioWorker abstractNioWorker, C c) {
        super(channel2, channelFactory, channelPipeline, channelSink);
        this.worker = abstractNioWorker;
        this.channel = c;
    }

    public AbstractNioWorker getWorker() {
        return this.worker;
    }

    public InetSocketAddress getLocalAddress() {
        InetSocketAddress inetSocketAddress = this.localAddress;
        if (inetSocketAddress != null) {
            return inetSocketAddress;
        }
        try {
            InetSocketAddress localSocketAddress = getLocalSocketAddress();
            if (localSocketAddress.getAddress().isAnyLocalAddress()) {
                return localSocketAddress;
            }
            this.localAddress = localSocketAddress;
            return localSocketAddress;
        } catch (Throwable th) {
            return null;
        }
    }

    public InetSocketAddress getRemoteAddress() {
        InetSocketAddress inetSocketAddress = this.remoteAddress;
        if (inetSocketAddress != null) {
            return inetSocketAddress;
        }
        try {
            InetSocketAddress remoteSocketAddress = getRemoteSocketAddress();
            this.remoteAddress = remoteSocketAddress;
            return remoteSocketAddress;
        } catch (Throwable th) {
            return null;
        }
    }

    /* access modifiers changed from: 0000 */
    public int getRawInterestOps() {
        return super.getInterestOps();
    }

    /* access modifiers changed from: 0000 */
    public void setRawInterestOpsNow(int i) {
        setInterestOpsNow(i);
    }

    public int getInterestOps() {
        if (!isOpen()) {
            return 4;
        }
        int rawInterestOps = getRawInterestOps();
        int i = this.writeBufferSize.get();
        if (i == 0) {
            return rawInterestOps & -5;
        }
        if (this.highWaterMarkCounter.get() > 0) {
            if (i >= getConfig().getWriteBufferLowWaterMark()) {
                return rawInterestOps | 4;
            }
            return rawInterestOps & -5;
        } else if (i >= getConfig().getWriteBufferHighWaterMark()) {
            return rawInterestOps | 4;
        } else {
            return rawInterestOps & -5;
        }
    }

    /* access modifiers changed from: protected */
    public boolean setClosed() {
        return super.setClosed();
    }
}
