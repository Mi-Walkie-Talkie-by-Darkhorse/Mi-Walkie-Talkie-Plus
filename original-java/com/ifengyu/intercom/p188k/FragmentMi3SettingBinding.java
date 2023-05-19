package com.ifengyu.intercom.p188k;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.k.q */
/* loaded from: classes2.dex */
public abstract class FragmentMi3SettingBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: A */
    public final TextView f13997A;
    @NonNull

    /* renamed from: B */
    public final TextView f13998B;
    @NonNull

    /* renamed from: C */
    public final TextView f13999C;
    @NonNull

    /* renamed from: D */
    public final TextView f14000D;
    @NonNull

    /* renamed from: E */
    public final ConstraintLayout f14001E;
    @NonNull

    /* renamed from: F */
    public final View f14002F;
    @NonNull

    /* renamed from: G */
    public final TextView f14003G;
    @NonNull

    /* renamed from: H */
    public final TextView f14004H;
    @NonNull

    /* renamed from: I */
    public final TextView f14005I;
    @NonNull

    /* renamed from: J */
    public final TextView f14006J;
    @NonNull

    /* renamed from: K */
    public final TextView f14007K;
    @NonNull

    /* renamed from: L */
    public final ItemView f14008L;
    @NonNull

    /* renamed from: M */
    public final ItemView f14009M;
    @NonNull

    /* renamed from: N */
    public final ItemView f14010N;
    @NonNull

    /* renamed from: O */
    public final ItemView f14011O;
    @NonNull

    /* renamed from: P */
    public final ItemView f14012P;
    @NonNull

    /* renamed from: Q */
    public final ItemView f14013Q;
    @NonNull

    /* renamed from: R */
    public final TextView f14014R;
    @NonNull

    /* renamed from: S */
    public final ItemView f14015S;
    @NonNull

    /* renamed from: T */
    public final QMUITopBarLayout f14016T;
    @Bindable

    /* renamed from: U */
    protected View.OnClickListener f14017U;
    @Bindable

    /* renamed from: V */
    protected Mi3ViewModel f14018V;
    @NonNull

    /* renamed from: w */
    public final FrameLayout f14019w;
    @NonNull

    /* renamed from: x */
    public final ConstraintLayout f14020x;
    @NonNull

    /* renamed from: y */
    public final View f14021y;
    @NonNull

    /* renamed from: z */
    public final TextView f14022z;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentMi3SettingBinding(Object obj, View view, int i, FrameLayout frameLayout, ConstraintLayout constraintLayout, View view2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, ConstraintLayout constraintLayout2, View view3, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, ItemView itemView, ItemView itemView2, ItemView itemView3, ItemView itemView4, ItemView itemView5, ItemView itemView6, TextView textView11, ItemView itemView7, QMUITopBarLayout qMUITopBarLayout) {
        super(obj, view, i);
        this.f14019w = frameLayout;
        this.f14020x = constraintLayout;
        this.f14021y = view2;
        this.f14022z = textView;
        this.f13997A = textView2;
        this.f13998B = textView3;
        this.f13999C = textView4;
        this.f14000D = textView5;
        this.f14001E = constraintLayout2;
        this.f14002F = view3;
        this.f14003G = textView6;
        this.f14004H = textView7;
        this.f14005I = textView8;
        this.f14006J = textView9;
        this.f14007K = textView10;
        this.f14008L = itemView;
        this.f14009M = itemView2;
        this.f14010N = itemView3;
        this.f14011O = itemView4;
        this.f14012P = itemView5;
        this.f14013Q = itemView6;
        this.f14014R = textView11;
        this.f14015S = itemView7;
        this.f14016T = qMUITopBarLayout;
    }

    /* renamed from: F */
    public abstract void mo11963F(@Nullable Mi3ViewModel mi3ViewModel);

    public abstract void setClickListener(@Nullable View.OnClickListener onClickListener);
}
