package com.mi.milinkforgame.sdk.base;

public class BaseLibException extends RuntimeException {
    private static final long serialVersionUID = -2945737496904114992L;

    public BaseLibException() {
    }

    public BaseLibException(String str) {
        super(str);
    }

    public BaseLibException(Throwable th) {
        super(th);
    }

    public BaseLibException(String str, Throwable th) {
        super(str, th);
    }
}
