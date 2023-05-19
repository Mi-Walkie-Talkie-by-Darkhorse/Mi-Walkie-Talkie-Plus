package com.ifengyu.intercom.p188k;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.QMUIWindowInsetLinearLayout;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.k.f */
/* loaded from: classes2.dex */
public class FragmentConfigFileDetailBindingImpl extends FragmentConfigFileDetailBinding {
    @Nullable

    /* renamed from: D */
    private static final ViewDataBinding.C0603g f13944D = null;
    @Nullable

    /* renamed from: E */
    private static final SparseIntArray f13945E;
    @NonNull

    /* renamed from: B */
    private final QMUIWindowInsetLinearLayout f13946B;

    /* renamed from: C */
    private long f13947C;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f13945E = sparseIntArray;
        sparseIntArray.put(R.id.topBar, 1);
        sparseIntArray.put(R.id.liteRecyclerView, 2);
        sparseIntArray.put(R.id.mi3TabAndViewPager, 3);
        sparseIntArray.put(R.id.mi3TabLayout, 4);
        sparseIntArray.put(R.id.mi3ViewPager, 5);
    }

    public FragmentConfigFileDetailBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m22989u(dataBindingComponent, view, 6, f13944D, f13945E));
    }

    /* renamed from: F */
    public void m11972F() {
        synchronized (this) {
            this.f13947C = 1L;
        }
        m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: k */
    protected void mo11958k() {
        synchronized (this) {
            this.f13947C = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: r */
    public boolean mo11957r() {
        synchronized (this) {
            return this.f13947C != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: v */
    protected boolean mo11956v(int i, Object obj, int i2) {
        return false;
    }

    private FragmentConfigFileDetailBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[2], (LinearLayout) objArr[3], (TabLayout) objArr[4], (ViewPager2) objArr[5], (QMUITopBarLayout) objArr[1]);
        this.f13947C = -1L;
        QMUIWindowInsetLinearLayout qMUIWindowInsetLinearLayout = (QMUIWindowInsetLinearLayout) objArr[0];
        this.f13946B = qMUIWindowInsetLinearLayout;
        qMUIWindowInsetLinearLayout.setTag(null);
        m23010B(view);
        m11972F();
    }
}
