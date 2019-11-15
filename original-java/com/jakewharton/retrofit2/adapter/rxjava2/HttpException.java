package com.jakewharton.retrofit2.adapter.rxjava2;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import retrofit2.k;

public final class HttpException extends Exception {
    private final int code;
    private final String message;
    private final transient k<?> response;

    private static String getMessage(k<?> kVar) {
        if (kVar != null) {
            return "HTTP " + kVar.a() + Token.SEPARATOR + kVar.b();
        }
        throw new NullPointerException("response == null");
    }

    public HttpException(k<?> kVar) {
        super(getMessage(kVar));
        this.code = kVar.a();
        this.message = kVar.b();
        this.response = kVar;
    }

    public int code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    public k<?> response() {
        return this.response;
    }
}
