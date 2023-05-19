package com.ifengyu.intercom.p188k;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.amap.api.maps.MapView;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.k.s */
/* loaded from: classes2.dex */
public abstract class FragmentMi3ShareLocationBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: A */
    public final ImageView f14029A;
    @NonNull

    /* renamed from: B */
    public final ItemView f14030B;
    @NonNull

    /* renamed from: C */
    public final ItemView f14031C;
    @NonNull

    /* renamed from: D */
    public final MapView f14032D;
    @NonNull

    /* renamed from: E */
    public final QMUITopBarLayout f14033E;
    @Bindable

    /* renamed from: F */
    protected View.OnClickListener f14034F;
    @NonNull

    /* renamed from: w */
    public final TextView f14035w;
    @NonNull

    /* renamed from: x */
    public final TextView f14036x;
    @NonNull

    /* renamed from: y */
    public final ImageView f14037y;
    @NonNull

    /* renamed from: z */
    public final ImageView f14038z;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentMi3ShareLocationBinding(Object obj, View view, int i, TextView textView, TextView textView2, ImageView imageView, ImageView imageView2, ImageView imageView3, ItemView itemView, ItemView itemView2, MapView mapView, QMUITopBarLayout qMUITopBarLayout) {
        super(obj, view, i);
        this.f14035w = textView;
        this.f14036x = textView2;
        this.f14037y = imageView;
        this.f14038z = imageView2;
        this.f14029A = imageView3;
        this.f14030B = itemView;
        this.f14031C = itemView2;
        this.f14032D = mapView;
        this.f14033E = qMUITopBarLayout;
    }

    public abstract void setClickListener(@Nullable View.OnClickListener onClickListener);
}
