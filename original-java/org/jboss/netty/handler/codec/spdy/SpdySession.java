package org.jboss.netty.handler.codec.spdy;

import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.MessageEvent;

final class SpdySession {
    private static final SpdyProtocolException STREAM_CLOSED = new SpdyProtocolException("Stream closed");
    /* access modifiers changed from: private */
    public final Map<Integer, StreamState> activeStreams = new ConcurrentHashMap();

    private final class PriorityComparator implements Comparator<Integer> {
        PriorityComparator() {
        }

        public int compare(Integer num, Integer num2) {
            return ((StreamState) SpdySession.this.activeStreams.get(num)).getPriority() - ((StreamState) SpdySession.this.activeStreams.get(num2)).getPriority();
        }
    }

    private static final class StreamState {
        private volatile boolean localSideClosed;
        private final ConcurrentLinkedQueue<MessageEvent> pendingWriteQueue = new ConcurrentLinkedQueue<>();
        private final byte priority;
        private final AtomicInteger receiveWindowSize;
        private volatile int receiveWindowSizeLowerBound;
        private boolean receivedReply;
        private volatile boolean remoteSideClosed;
        private final AtomicInteger sendWindowSize;

        StreamState(byte b, boolean z, boolean z2, int i, int i2) {
            this.priority = b;
            this.remoteSideClosed = z;
            this.localSideClosed = z2;
            this.sendWindowSize = new AtomicInteger(i);
            this.receiveWindowSize = new AtomicInteger(i2);
        }

        /* access modifiers changed from: 0000 */
        public byte getPriority() {
            return this.priority;
        }

        /* access modifiers changed from: 0000 */
        public boolean isRemoteSideClosed() {
            return this.remoteSideClosed;
        }

        /* access modifiers changed from: 0000 */
        public void closeRemoteSide() {
            this.remoteSideClosed = true;
        }

        /* access modifiers changed from: 0000 */
        public boolean isLocalSideClosed() {
            return this.localSideClosed;
        }

        /* access modifiers changed from: 0000 */
        public void closeLocalSide() {
            this.localSideClosed = true;
        }

        /* access modifiers changed from: 0000 */
        public boolean hasReceivedReply() {
            return this.receivedReply;
        }

        /* access modifiers changed from: 0000 */
        public void receivedReply() {
            this.receivedReply = true;
        }

        /* access modifiers changed from: 0000 */
        public int getSendWindowSize() {
            return this.sendWindowSize.get();
        }

        /* access modifiers changed from: 0000 */
        public int updateSendWindowSize(int i) {
            return this.sendWindowSize.addAndGet(i);
        }

        /* access modifiers changed from: 0000 */
        public int updateReceiveWindowSize(int i) {
            return this.receiveWindowSize.addAndGet(i);
        }

        /* access modifiers changed from: 0000 */
        public int getReceiveWindowSizeLowerBound() {
            return this.receiveWindowSizeLowerBound;
        }

        /* access modifiers changed from: 0000 */
        public void setReceiveWindowSizeLowerBound(int i) {
            this.receiveWindowSizeLowerBound = i;
        }

        /* access modifiers changed from: 0000 */
        public boolean putPendingWrite(MessageEvent messageEvent) {
            return this.pendingWriteQueue.offer(messageEvent);
        }

        /* access modifiers changed from: 0000 */
        public MessageEvent getPendingWrite() {
            return (MessageEvent) this.pendingWriteQueue.peek();
        }

        /* access modifiers changed from: 0000 */
        public MessageEvent removePendingWrite() {
            return (MessageEvent) this.pendingWriteQueue.poll();
        }
    }

    SpdySession() {
    }

    /* access modifiers changed from: 0000 */
    public int numActiveStreams() {
        return this.activeStreams.size();
    }

    /* access modifiers changed from: 0000 */
    public boolean noActiveStreams() {
        return this.activeStreams.isEmpty();
    }

    /* access modifiers changed from: 0000 */
    public boolean isActiveStream(int i) {
        return this.activeStreams.containsKey(Integer.valueOf(i));
    }

    /* access modifiers changed from: 0000 */
    public Set<Integer> getActiveStreams() {
        TreeSet treeSet = new TreeSet(new PriorityComparator());
        treeSet.addAll(this.activeStreams.keySet());
        return treeSet;
    }

    /* access modifiers changed from: 0000 */
    public void acceptStream(int i, byte b, boolean z, boolean z2, int i2, int i3) {
        if (!z || !z2) {
            this.activeStreams.put(Integer.valueOf(i), new StreamState(b, z, z2, i2, i3));
        }
    }

    /* access modifiers changed from: 0000 */
    public void removeStream(int i) {
        Integer valueOf = Integer.valueOf(i);
        StreamState streamState = (StreamState) this.activeStreams.get(valueOf);
        this.activeStreams.remove(valueOf);
        if (streamState != null) {
            for (MessageEvent removePendingWrite = streamState.removePendingWrite(); removePendingWrite != null; removePendingWrite = streamState.removePendingWrite()) {
                removePendingWrite.getFuture().setFailure(STREAM_CLOSED);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean isRemoteSideClosed(int i) {
        StreamState streamState = (StreamState) this.activeStreams.get(Integer.valueOf(i));
        return streamState == null || streamState.isRemoteSideClosed();
    }

    /* access modifiers changed from: 0000 */
    public void closeRemoteSide(int i) {
        Integer valueOf = Integer.valueOf(i);
        StreamState streamState = (StreamState) this.activeStreams.get(valueOf);
        if (streamState != null) {
            streamState.closeRemoteSide();
            if (streamState.isLocalSideClosed()) {
                this.activeStreams.remove(valueOf);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean isLocalSideClosed(int i) {
        StreamState streamState = (StreamState) this.activeStreams.get(Integer.valueOf(i));
        return streamState == null || streamState.isLocalSideClosed();
    }

    /* access modifiers changed from: 0000 */
    public void closeLocalSide(int i) {
        Integer valueOf = Integer.valueOf(i);
        StreamState streamState = (StreamState) this.activeStreams.get(valueOf);
        if (streamState != null) {
            streamState.closeLocalSide();
            if (streamState.isRemoteSideClosed()) {
                this.activeStreams.remove(valueOf);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean hasReceivedReply(int i) {
        StreamState streamState = (StreamState) this.activeStreams.get(Integer.valueOf(i));
        return streamState != null && streamState.hasReceivedReply();
    }

    /* access modifiers changed from: 0000 */
    public void receivedReply(int i) {
        StreamState streamState = (StreamState) this.activeStreams.get(Integer.valueOf(i));
        if (streamState != null) {
            streamState.receivedReply();
        }
    }

    /* access modifiers changed from: 0000 */
    public int getSendWindowSize(int i) {
        StreamState streamState = (StreamState) this.activeStreams.get(Integer.valueOf(i));
        if (streamState != null) {
            return streamState.getSendWindowSize();
        }
        return -1;
    }

    /* access modifiers changed from: 0000 */
    public int updateSendWindowSize(int i, int i2) {
        StreamState streamState = (StreamState) this.activeStreams.get(Integer.valueOf(i));
        if (streamState != null) {
            return streamState.updateSendWindowSize(i2);
        }
        return -1;
    }

    /* access modifiers changed from: 0000 */
    public int updateReceiveWindowSize(int i, int i2) {
        StreamState streamState = (StreamState) this.activeStreams.get(Integer.valueOf(i));
        if (i2 > 0) {
            streamState.setReceiveWindowSizeLowerBound(0);
        }
        if (streamState != null) {
            return streamState.updateReceiveWindowSize(i2);
        }
        return -1;
    }

    /* access modifiers changed from: 0000 */
    public int getReceiveWindowSizeLowerBound(int i) {
        StreamState streamState = (StreamState) this.activeStreams.get(Integer.valueOf(i));
        if (streamState != null) {
            return streamState.getReceiveWindowSizeLowerBound();
        }
        return 0;
    }

    /* access modifiers changed from: 0000 */
    public void updateAllReceiveWindowSizes(int i) {
        for (StreamState streamState : this.activeStreams.values()) {
            streamState.updateReceiveWindowSize(i);
            if (i < 0) {
                streamState.setReceiveWindowSizeLowerBound(i);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean putPendingWrite(int i, MessageEvent messageEvent) {
        StreamState streamState = (StreamState) this.activeStreams.get(Integer.valueOf(i));
        return streamState != null && streamState.putPendingWrite(messageEvent);
    }

    /* access modifiers changed from: 0000 */
    public MessageEvent getPendingWrite(int i) {
        StreamState streamState = (StreamState) this.activeStreams.get(Integer.valueOf(i));
        if (streamState != null) {
            return streamState.getPendingWrite();
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public MessageEvent removePendingWrite(int i) {
        StreamState streamState = (StreamState) this.activeStreams.get(Integer.valueOf(i));
        if (streamState != null) {
            return streamState.removePendingWrite();
        }
        return null;
    }
}
