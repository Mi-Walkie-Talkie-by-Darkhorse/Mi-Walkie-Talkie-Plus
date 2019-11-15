package com.sina.weibo.sdk.exception;

public class WeiboHttpException extends WeiboException {
    private static final long serialVersionUID = 1;
    private final int a;

    public WeiboHttpException(String str, int i) {
        super(str);
        this.a = i;
    }
}
