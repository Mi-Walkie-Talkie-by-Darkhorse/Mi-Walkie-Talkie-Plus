package com.bumptech.glide.load;

import android.support.annotation.Nullable;
import java.io.IOException;

public final class HttpException extends IOException {
    private final int a;

    public HttpException(int i) {
        this("Http request failed with status code: " + i, i);
    }

    public HttpException(String str) {
        this(str, -1);
    }

    public HttpException(String str, int i) {
        this(str, i, null);
    }

    public HttpException(String str, int i, @Nullable Throwable th) {
        super(str, th);
        this.a = i;
    }
}
