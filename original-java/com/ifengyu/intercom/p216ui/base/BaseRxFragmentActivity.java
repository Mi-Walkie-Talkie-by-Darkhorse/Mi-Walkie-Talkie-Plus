package com.ifengyu.intercom.p216ui.base;

import androidx.lifecycle.Lifecycle;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.uber.autodispose.AutoDispose;
import com.uber.autodispose.AutoDisposeConverter;
import com.uber.autodispose.android.lifecycle.AndroidLifecycleScopeProvider;

/* renamed from: com.ifengyu.intercom.ui.base.BaseRxFragmentActivity */
/* loaded from: classes2.dex */
public abstract class BaseRxFragmentActivity extends QMUIFragmentActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: x */
    public final <T> AutoDisposeConverter<T> m10331x(Lifecycle.Event event) {
        return AutoDispose.m6023a(AndroidLifecycleScopeProvider.m6029e(getLifecycle(), event));
    }
}
