package com.xiaomi.account.auth;

import android.accounts.OperationCanceledException;
import android.os.Looper;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public class XiaomiOAuthFutureImpl<V> extends FutureTask<V> implements XiaomiOAuthFuture<V> {
    private static final long DEFAULT_TIMEOUT_MINUTE = 10;

    public XiaomiOAuthFutureImpl(Callable<V> callable) {
        super(callable);
    }

    private void ensureNotOnMainThread() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null && myLooper == Looper.getMainLooper()) {
            throw new IllegalStateException("calling this from your main thread can lead to deadlock");
        }
    }

    private V internalGetResult(Long l, TimeUnit timeUnit) throws OperationCanceledException, IOException, XMAuthericationException {
        if (!isDone()) {
            ensureNotOnMainThread();
        }
        try {
            try {
                try {
                    try {
                        if (l == null) {
                            return get();
                        }
                        return get(l.longValue(), timeUnit);
                    } catch (ExecutionException e) {
                        Throwable cause = e.getCause();
                        if (!(cause instanceof IOException)) {
                            if (!(cause instanceof RuntimeException)) {
                                if (!(cause instanceof Error)) {
                                    if (!(cause instanceof XMAuthericationException)) {
                                        if (cause instanceof OperationCanceledException) {
                                            throw ((OperationCanceledException) cause);
                                        }
                                        throw new XMAuthericationException(cause);
                                    }
                                    throw ((XMAuthericationException) cause);
                                }
                                throw ((Error) cause);
                            }
                            throw ((RuntimeException) cause);
                        }
                        throw ((IOException) cause);
                    }
                } catch (CancellationException unused) {
                    throw new OperationCanceledException();
                }
            } catch (InterruptedException | TimeoutException unused2) {
                cancel(true);
                throw new OperationCanceledException();
            }
        } finally {
            cancel(true);
        }
    }

    @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
    public V getResult() throws IOException, OperationCanceledException, XMAuthericationException {
        return internalGetResult(Long.valueOf((long) DEFAULT_TIMEOUT_MINUTE), TimeUnit.MINUTES);
    }

    @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
    public V getResult(long j, TimeUnit timeUnit) throws IOException, OperationCanceledException, XMAuthericationException {
        return internalGetResult(Long.valueOf(j), timeUnit);
    }
}
