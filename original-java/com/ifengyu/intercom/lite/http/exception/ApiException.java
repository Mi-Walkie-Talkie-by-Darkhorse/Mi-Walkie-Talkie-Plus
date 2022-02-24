package com.ifengyu.intercom.lite.http.exception;

import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class ApiException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private int f5644a;

    public ApiException(String str, int i) {
        super(str);
        this.f5644a = i;
    }

    public int a() {
        return this.f5644a;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String toString() {
        return String.format("ApiException{errno=%d, message='%s'}", Integer.valueOf(a()), getMessage());
    }
}
