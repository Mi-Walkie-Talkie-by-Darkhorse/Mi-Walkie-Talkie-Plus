package com.ifengyu.intercom.ui.baseui;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* compiled from: BaseHandler.java */
/* loaded from: classes2.dex */
public abstract class b<T> extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<T> f6386a;

    public b(T t) {
        this.f6386a = new WeakReference<>(t);
    }

    public abstract void a(Message message, T t);

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        T t = this.f6386a.get();
        if (t != null) {
            a(message, t);
        }
    }
}
