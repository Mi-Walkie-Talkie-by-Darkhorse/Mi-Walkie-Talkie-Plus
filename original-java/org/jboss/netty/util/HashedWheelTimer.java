package org.jboss.netty.util;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.ConcurrentIdentityHashMap;
import org.jboss.netty.util.internal.DetectionUtil;
import org.jboss.netty.util.internal.ReusableIterator;
import org.jboss.netty.util.internal.SharedResourceMisuseDetector;

public class HashedWheelTimer implements Timer {
    public static final int WORKER_STATE_INIT = 0;
    public static final int WORKER_STATE_SHUTDOWN = 2;
    public static final int WORKER_STATE_STARTED = 1;
    private static final AtomicInteger id = new AtomicInteger();
    static final InternalLogger logger = InternalLoggerFactory.getInstance(HashedWheelTimer.class);
    private static final SharedResourceMisuseDetector misuseDetector = new SharedResourceMisuseDetector(HashedWheelTimer.class);
    final ReusableIterator<HashedWheelTimeout>[] iterators;
    final ReadWriteLock lock;
    final int mask;
    final long tickDuration;
    final Set<HashedWheelTimeout>[] wheel;
    volatile int wheelCursor;
    private final Worker worker;
    final AtomicInteger workerState;
    final Thread workerThread;

    private final class HashedWheelTimeout implements Timeout {
        private static final int ST_CANCELLED = 1;
        private static final int ST_EXPIRED = 2;
        private static final int ST_INIT = 0;
        final long deadline;
        volatile long remainingRounds;
        private final AtomicInteger state = new AtomicInteger(0);
        volatile int stopIndex;
        private final TimerTask task;

        HashedWheelTimeout(TimerTask timerTask, long j) {
            this.task = timerTask;
            this.deadline = j;
        }

        public Timer getTimer() {
            return HashedWheelTimer.this;
        }

        public TimerTask getTask() {
            return this.task;
        }

        public void cancel() {
            if (this.state.compareAndSet(0, 1)) {
                HashedWheelTimer.this.wheel[this.stopIndex].remove(this);
            }
        }

        public boolean isCancelled() {
            return this.state.get() == 1;
        }

        public boolean isExpired() {
            return this.state.get() != 0;
        }

        public void expire() {
            if (this.state.compareAndSet(0, 2)) {
                try {
                    this.task.run(this);
                } catch (Throwable th) {
                    if (HashedWheelTimer.logger.isWarnEnabled()) {
                        HashedWheelTimer.logger.warn("An exception was thrown by " + TimerTask.class.getSimpleName() + '.', th);
                    }
                }
            }
        }

        public String toString() {
            long nanoTime = this.deadline - System.nanoTime();
            StringBuilder sb = new StringBuilder(192);
            sb.append(getClass().getSimpleName());
            sb.append('(');
            sb.append("deadline: ");
            if (nanoTime > 0) {
                sb.append(nanoTime);
                sb.append(" ms later, ");
            } else if (nanoTime < 0) {
                sb.append(-nanoTime);
                sb.append(" ms ago, ");
            } else {
                sb.append("now, ");
            }
            if (isCancelled()) {
                sb.append(", cancelled");
            }
            return sb.append(')').toString();
        }
    }

    private final class Worker implements Runnable {
        private long startTime;
        private long tick;

        Worker() {
        }

        public void run() {
            ArrayList arrayList = new ArrayList();
            this.startTime = System.nanoTime();
            this.tick = 1;
            while (HashedWheelTimer.this.workerState.get() == 1) {
                long waitForNextTick = waitForNextTick();
                if (waitForNextTick > 0) {
                    fetchExpiredTimeouts(arrayList, waitForNextTick);
                    notifyExpiredTimeouts(arrayList);
                }
            }
        }

        private void fetchExpiredTimeouts(List<HashedWheelTimeout> list, long j) {
            HashedWheelTimer.this.lock.writeLock().lock();
            try {
                int i = (HashedWheelTimer.this.wheelCursor + 1) & HashedWheelTimer.this.mask;
                HashedWheelTimer.this.wheelCursor = i;
                fetchExpiredTimeouts(list, HashedWheelTimer.this.iterators[i], j);
            } finally {
                HashedWheelTimer.this.lock.writeLock().unlock();
            }
        }

        private void fetchExpiredTimeouts(List<HashedWheelTimeout> list, ReusableIterator<HashedWheelTimeout> reusableIterator, long j) {
            ArrayList<HashedWheelTimeout> arrayList = null;
            reusableIterator.rewind();
            while (reusableIterator.hasNext()) {
                HashedWheelTimeout hashedWheelTimeout = (HashedWheelTimeout) reusableIterator.next();
                if (hashedWheelTimeout.remainingRounds <= 0) {
                    reusableIterator.remove();
                    if (hashedWheelTimeout.deadline <= j) {
                        list.add(hashedWheelTimeout);
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                        }
                        arrayList.add(hashedWheelTimeout);
                    }
                } else {
                    hashedWheelTimeout.remainingRounds--;
                }
            }
            if (arrayList != null) {
                for (HashedWheelTimeout hashedWheelTimeout2 : arrayList) {
                    HashedWheelTimer.this.scheduleTimeout(hashedWheelTimeout2, hashedWheelTimeout2.deadline - j);
                }
            }
        }

        private void notifyExpiredTimeouts(List<HashedWheelTimeout> list) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((HashedWheelTimeout) list.get(size)).expire();
            }
            list.clear();
        }

        private long waitForNextTick() {
            long j;
            long j2 = this.startTime + (HashedWheelTimer.this.tickDuration * this.tick);
            while (true) {
                long nanoTime = System.nanoTime();
                long j3 = ((j2 - nanoTime) + 999999) / 1000000;
                if (j3 <= 0) {
                    this.tick++;
                    if (nanoTime == Long.MIN_VALUE) {
                        return -9223372036854775807L;
                    }
                    return nanoTime;
                }
                if (DetectionUtil.isWindows()) {
                    j = (j3 / 10) * 10;
                } else {
                    j = j3;
                }
                try {
                    Thread.sleep(j);
                } catch (InterruptedException e) {
                    if (HashedWheelTimer.this.workerState.get() == 2) {
                        return Long.MIN_VALUE;
                    }
                }
            }
        }
    }

    public HashedWheelTimer() {
        this(Executors.defaultThreadFactory());
    }

    public HashedWheelTimer(long j, TimeUnit timeUnit) {
        this(Executors.defaultThreadFactory(), j, timeUnit);
    }

    public HashedWheelTimer(long j, TimeUnit timeUnit, int i) {
        this(Executors.defaultThreadFactory(), j, timeUnit, i);
    }

    public HashedWheelTimer(ThreadFactory threadFactory) {
        this(threadFactory, 100, TimeUnit.MILLISECONDS);
    }

    public HashedWheelTimer(ThreadFactory threadFactory, long j, TimeUnit timeUnit) {
        this(threadFactory, j, timeUnit, 512);
    }

    public HashedWheelTimer(ThreadFactory threadFactory, long j, TimeUnit timeUnit, int i) {
        this(threadFactory, null, j, timeUnit, i);
    }

    public HashedWheelTimer(ThreadFactory threadFactory, ThreadNameDeterminer threadNameDeterminer, long j, TimeUnit timeUnit, int i) {
        this.worker = new Worker();
        this.workerState = new AtomicInteger();
        this.lock = new ReentrantReadWriteLock();
        if (threadFactory == null) {
            throw new NullPointerException("threadFactory");
        } else if (timeUnit == null) {
            throw new NullPointerException("unit");
        } else if (j <= 0) {
            throw new IllegalArgumentException("tickDuration must be greater than 0: " + j);
        } else if (i <= 0) {
            throw new IllegalArgumentException("ticksPerWheel must be greater than 0: " + i);
        } else {
            this.wheel = createWheel(i);
            this.iterators = createIterators(this.wheel);
            this.mask = this.wheel.length - 1;
            this.tickDuration = timeUnit.toNanos(j);
            if (this.tickDuration >= FileTracerConfig.FOREVER / ((long) this.wheel.length)) {
                throw new IllegalArgumentException(String.format("tickDuration: %d (expected: 0 < tickDuration in nanos < %d", new Object[]{Long.valueOf(j), Long.valueOf(FileTracerConfig.FOREVER / ((long) this.wheel.length))}));
            }
            this.workerThread = threadFactory.newThread(new ThreadRenamingRunnable(this.worker, "Hashed wheel timer #" + id.incrementAndGet(), threadNameDeterminer));
            misuseDetector.increase();
        }
    }

    private static Set<HashedWheelTimeout>[] createWheel(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("ticksPerWheel must be greater than 0: " + i);
        } else if (i > 1073741824) {
            throw new IllegalArgumentException("ticksPerWheel may not be greater than 2^30: " + i);
        } else {
            Set<HashedWheelTimeout>[] setArr = new Set[normalizeTicksPerWheel(i)];
            for (int i2 = 0; i2 < setArr.length; i2++) {
                setArr[i2] = new MapBackedSet(new ConcurrentIdentityHashMap(16, 0.95f, 4));
            }
            return setArr;
        }
    }

    private static ReusableIterator<HashedWheelTimeout>[] createIterators(Set<HashedWheelTimeout>[] setArr) {
        ReusableIterator<HashedWheelTimeout>[] reusableIteratorArr = new ReusableIterator[setArr.length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= setArr.length) {
                return reusableIteratorArr;
            }
            reusableIteratorArr[i2] = (ReusableIterator) setArr[i2].iterator();
            i = i2 + 1;
        }
    }

    private static int normalizeTicksPerWheel(int i) {
        int i2 = 1;
        while (i2 < i) {
            i2 <<= 1;
        }
        return i2;
    }

    public void start() {
        switch (this.workerState.get()) {
            case 0:
                if (this.workerState.compareAndSet(0, 1)) {
                    this.workerThread.start();
                    return;
                }
                return;
            case 1:
                return;
            case 2:
                throw new IllegalStateException("cannot be started once stopped");
            default:
                throw new Error("Invalid WorkerState");
        }
    }

    public Set<Timeout> stop() {
        Set<HashedWheelTimeout>[] setArr;
        if (Thread.currentThread() == this.workerThread) {
            throw new IllegalStateException(HashedWheelTimer.class.getSimpleName() + ".stop() cannot be called from " + TimerTask.class.getSimpleName());
        } else if (!this.workerState.compareAndSet(1, 2)) {
            this.workerState.set(2);
            return Collections.emptySet();
        } else {
            boolean z = false;
            while (this.workerThread.isAlive()) {
                this.workerThread.interrupt();
                try {
                    this.workerThread.join(100);
                } catch (InterruptedException e) {
                    z = true;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            misuseDetector.decrease();
            HashSet hashSet = new HashSet();
            for (Set<HashedWheelTimeout> set : this.wheel) {
                hashSet.addAll(set);
                set.clear();
            }
            return Collections.unmodifiableSet(hashSet);
        }
    }

    public Timeout newTimeout(TimerTask timerTask, long j, TimeUnit timeUnit) {
        long nanoTime = System.nanoTime();
        if (timerTask == null) {
            throw new NullPointerException("task");
        } else if (timeUnit == null) {
            throw new NullPointerException("unit");
        } else {
            start();
            long nanos = timeUnit.toNanos(j);
            HashedWheelTimeout hashedWheelTimeout = new HashedWheelTimeout(timerTask, nanoTime + nanos);
            scheduleTimeout(hashedWheelTimeout, nanos);
            return hashedWheelTimeout;
        }
    }

    /* access modifiers changed from: 0000 */
    public void scheduleTimeout(HashedWheelTimeout hashedWheelTimeout, long j) {
        long j2 = ((this.tickDuration + j) - 1) / this.tickDuration;
        if (j2 < 0) {
            j2 = j / this.tickDuration;
        }
        if (j2 == 0) {
            j2 = 1;
        }
        if ((((long) this.mask) & j2) == 0) {
            j2--;
        }
        long length = j2 / ((long) this.wheel.length);
        this.lock.readLock().lock();
        try {
            if (this.workerState.get() == 2) {
                throw new IllegalStateException("Cannot enqueue after shutdown");
            }
            int i = (int) ((j2 + ((long) this.wheelCursor)) & ((long) this.mask));
            hashedWheelTimeout.stopIndex = i;
            hashedWheelTimeout.remainingRounds = length;
            this.wheel[i].add(hashedWheelTimeout);
        } finally {
            this.lock.readLock().unlock();
        }
    }
}
