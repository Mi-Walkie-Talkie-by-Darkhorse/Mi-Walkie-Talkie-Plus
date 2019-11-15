package com.ifengyu.intercom.ui.baseui;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* compiled from: BaseHandler */
public abstract class a<T> extends Handler {
    private WeakReference<T> a;

    public abstract void a(Message message, T t);

    public a(T t) {
        this.a = new WeakReference<>(t);
    }

    public void handleMessage(Message message) {
        Object obj = this.a.get();
        if (obj != null) {
            a(message, obj);
        }
    }
}
