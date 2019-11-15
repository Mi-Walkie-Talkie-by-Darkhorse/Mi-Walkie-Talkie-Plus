package com.mi.mimsgsdk.exception;

public class ExceptionWithCode extends Throwable {
    private static final long serialVersionUID = 1;
    private int code;

    public ExceptionWithCode() {
    }

    public ExceptionWithCode(int i) {
        this.code = i;
    }

    public ExceptionWithCode(int i, String str) {
        super(str);
        this.code = i;
    }

    public int getCode() {
        return this.code;
    }
}
