package io.reactivex.exceptions;

import io.reactivex.annotations.Beta;

@Beta
public final class ProtocolViolationException extends IllegalStateException {
    private static final long serialVersionUID = 1644750035281290266L;

    public ProtocolViolationException(String str) {
        super(str);
    }
}
