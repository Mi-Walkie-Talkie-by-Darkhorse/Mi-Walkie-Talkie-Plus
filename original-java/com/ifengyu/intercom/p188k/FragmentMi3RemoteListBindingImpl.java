package com.ifengyu.intercom.p188k;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.QMUIWindowInsetLinearLayout;

/* renamed from: com.ifengyu.intercom.k.p */
/* loaded from: classes2.dex */
public class FragmentMi3RemoteListBindingImpl extends FragmentMi3RemoteListBinding {
    @Nullable

    /* renamed from: A */
    private static final SparseIntArray f13993A;
    @Nullable

    /* renamed from: z */
    private static final ViewDataBinding.C0603g f13994z = null;
    @NonNull

    /* renamed from: x */
    private final QMUIWindowInsetLinearLayout f13995x;

    /* renamed from: y */
    private long f13996y;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f13993A = sparseIntArray;
        sparseIntArray.put(R.id.remoteList, 1);
    }

    public FragmentMi3RemoteListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m22989u(dataBindingComponent, view, 2, f13994z, f13993A));
    }

    /* renamed from: F */
    public void m11964F() {
        synchronized (this) {
            this.f13996y = 1L;
        }
        m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: k */
    protected void mo11958k() {
        synchronized (this) {
            this.f13996y = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: r */
    public boolean mo11957r() {
        synchronized (this) {
            return this.f13996y != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: v */
    protected boolean mo11956v(int i, Object obj, int i2) {
        return false;
    }

    private FragmentMi3RemoteListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[1]);
        this.f13996y = -1L;
        QMUIWindowInsetLinearLayout qMUIWindowInsetLinearLayout = (QMUIWindowInsetLinearLayout) objArr[0];
        this.f13995x = qMUIWindowInsetLinearLayout;
        qMUIWindowInsetLinearLayout.setTag(null);
        m23010B(view);
        m11964F();
    }
}
