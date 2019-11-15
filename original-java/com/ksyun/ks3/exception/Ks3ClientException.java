package com.ksyun.ks3.exception;

public class Ks3ClientException extends Exception {
    private static final long serialVersionUID = -2503345001841814995L;

    public Ks3ClientException(String str, Throwable th) {
        super(str, th);
    }

    public Ks3ClientException(String str) {
        super(str);
    }

    public Ks3ClientException(Throwable th) {
        super(th);
    }
}
