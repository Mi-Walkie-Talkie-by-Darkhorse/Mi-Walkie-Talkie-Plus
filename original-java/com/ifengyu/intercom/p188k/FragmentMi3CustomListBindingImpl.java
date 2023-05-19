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
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.k.n */
/* loaded from: classes2.dex */
public class FragmentMi3CustomListBindingImpl extends FragmentMi3CustomListBinding {
    @Nullable

    /* renamed from: A */
    private static final ViewDataBinding.C0603g f13988A = null;
    @Nullable

    /* renamed from: B */
    private static final SparseIntArray f13989B;
    @NonNull

    /* renamed from: y */
    private final QMUIWindowInsetLinearLayout f13990y;

    /* renamed from: z */
    private long f13991z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f13989B = sparseIntArray;
        sparseIntArray.put(R.id.customList, 1);
        sparseIntArray.put(R.id.btnAddChannel, 2);
    }

    public FragmentMi3CustomListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m22989u(dataBindingComponent, view, 3, f13988A, f13989B));
    }

    /* renamed from: F */
    public void m11965F() {
        synchronized (this) {
            this.f13991z = 1L;
        }
        m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: k */
    protected void mo11958k() {
        synchronized (this) {
            this.f13991z = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: r */
    public boolean mo11957r() {
        synchronized (this) {
            return this.f13991z != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: v */
    protected boolean mo11956v(int i, Object obj, int i2) {
        return false;
    }

    private FragmentMi3CustomListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (QMUIRoundButton) objArr[2], (RecyclerView) objArr[1]);
        this.f13991z = -1L;
        QMUIWindowInsetLinearLayout qMUIWindowInsetLinearLayout = (QMUIWindowInsetLinearLayout) objArr[0];
        this.f13990y = qMUIWindowInsetLinearLayout;
        qMUIWindowInsetLinearLayout.setTag(null);
        m23010B(view);
        m11965F();
    }
}
