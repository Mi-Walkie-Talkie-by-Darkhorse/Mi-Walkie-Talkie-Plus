package org.jboss.netty.handler.traffic;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.jboss.netty.util.Timeout;
import org.jboss.netty.util.Timer;
import org.jboss.netty.util.TimerTask;

public class TrafficCounter {
    final AtomicLong checkInterval = new AtomicLong(1000);
    private final AtomicLong cumulativeReadBytes = new AtomicLong();
    private final AtomicLong cumulativeWrittenBytes = new AtomicLong();
    private final AtomicLong currentReadBytes = new AtomicLong();
    private final AtomicLong currentWrittenBytes = new AtomicLong();
    private long lastCumulativeTime;
    private long lastReadBytes;
    private long lastReadThroughput;
    private final AtomicLong lastTime = new AtomicLong();
    private long lastWriteThroughput;
    private long lastWrittenBytes;
    final AtomicBoolean monitorActive = new AtomicBoolean();
    final String name;
    private volatile Timeout timeout;
    /* access modifiers changed from: private */
    public final Timer timer;
    private TimerTask timerTask;
    private final AbstractTrafficShapingHandler trafficShapingHandler;

    private static class TrafficMonitoringTask implements TimerTask {
        private final TrafficCounter counter;
        private final AbstractTrafficShapingHandler trafficShapingHandler1;

        protected TrafficMonitoringTask(AbstractTrafficShapingHandler abstractTrafficShapingHandler, TrafficCounter trafficCounter) {
            this.trafficShapingHandler1 = abstractTrafficShapingHandler;
            this.counter = trafficCounter;
        }

        public void run(Timeout timeout) throws Exception {
            if (this.counter.monitorActive.get()) {
                this.counter.resetAccounting(System.currentTimeMillis());
                if (this.trafficShapingHandler1 != null) {
                    this.trafficShapingHandler1.doAccounting(this.counter);
                }
                this.counter.timer.newTimeout(this, this.counter.checkInterval.get(), TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void start() {
        /*
            r6 = this;
            java.util.concurrent.atomic.AtomicLong r1 = r6.lastTime
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicBoolean r0 = r6.monitorActive     // Catch:{ all -> 0x0045 }
            boolean r0 = r0.get()     // Catch:{ all -> 0x0045 }
            if (r0 == 0) goto L_0x000d
            monitor-exit(r1)     // Catch:{ all -> 0x0045 }
        L_0x000c:
            return
        L_0x000d:
            java.util.concurrent.atomic.AtomicLong r0 = r6.lastTime     // Catch:{ all -> 0x0045 }
            long r2 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x0045 }
            r0.set(r2)     // Catch:{ all -> 0x0045 }
            java.util.concurrent.atomic.AtomicLong r0 = r6.checkInterval     // Catch:{ all -> 0x0045 }
            long r2 = r0.get()     // Catch:{ all -> 0x0045 }
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L_0x0043
            java.util.concurrent.atomic.AtomicBoolean r0 = r6.monitorActive     // Catch:{ all -> 0x0045 }
            r2 = 1
            r0.set(r2)     // Catch:{ all -> 0x0045 }
            org.jboss.netty.handler.traffic.TrafficCounter$TrafficMonitoringTask r0 = new org.jboss.netty.handler.traffic.TrafficCounter$TrafficMonitoringTask     // Catch:{ all -> 0x0045 }
            org.jboss.netty.handler.traffic.AbstractTrafficShapingHandler r2 = r6.trafficShapingHandler     // Catch:{ all -> 0x0045 }
            r0.<init>(r2, r6)     // Catch:{ all -> 0x0045 }
            r6.timerTask = r0     // Catch:{ all -> 0x0045 }
            org.jboss.netty.util.Timer r0 = r6.timer     // Catch:{ all -> 0x0045 }
            org.jboss.netty.util.TimerTask r2 = r6.timerTask     // Catch:{ all -> 0x0045 }
            java.util.concurrent.atomic.AtomicLong r3 = r6.checkInterval     // Catch:{ all -> 0x0045 }
            long r4 = r3.get()     // Catch:{ all -> 0x0045 }
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch:{ all -> 0x0045 }
            org.jboss.netty.util.Timeout r0 = r0.newTimeout(r2, r4, r3)     // Catch:{ all -> 0x0045 }
            r6.timeout = r0     // Catch:{ all -> 0x0045 }
        L_0x0043:
            monitor-exit(r1)     // Catch:{ all -> 0x0045 }
            goto L_0x000c
        L_0x0045:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0045 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.traffic.TrafficCounter.start():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void stop() {
        /*
            r4 = this;
            java.util.concurrent.atomic.AtomicLong r1 = r4.lastTime
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.monitorActive     // Catch:{ all -> 0x002e }
            boolean r0 = r0.get()     // Catch:{ all -> 0x002e }
            if (r0 != 0) goto L_0x000d
            monitor-exit(r1)     // Catch:{ all -> 0x002e }
        L_0x000c:
            return
        L_0x000d:
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.monitorActive     // Catch:{ all -> 0x002e }
            r2 = 0
            r0.set(r2)     // Catch:{ all -> 0x002e }
            long r2 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x002e }
            r4.resetAccounting(r2)     // Catch:{ all -> 0x002e }
            org.jboss.netty.handler.traffic.AbstractTrafficShapingHandler r0 = r4.trafficShapingHandler     // Catch:{ all -> 0x002e }
            if (r0 == 0) goto L_0x0023
            org.jboss.netty.handler.traffic.AbstractTrafficShapingHandler r0 = r4.trafficShapingHandler     // Catch:{ all -> 0x002e }
            r0.doAccounting(r4)     // Catch:{ all -> 0x002e }
        L_0x0023:
            org.jboss.netty.util.Timeout r0 = r4.timeout     // Catch:{ all -> 0x002e }
            if (r0 == 0) goto L_0x002c
            org.jboss.netty.util.Timeout r0 = r4.timeout     // Catch:{ all -> 0x002e }
            r0.cancel()     // Catch:{ all -> 0x002e }
        L_0x002c:
            monitor-exit(r1)     // Catch:{ all -> 0x002e }
            goto L_0x000c
        L_0x002e:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x002e }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.traffic.TrafficCounter.stop():void");
    }

    /* access modifiers changed from: 0000 */
    public void resetAccounting(long j) {
        synchronized (this.lastTime) {
            long andSet = j - this.lastTime.getAndSet(j);
            if (andSet != 0) {
                this.lastReadBytes = this.currentReadBytes.getAndSet(0);
                this.lastWrittenBytes = this.currentWrittenBytes.getAndSet(0);
                this.lastReadThroughput = (this.lastReadBytes / andSet) * 1000;
                this.lastWriteThroughput = (this.lastWrittenBytes / andSet) * 1000;
            }
        }
    }

    public TrafficCounter(AbstractTrafficShapingHandler abstractTrafficShapingHandler, Timer timer2, String str, long j) {
        this.trafficShapingHandler = abstractTrafficShapingHandler;
        this.timer = timer2;
        this.name = str;
        this.lastCumulativeTime = System.currentTimeMillis();
        configure(j);
    }

    public void configure(long j) {
        long j2 = (j / 10) * 10;
        if (this.checkInterval.get() != j2) {
            this.checkInterval.set(j2);
            if (j2 <= 0) {
                stop();
                this.lastTime.set(System.currentTimeMillis());
                return;
            }
            start();
        }
    }

    /* access modifiers changed from: 0000 */
    public void bytesRecvFlowControl(long j) {
        this.currentReadBytes.addAndGet(j);
        this.cumulativeReadBytes.addAndGet(j);
    }

    /* access modifiers changed from: 0000 */
    public void bytesWriteFlowControl(long j) {
        this.currentWrittenBytes.addAndGet(j);
        this.cumulativeWrittenBytes.addAndGet(j);
    }

    public long getCheckInterval() {
        return this.checkInterval.get();
    }

    public long getLastReadThroughput() {
        return this.lastReadThroughput;
    }

    public long getLastWriteThroughput() {
        return this.lastWriteThroughput;
    }

    public long getLastReadBytes() {
        return this.lastReadBytes;
    }

    public long getLastWrittenBytes() {
        return this.lastWrittenBytes;
    }

    public long getCurrentReadBytes() {
        return this.currentReadBytes.get();
    }

    public long getCurrentWrittenBytes() {
        return this.currentWrittenBytes.get();
    }

    public long getLastTime() {
        return this.lastTime.get();
    }

    public long getCumulativeWrittenBytes() {
        return this.cumulativeWrittenBytes.get();
    }

    public long getCumulativeReadBytes() {
        return this.cumulativeReadBytes.get();
    }

    public long getLastCumulativeTime() {
        return this.lastCumulativeTime;
    }

    public void resetCumulativeTime() {
        this.lastCumulativeTime = System.currentTimeMillis();
        this.cumulativeReadBytes.set(0);
        this.cumulativeWrittenBytes.set(0);
    }

    public String getName() {
        return this.name;
    }

    public String toString() {
        return "Monitor " + this.name + " Current Speed Read: " + (this.lastReadThroughput >> 10) + " KB/s, Write: " + (this.lastWriteThroughput >> 10) + " KB/s Current Read: " + (this.currentReadBytes.get() >> 10) + " KB Current Write: " + (this.currentWrittenBytes.get() >> 10) + " KB";
    }
}
