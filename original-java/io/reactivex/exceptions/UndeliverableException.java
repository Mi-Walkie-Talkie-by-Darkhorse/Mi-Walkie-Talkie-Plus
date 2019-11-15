package io.reactivex.exceptions;

import io.reactivex.annotations.Beta;

@Beta
public final class UndeliverableException extends IllegalStateException {
    private static final long serialVersionUID = 1644750035281290266L;

    public UndeliverableException(Throwable th) {
        super(th);
    }
}
