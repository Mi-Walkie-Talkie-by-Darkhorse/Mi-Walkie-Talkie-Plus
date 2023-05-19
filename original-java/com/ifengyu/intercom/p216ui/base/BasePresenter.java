package com.ifengyu.intercom.p216ui.base;

import androidx.lifecycle.Lifecycle;
import com.ifengyu.intercom.p216ui.base.BaseView;
import com.uber.autodispose.AutoDispose;
import com.uber.autodispose.AutoDisposeConverter;
import com.uber.autodispose.android.lifecycle.AndroidLifecycleScopeProvider;
import java.lang.ref.WeakReference;

/* renamed from: com.ifengyu.intercom.ui.base.m */
/* loaded from: classes2.dex */
public class BasePresenter<V extends BaseView> {

    /* renamed from: a */
    private WeakReference<V> f15049a;

    /* renamed from: b */
    private Lifecycle f15050b;

    /* renamed from: n */
    public void mo9229n(V v) {
        this.f15049a = new WeakReference<>(v);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: o */
    public final <T> AutoDisposeConverter<T> m10303o(Lifecycle.Event event) {
        return AutoDispose.m6023a(AndroidLifecycleScopeProvider.m6029e(this.f15050b, event));
    }

    /* renamed from: q */
    public void mo9227q() {
        WeakReference<V> weakReference = this.f15049a;
        if (weakReference != null) {
            weakReference.clear();
            this.f15049a = null;
            this.f15050b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public V m10302s() {
        WeakReference<V> weakReference = this.f15049a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* renamed from: u */
    public void m10301u(Lifecycle lifecycle) {
        this.f15050b = lifecycle;
    }
}
