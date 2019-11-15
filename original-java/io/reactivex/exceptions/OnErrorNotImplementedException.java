package io.reactivex.exceptions;

import io.reactivex.annotations.Beta;
import io.reactivex.annotations.NonNull;

@Beta
public final class OnErrorNotImplementedException extends RuntimeException {
    private static final long serialVersionUID = -6298857009889503852L;

    public OnErrorNotImplementedException(@NonNull Throwable th) {
        String str = th != null ? th.getMessage() : null;
        if (th == null) {
            th = new NullPointerException();
        }
        super(str, th);
    }
}
