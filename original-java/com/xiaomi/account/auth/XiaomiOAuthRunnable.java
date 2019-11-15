package com.xiaomi.account.auth;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

abstract class XiaomiOAuthRunnable<V> implements Runnable {
    private static ExecutorService sTaskExecutor = Executors.newCachedThreadPool();
    protected XiaomiOAuthFutureImpl<V> mFuture = new XiaomiOAuthFutureImpl<>();

    /* access modifiers changed from: protected */
    public abstract void doRun();

    XiaomiOAuthRunnable() {
    }

    /* access modifiers changed from: 0000 */
    public XiaomiOAuthFutureImpl<V> start() {
        sTaskExecutor.execute(this);
        return this.mFuture;
    }

    public final void run() {
        doRun();
    }
}
