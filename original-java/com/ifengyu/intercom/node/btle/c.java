package com.ifengyu.intercom.node.btle;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: BtOperationLock */
public class c {
    private static final ReentrantLock a = new ReentrantLock(true);
    private static final long b = TimeUnit.SECONDS.toMillis(1);

    protected static void a() throws LockAcquireFailException {
        try {
            if (!a.tryLock(b, TimeUnit.MILLISECONDS)) {
                throw new LockAcquireFailException(String.format("Cannot acquire bluetooth operation lock after %dms.", new Object[]{Long.valueOf(b)}));
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new RuntimeException(e);
        }
    }

    protected static void b() {
        a.unlock();
    }
}
