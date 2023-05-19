package com.ifengyu.intercom.p188k;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.DonutProgress;
import com.qmuiteam.qmui.widget.QMUIFontFitTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.QMUIWindowInsetLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.k.j */
/* loaded from: classes2.dex */
public class FragmentFirmwareUpgradeBindingImpl extends FragmentFirmwareUpgradeBinding {
    @Nullable

    /* renamed from: E */
    private static final ViewDataBinding.C0603g f13962E = null;
    @Nullable

    /* renamed from: F */
    private static final SparseIntArray f13963F;
    @NonNull

    /* renamed from: C */
    private final QMUIWindowInsetLayout f13964C;

    /* renamed from: D */
    private long f13965D;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f13963F = sparseIntArray;
        sparseIntArray.put(R.id.top_bar, 1);
        sparseIntArray.put(R.id.tv_title, 2);
        sparseIntArray.put(R.id.tv_detail, 3);
        sparseIntArray.put(R.id.state_container, 4);
        sparseIntArray.put(R.id.iv_state_view, 5);
        sparseIntArray.put(R.id.progressbar, 6);
        sparseIntArray.put(R.id.tv_tip, 7);
        sparseIntArray.put(R.id.btn_action, 8);
    }

    public FragmentFirmwareUpgradeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m22989u(dataBindingComponent, view, 9, f13962E, f13963F));
    }

    /* renamed from: F */
    public void m11970F() {
        synchronized (this) {
            this.f13965D = 1L;
        }
        m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: k */
    protected void mo11958k() {
        synchronized (this) {
            this.f13965D = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: r */
    public boolean mo11957r() {
        synchronized (this) {
            return this.f13965D != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: v */
    protected boolean mo11956v(int i, Object obj, int i2) {
        return false;
    }

    private FragmentFirmwareUpgradeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (QMUIRoundButton) objArr[8], (AppCompatImageView) objArr[5], (DonutProgress) objArr[6], (FrameLayout) objArr[4], (QMUITopBarLayout) objArr[1], (QMUIFontFitTextView) objArr[3], (TextView) objArr[7], (TextView) objArr[2]);
        this.f13965D = -1L;
        QMUIWindowInsetLayout qMUIWindowInsetLayout = (QMUIWindowInsetLayout) objArr[0];
        this.f13964C = qMUIWindowInsetLayout;
        qMUIWindowInsetLayout.setTag(null);
        m23010B(view);
        m11970F();
    }
}
