package com.ifengyu.im.imservice.callback;

public interface IMListener<T> {
    void onFaild();

    void onSuccess(T t);

    void onTimeout();
}
