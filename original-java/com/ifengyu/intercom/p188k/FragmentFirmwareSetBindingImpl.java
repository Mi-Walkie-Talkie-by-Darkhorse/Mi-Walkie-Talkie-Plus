package com.ifengyu.intercom.p188k;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.ItemTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.QMUIWindowInsetLayout;

/* renamed from: com.ifengyu.intercom.k.h */
/* loaded from: classes2.dex */
public class FragmentFirmwareSetBindingImpl extends FragmentFirmwareSetBinding {
    @Nullable

    /* renamed from: C */
    private static final ViewDataBinding.C0603g f13952C = null;
    @Nullable

    /* renamed from: D */
    private static final SparseIntArray f13953D;
    @NonNull

    /* renamed from: A */
    private final QMUIWindowInsetLayout f13954A;

    /* renamed from: B */
    private long f13955B;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f13953D = sparseIntArray;
        sparseIntArray.put(R.id.top_bar, 1);
        sparseIntArray.put(R.id.itemUpdate, 2);
        sparseIntArray.put(R.id.itemAbout, 3);
        sparseIntArray.put(R.id.itemUnbind, 4);
    }

    public FragmentFirmwareSetBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m22989u(dataBindingComponent, view, 5, f13952C, f13953D));
    }

    /* renamed from: F */
    public void m11971F() {
        synchronized (this) {
            this.f13955B = 2L;
        }
        m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: k */
    protected void mo11958k() {
        synchronized (this) {
            this.f13955B = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: r */
    public boolean mo11957r() {
        synchronized (this) {
            return this.f13955B != 0;
        }
    }

    @Override // com.ifengyu.intercom.p188k.FragmentFirmwareSetBinding
    public void setClickListener(@Nullable View.OnClickListener onClickListener) {
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: v */
    protected boolean mo11956v(int i, Object obj, int i2) {
        return false;
    }

    private FragmentFirmwareSetBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ItemTextView) objArr[3], (TextView) objArr[4], (ItemTextView) objArr[2], (QMUITopBarLayout) objArr[1]);
        this.f13955B = -1L;
        QMUIWindowInsetLayout qMUIWindowInsetLayout = (QMUIWindowInsetLayout) objArr[0];
        this.f13954A = qMUIWindowInsetLayout;
        qMUIWindowInsetLayout.setTag(null);
        m23010B(view);
        m11971F();
    }
}
