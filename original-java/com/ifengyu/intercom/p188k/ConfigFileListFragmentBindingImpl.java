package com.ifengyu.intercom.p188k;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.QMUIWindowInsetLinearLayout;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.layout.QMUIConstraintLayout;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.k.d */
/* loaded from: classes2.dex */
public class ConfigFileListFragmentBindingImpl extends ConfigFileListFragmentBinding {
    @Nullable

    /* renamed from: H */
    private static final ViewDataBinding.C0603g f13933H = null;
    @Nullable

    /* renamed from: I */
    private static final SparseIntArray f13934I;
    @NonNull

    /* renamed from: E */
    private final QMUIWindowInsetLinearLayout f13935E;

    /* renamed from: F */
    private View$OnClickListenerC3940a f13936F;

    /* renamed from: G */
    private long f13937G;

    /* compiled from: ConfigFileListFragmentBindingImpl.java */
    /* renamed from: com.ifengyu.intercom.k.d$a */
    /* loaded from: classes2.dex */
    public static class View$OnClickListenerC3940a implements View.OnClickListener {

        /* renamed from: a */
        private View.OnClickListener f13938a;

        /* renamed from: a */
        public View$OnClickListenerC3940a m11973a(View.OnClickListener onClickListener) {
            this.f13938a = onClickListener;
            if (onClickListener == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f13938a.onClick(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f13934I = sparseIntArray;
        sparseIntArray.put(R.id.topBar, 5);
        sparseIntArray.put(R.id.recyclerView, 6);
        sparseIntArray.put(R.id.operationLayout, 7);
        sparseIntArray.put(R.id.tvRename, 8);
        sparseIntArray.put(R.id.tvImport, 9);
        sparseIntArray.put(R.id.tvDelete, 10);
    }

    public ConfigFileListFragmentBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m22989u(dataBindingComponent, view, 11, f13933H, f13934I));
    }

    /* renamed from: F */
    public void m11974F() {
        synchronized (this) {
            this.f13937G = 2L;
        }
        m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: k */
    protected void mo11958k() {
        long j;
        synchronized (this) {
            j = this.f13937G;
            this.f13937G = 0L;
        }
        View$OnClickListenerC3940a view$OnClickListenerC3940a = null;
        View.OnClickListener onClickListener = this.f13928D;
        int i = ((j & 3) > 0L ? 1 : ((j & 3) == 0L ? 0 : -1));
        if (i != 0 && onClickListener != null) {
            View$OnClickListenerC3940a view$OnClickListenerC3940a2 = this.f13936F;
            if (view$OnClickListenerC3940a2 == null) {
                view$OnClickListenerC3940a2 = new View$OnClickListenerC3940a();
                this.f13936F = view$OnClickListenerC3940a2;
            }
            view$OnClickListenerC3940a = view$OnClickListenerC3940a2.m11973a(onClickListener);
        }
        if (i != 0) {
            this.f13929w.setOnClickListener(view$OnClickListenerC3940a);
            this.f13930x.setOnClickListener(view$OnClickListenerC3940a);
            this.f13931y.setOnClickListener(view$OnClickListenerC3940a);
            this.f13932z.setOnClickListener(view$OnClickListenerC3940a);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: r */
    public boolean mo11957r() {
        synchronized (this) {
            return this.f13937G != 0;
        }
    }

    @Override // com.ifengyu.intercom.p188k.ConfigFileListFragmentBinding
    public void setClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f13928D = onClickListener;
        synchronized (this) {
            this.f13937G |= 1;
        }
        m22972b(1);
        super.m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: v */
    protected boolean mo11956v(int i, Object obj, int i2) {
        return false;
    }

    private ConfigFileListFragmentBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (QMUIRoundButton) objArr[1], (QMUIAlphaImageButton) objArr[4], (QMUIAlphaImageButton) objArr[3], (QMUIAlphaImageButton) objArr[2], (QMUIConstraintLayout) objArr[7], (RecyclerView) objArr[6], (QMUITopBarLayout) objArr[5], (TextView) objArr[10], (TextView) objArr[9], (TextView) objArr[8]);
        this.f13937G = -1L;
        this.f13929w.setTag(null);
        this.f13930x.setTag(null);
        this.f13931y.setTag(null);
        this.f13932z.setTag(null);
        QMUIWindowInsetLinearLayout qMUIWindowInsetLinearLayout = (QMUIWindowInsetLinearLayout) objArr[0];
        this.f13935E = qMUIWindowInsetLinearLayout;
        qMUIWindowInsetLinearLayout.setTag(null);
        m23010B(view);
        m11974F();
    }
}
