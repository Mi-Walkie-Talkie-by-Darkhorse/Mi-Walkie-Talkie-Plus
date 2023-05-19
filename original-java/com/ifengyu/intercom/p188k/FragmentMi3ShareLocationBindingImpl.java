package com.ifengyu.intercom.p188k;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.amap.api.maps.MapView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.QMUIWindowInsetLinearLayout;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.k.t */
/* loaded from: classes2.dex */
public class FragmentMi3ShareLocationBindingImpl extends FragmentMi3ShareLocationBinding {
    @Nullable

    /* renamed from: J */
    private static final ViewDataBinding.C0603g f14039J = null;
    @Nullable

    /* renamed from: K */
    private static final SparseIntArray f14040K;
    @NonNull

    /* renamed from: G */
    private final QMUIWindowInsetLinearLayout f14041G;

    /* renamed from: H */
    private View$OnClickListenerC3943a f14042H;

    /* renamed from: I */
    private long f14043I;

    /* compiled from: FragmentMi3ShareLocationBindingImpl.java */
    /* renamed from: com.ifengyu.intercom.k.t$a */
    /* loaded from: classes2.dex */
    public static class View$OnClickListenerC3943a implements View.OnClickListener {

        /* renamed from: a */
        private View.OnClickListener f14044a;

        /* renamed from: a */
        public View$OnClickListenerC3943a m11955a(View.OnClickListener onClickListener) {
            this.f14044a = onClickListener;
            if (onClickListener == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f14044a.onClick(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f14040K = sparseIntArray;
        sparseIntArray.put(R.id.topBar, 7);
        sparseIntArray.put(R.id.mapView, 8);
        sparseIntArray.put(R.id.itemChInfo, 9);
    }

    public FragmentMi3ShareLocationBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.m22989u(dataBindingComponent, view, 10, f14039J, f14040K));
    }

    /* renamed from: F */
    public void m11959F() {
        synchronized (this) {
            this.f14043I = 2L;
        }
        m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: k */
    protected void mo11958k() {
        long j;
        synchronized (this) {
            j = this.f14043I;
            this.f14043I = 0L;
        }
        View$OnClickListenerC3943a view$OnClickListenerC3943a = null;
        View.OnClickListener onClickListener = this.f14034F;
        int i = ((j & 3) > 0L ? 1 : ((j & 3) == 0L ? 0 : -1));
        if (i != 0 && onClickListener != null) {
            View$OnClickListenerC3943a view$OnClickListenerC3943a2 = this.f14042H;
            if (view$OnClickListenerC3943a2 == null) {
                view$OnClickListenerC3943a2 = new View$OnClickListenerC3943a();
                this.f14042H = view$OnClickListenerC3943a2;
            }
            view$OnClickListenerC3943a = view$OnClickListenerC3943a2.m11955a(onClickListener);
        }
        if (i != 0) {
            this.f14035w.setOnClickListener(view$OnClickListenerC3943a);
            this.f14036x.setOnClickListener(view$OnClickListenerC3943a);
            this.f14037y.setOnClickListener(view$OnClickListenerC3943a);
            this.f14038z.setOnClickListener(view$OnClickListenerC3943a);
            this.f14029A.setOnClickListener(view$OnClickListenerC3943a);
            this.f14031C.setOnClickListener(view$OnClickListenerC3943a);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: r */
    public boolean mo11957r() {
        synchronized (this) {
            return this.f14043I != 0;
        }
    }

    @Override // com.ifengyu.intercom.p188k.FragmentMi3ShareLocationBinding
    public void setClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f14034F = onClickListener;
        synchronized (this) {
            this.f14043I |= 1;
        }
        m22972b(1);
        super.m22985z();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: v */
    protected boolean mo11956v(int i, Object obj, int i2) {
        return false;
    }

    private FragmentMi3ShareLocationBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[5], (TextView) objArr[6], (ImageView) objArr[3], (ImageView) objArr[4], (ImageView) objArr[2], (ItemView) objArr[9], (ItemView) objArr[1], (MapView) objArr[8], (QMUITopBarLayout) objArr[7]);
        this.f14043I = -1L;
        this.f14035w.setTag(null);
        this.f14036x.setTag(null);
        this.f14037y.setTag(null);
        this.f14038z.setTag(null);
        this.f14029A.setTag(null);
        this.f14031C.setTag(null);
        QMUIWindowInsetLinearLayout qMUIWindowInsetLinearLayout = (QMUIWindowInsetLinearLayout) objArr[0];
        this.f14041G = qMUIWindowInsetLinearLayout;
        qMUIWindowInsetLinearLayout.setTag(null);
        m23010B(view);
        m11959F();
    }
}
