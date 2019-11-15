package org.jboss.netty.util.internal;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.AbstractQueuedSynchronizer;
import java.util.concurrent.locks.AbstractQueuedSynchronizer.ConditionObject;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public final class NonReentrantLock extends AbstractQueuedSynchronizer implements Lock {
    private static final long serialVersionUID = -833780837233068610L;
    private Thread owner;

    public void lock() {
        acquire(1);
    }

    public void lockInterruptibly() throws InterruptedException {
        acquireInterruptibly(1);
    }

    public boolean tryLock() {
        return tryAcquire(1);
    }

    public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
        return tryAcquireNanos(1, timeUnit.toNanos(j));
    }

    public void unlock() {
        release(1);
    }

    public boolean isHeldByCurrentThread() {
        return isHeldExclusively();
    }

    public Condition newCondition() {
        return new ConditionObject(this);
    }

    /* access modifiers changed from: protected */
    public boolean tryAcquire(int i) {
        if (!compareAndSetState(0, 1)) {
            return false;
        }
        this.owner = Thread.currentThread();
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean tryRelease(int i) {
        if (Thread.currentThread() != this.owner) {
            throw new IllegalMonitorStateException();
        }
        this.owner = null;
        setState(0);
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean isHeldExclusively() {
        return getState() != 0 && this.owner == Thread.currentThread();
    }
}
