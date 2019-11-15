package com.jakewharton.retrofit2.adapter.rxjava2;

import retrofit2.k;

public final class Result<T> {
    private final Throwable error;
    private final k<T> response;

    public static <T> Result<T> error(Throwable th) {
        if (th != null) {
            return new Result<>(null, th);
        }
        throw new NullPointerException("error == null");
    }

    public static <T> Result<T> response(k<T> kVar) {
        if (kVar != null) {
            return new Result<>(kVar, null);
        }
        throw new NullPointerException("response == null");
    }

    private Result(k<T> kVar, Throwable th) {
        this.response = kVar;
        this.error = th;
    }

    public k<T> response() {
        return this.response;
    }

    public Throwable error() {
        return this.error;
    }

    public boolean isError() {
        return this.error != null;
    }
}
