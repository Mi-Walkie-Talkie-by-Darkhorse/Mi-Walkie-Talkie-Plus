package com.ifengyu.intercom.p188k;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.layout.QMUIConstraintLayout;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.k.c */
/* loaded from: classes2.dex */
public abstract class ConfigFileListFragmentBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: A */
    public final QMUIConstraintLayout f13925A;
    @NonNull

    /* renamed from: B */
    public final RecyclerView f13926B;
    @NonNull

    /* renamed from: C */
    public final QMUITopBarLayout f13927C;
    @Bindable

    /* renamed from: D */
    protected View.OnClickListener f13928D;
    @NonNull

    /* renamed from: w */
    public final QMUIRoundButton f13929w;
    @NonNull

    /* renamed from: x */
    public final QMUIAlphaImageButton f13930x;
    @NonNull

    /* renamed from: y */
    public final QMUIAlphaImageButton f13931y;
    @NonNull

    /* renamed from: z */
    public final QMUIAlphaImageButton f13932z;

    /* JADX INFO: Access modifiers changed from: protected */
    public ConfigFileListFragmentBinding(Object obj, View view, int i, QMUIRoundButton qMUIRoundButton, QMUIAlphaImageButton qMUIAlphaImageButton, QMUIAlphaImageButton qMUIAlphaImageButton2, QMUIAlphaImageButton qMUIAlphaImageButton3, QMUIConstraintLayout qMUIConstraintLayout, RecyclerView recyclerView, QMUITopBarLayout qMUITopBarLayout, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.f13929w = qMUIRoundButton;
        this.f13930x = qMUIAlphaImageButton;
        this.f13931y = qMUIAlphaImageButton2;
        this.f13932z = qMUIAlphaImageButton3;
        this.f13925A = qMUIConstraintLayout;
        this.f13926B = recyclerView;
        this.f13927C = qMUITopBarLayout;
    }

    public abstract void setClickListener(@Nullable View.OnClickListener onClickListener);
}
