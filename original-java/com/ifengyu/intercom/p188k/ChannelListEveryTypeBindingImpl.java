package com.ifengyu.intercom.p188k;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.QMUIWindowInsetLinearLayout;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.k.b */
/* loaded from: classes2.dex */
public class ChannelListEveryTypeBindingImpl extends ChannelListEveryTypeBinding {
    @Nullable

    /* renamed from: B */
    private static final ViewDataBinding.C0603g f13921B = null;
    @Nullable

    /* renamed from: C */
    private static final SparseIntArray f13922C;

    /* renamed from: A */
    private long f13923A;
    @NonNull

    /* renamed from: z */
    private final QMUIWindowInsetLinearLayout f13924z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f13922C = sparseIntArray;
        sparseIntArray.put(R.id.topBar, 1);
        sparseIntArray.put(R.id.tabLayout, 2);
        sparseIntArray.put(R.id.viewPager, 3);
    }

    public ChannelListEveryTypeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m22989u(dataBindingComponent, view, 4, f13921B, f13922C));
    }

    /* renamed from: F */
    public void m11975F() {
        synchronized (this) {
            this.f13923A = 1L;
        }
        m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: k */
    protected void mo11958k() {
        synchronized (this) {
            this.f13923A = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: r */
    public boolean mo11957r() {
        synchronized (this) {
            return this.f13923A != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: v */
    protected boolean mo11956v(int i, Object obj, int i2) {
        return false;
    }

    private ChannelListEveryTypeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TabLayout) objArr[2], (QMUITopBarLayout) objArr[1], (ViewPager2) objArr[3]);
        this.f13923A = -1L;
        QMUIWindowInsetLinearLayout qMUIWindowInsetLinearLayout = (QMUIWindowInsetLinearLayout) objArr[0];
        this.f13924z = qMUIWindowInsetLinearLayout;
        qMUIWindowInsetLinearLayout.setTag(null);
        m23010B(view);
        m11975F();
    }
}
