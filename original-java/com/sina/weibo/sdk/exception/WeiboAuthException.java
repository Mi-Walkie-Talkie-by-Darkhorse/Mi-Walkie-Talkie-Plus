package com.sina.weibo.sdk.exception;

public class WeiboAuthException extends WeiboException {
    private static final long serialVersionUID = 1;
    private final String a;
    private final String b;

    public WeiboAuthException(String str, String str2, String str3) {
        super(str3);
        this.a = str2;
        this.b = str;
    }
}
