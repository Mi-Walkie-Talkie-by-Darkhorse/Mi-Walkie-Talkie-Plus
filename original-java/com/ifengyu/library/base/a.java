package com.ifengyu.library.base;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* compiled from: BaseHandler */
public abstract class a<T> extends Handler {
    private WeakReference<T> mWeakReference;

    public abstract void handleMessage(Message message, T t);

    public a(T t) {
        this.mWeakReference = new WeakReference<>(t);
    }

    public void handleMessage(Message message) {
        Object obj = this.mWeakReference.get();
        if (obj != null) {
            handleMessage(message, obj);
        }
    }
}
