package com.ifengyu.intercom.p188k;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.k.m */
/* loaded from: classes2.dex */
public abstract class FragmentMi3CustomListBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: w */
    public final QMUIRoundButton f13986w;
    @NonNull

    /* renamed from: x */
    public final RecyclerView f13987x;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentMi3CustomListBinding(Object obj, View view, int i, QMUIRoundButton qMUIRoundButton, RecyclerView recyclerView) {
        super(obj, view, i);
        this.f13986w = qMUIRoundButton;
        this.f13987x = recyclerView;
    }
}
