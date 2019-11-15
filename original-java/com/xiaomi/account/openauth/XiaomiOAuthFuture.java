package com.xiaomi.account.openauth;

import android.accounts.OperationCanceledException;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

public interface XiaomiOAuthFuture<V> {
    V getResult() throws OperationCanceledException, IOException, XMAuthericationException;

    V getResult(long j, TimeUnit timeUnit) throws OperationCanceledException, IOException, XMAuthericationException;
}
