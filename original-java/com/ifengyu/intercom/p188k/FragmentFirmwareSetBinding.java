package com.ifengyu.intercom.p188k;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.ViewDataBinding;
import com.ifengyu.library.widget.view.ItemTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.k.g */
/* loaded from: classes2.dex */
public abstract class FragmentFirmwareSetBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: w */
    public final ItemTextView f13948w;
    @NonNull

    /* renamed from: x */
    public final TextView f13949x;
    @NonNull

    /* renamed from: y */
    public final ItemTextView f13950y;
    @NonNull

    /* renamed from: z */
    public final QMUITopBarLayout f13951z;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentFirmwareSetBinding(Object obj, View view, int i, ItemTextView itemTextView, TextView textView, ItemTextView itemTextView2, QMUITopBarLayout qMUITopBarLayout) {
        super(obj, view, i);
        this.f13948w = itemTextView;
        this.f13949x = textView;
        this.f13950y = itemTextView2;
        this.f13951z = qMUITopBarLayout;
    }

    public abstract void setClickListener(@Nullable View.OnClickListener onClickListener);
}
