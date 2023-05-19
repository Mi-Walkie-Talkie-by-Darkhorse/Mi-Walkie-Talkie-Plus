package com.ifengyu.intercom.p216ui.base.old;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* renamed from: com.ifengyu.intercom.ui.base.old.b */
/* loaded from: classes2.dex */
public abstract class BaseHandler<T> extends Handler {

    /* renamed from: a */
    private WeakReference<T> f15073a;

    public BaseHandler(T t) {
        this.f15073a = new WeakReference<>(t);
    }

    /* renamed from: a */
    public abstract void mo10264a(Message message, T t);

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        T t = this.f15073a.get();
        if (t != null) {
            mo10264a(message, t);
        }
    }
}
