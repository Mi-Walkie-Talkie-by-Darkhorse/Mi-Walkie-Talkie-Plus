package com.xiaomi.account.auth;

import android.accounts.OperationCanceledException;
import android.os.Looper;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class XiaomiOAuthFutureImpl<V> extends FutureTask<V> implements XiaomiOAuthFuture<V> {
    private static final long DEFAULT_TIMEOUT_MINUTE = 10;
    private IXiaomiAuthResponse mResponse;

    private void ensureNotOnMainThread() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null && myLooper == Looper.getMainLooper()) {
            throw new IllegalStateException("calling this from your main thread can lead to deadlock");
        }
    }

    public XiaomiOAuthFutureImpl() {
        super(new Callable<V>() {
            public V call() throws Exception {
                throw new IllegalStateException("this should never be called");
            }
        });
    }

    public V getResult() throws IOException, OperationCanceledException, XMAuthericationException {
        return internalGetResult(Long.valueOf(DEFAULT_TIMEOUT_MINUTE), TimeUnit.MINUTES);
    }

    public V getResult(long j, TimeUnit timeUnit) throws IOException, OperationCanceledException, XMAuthericationException {
        return internalGetResult(Long.valueOf(j), timeUnit);
    }

    public void setException(Throwable th) {
        super.setException(th);
    }

    public void set(V v) {
        super.set(v);
    }

    private V internalGetResult(Long l, TimeUnit timeUnit) throws OperationCanceledException, IOException, XMAuthericationException {
        V v;
        if (!isDone()) {
            ensureNotOnMainThread();
        }
        if (l == null) {
            try {
                v = get();
                cancel(true);
            } catch (CancellationException e) {
                throw new OperationCanceledException();
            } catch (TimeoutException e2) {
                cancel(true);
                throw new OperationCanceledException();
            } catch (InterruptedException e3) {
                cancel(true);
                throw new OperationCanceledException();
            } catch (ExecutionException e4) {
                Throwable cause = e4.getCause();
                if (cause instanceof IOException) {
                    throw ((IOException) cause);
                } else if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                } else if (cause instanceof Error) {
                    throw ((Error) cause);
                } else if (cause instanceof XMAuthericationException) {
                    throw ((XMAuthericationException) cause);
                } else if (cause instanceof OperationCanceledException) {
                    throw ((OperationCanceledException) cause);
                } else {
                    throw new XMAuthericationException(cause);
                }
            } catch (Throwable th) {
                cancel(true);
                throw th;
            }
        } else {
            v = get(l.longValue(), timeUnit);
            cancel(true);
        }
        return v;
    }
}
