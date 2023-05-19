package com.ifengyu.intercom.p188k;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import com.ifengyu.library.widget.view.DonutProgress;
import com.qmuiteam.qmui.widget.QMUIFontFitTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.k.i */
/* loaded from: classes2.dex */
public abstract class FragmentFirmwareUpgradeBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: A */
    public final QMUIFontFitTextView f13956A;
    @NonNull

    /* renamed from: B */
    public final TextView f13957B;
    @NonNull

    /* renamed from: w */
    public final QMUIRoundButton f13958w;
    @NonNull

    /* renamed from: x */
    public final AppCompatImageView f13959x;
    @NonNull

    /* renamed from: y */
    public final DonutProgress f13960y;
    @NonNull

    /* renamed from: z */
    public final QMUITopBarLayout f13961z;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentFirmwareUpgradeBinding(Object obj, View view, int i, QMUIRoundButton qMUIRoundButton, AppCompatImageView appCompatImageView, DonutProgress donutProgress, FrameLayout frameLayout, QMUITopBarLayout qMUITopBarLayout, QMUIFontFitTextView qMUIFontFitTextView, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.f13958w = qMUIRoundButton;
        this.f13959x = appCompatImageView;
        this.f13960y = donutProgress;
        this.f13961z = qMUITopBarLayout;
        this.f13956A = qMUIFontFitTextView;
        this.f13957B = textView;
    }
}
