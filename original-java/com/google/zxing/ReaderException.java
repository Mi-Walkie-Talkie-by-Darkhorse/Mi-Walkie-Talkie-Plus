package com.google.zxing;

public abstract class ReaderException extends Exception {
    protected static final StackTraceElement[] NO_TRACE = new StackTraceElement[0];
    protected static final boolean isStackTrace;

    static {
        boolean z;
        if (System.getProperty("surefire.test.class.path") != null) {
            z = true;
        } else {
            z = false;
        }
        isStackTrace = z;
    }

    ReaderException() {
    }

    ReaderException(Throwable th) {
        super(th);
    }

    public final synchronized Throwable fillInStackTrace() {
        return null;
    }
}
