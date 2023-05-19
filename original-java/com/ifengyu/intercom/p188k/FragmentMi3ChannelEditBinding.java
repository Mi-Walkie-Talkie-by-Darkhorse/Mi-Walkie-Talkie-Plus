package com.ifengyu.intercom.p188k;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.k.k */
/* loaded from: classes2.dex */
public abstract class FragmentMi3ChannelEditBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: A */
    public final ItemView f13966A;
    @NonNull

    /* renamed from: B */
    public final ItemView f13967B;
    @NonNull

    /* renamed from: C */
    public final ItemView f13968C;
    @NonNull

    /* renamed from: D */
    public final ItemView f13969D;
    @NonNull

    /* renamed from: E */
    public final TextView f13970E;
    @NonNull

    /* renamed from: F */
    public final TextView f13971F;
    @NonNull

    /* renamed from: G */
    public final LinearLayout f13972G;
    @NonNull

    /* renamed from: H */
    public final QMUITopBarLayout f13973H;
    @Bindable

    /* renamed from: I */
    protected View.OnClickListener f13974I;
    @Bindable

    /* renamed from: J */
    protected Mi3ViewModel f13975J;
    @NonNull

    /* renamed from: w */
    public final QMUIRoundButton f13976w;
    @NonNull

    /* renamed from: x */
    public final QMUIRoundButton f13977x;
    @NonNull

    /* renamed from: y */
    public final LinearLayout f13978y;
    @NonNull

    /* renamed from: z */
    public final ItemView f13979z;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentMi3ChannelEditBinding(Object obj, View view, int i, QMUIRoundButton qMUIRoundButton, QMUIRoundButton qMUIRoundButton2, LinearLayout linearLayout, ItemView itemView, ItemView itemView2, ItemView itemView3, ItemView itemView4, ItemView itemView5, TextView textView, TextView textView2, LinearLayout linearLayout2, QMUITopBarLayout qMUITopBarLayout, TextView textView3) {
        super(obj, view, i);
        this.f13976w = qMUIRoundButton;
        this.f13977x = qMUIRoundButton2;
        this.f13978y = linearLayout;
        this.f13979z = itemView;
        this.f13966A = itemView2;
        this.f13967B = itemView3;
        this.f13968C = itemView4;
        this.f13969D = itemView5;
        this.f13970E = textView;
        this.f13971F = textView2;
        this.f13972G = linearLayout2;
        this.f13973H = qMUITopBarLayout;
    }

    /* renamed from: F */
    public abstract void mo11969F(@Nullable Mi3ViewModel mi3ViewModel);

    public abstract void setClickListener(@Nullable View.OnClickListener onClickListener);
}
