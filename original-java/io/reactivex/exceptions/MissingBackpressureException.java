package io.reactivex.exceptions;

public final class MissingBackpressureException extends RuntimeException {
    private static final long serialVersionUID = 8517344746016032542L;

    public MissingBackpressureException() {
    }

    public MissingBackpressureException(String str) {
        super(str);
    }
}
