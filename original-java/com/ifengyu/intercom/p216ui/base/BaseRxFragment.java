package com.ifengyu.intercom.p216ui.base;

import androidx.lifecycle.Lifecycle;
import com.qmuiteam.qmui.arch.QMUIFragment;
import com.uber.autodispose.AutoDispose;
import com.uber.autodispose.AutoDisposeConverter;
import com.uber.autodispose.android.lifecycle.AndroidLifecycleScopeProvider;

/* renamed from: com.ifengyu.intercom.ui.base.n */
/* loaded from: classes2.dex */
public abstract class BaseRxFragment extends QMUIFragment {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A2 */
    public final <T> AutoDisposeConverter<T> m10300A2(Lifecycle.Event event) {
        return AutoDispose.m6023a(AndroidLifecycleScopeProvider.m6027g(getViewLifecycleOwner(), event));
    }
}
