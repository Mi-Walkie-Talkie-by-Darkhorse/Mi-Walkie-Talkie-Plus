package com.sina.weibo.sdk.exception;

public class WeiboException extends RuntimeException {
    private static final long serialVersionUID = 475022994858770424L;

    public WeiboException() {
    }

    public WeiboException(String str) {
        super(str);
    }

    public WeiboException(Throwable th) {
        super(th);
    }
}
