package com.ifengyu.intercom.node.btle;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: BtOperationLock.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final ReentrantLock f5882a = new ReentrantLock(true);

    /* renamed from: b  reason: collision with root package name */
    private static final long f5883b = TimeUnit.SECONDS.toMillis(1);

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a() throws LockAcquireFailException {
        try {
            if (!f5882a.tryLock(f5883b, TimeUnit.MILLISECONDS)) {
                throw new LockAcquireFailException(String.format("Cannot acquire bluetooth operation lock after %dms.", Long.valueOf(f5883b)));
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void b() {
        f5882a.unlock();
    }
}
