package com.ifengyu.intercom.p188k;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.k.e */
/* loaded from: classes2.dex */
public abstract class FragmentConfigFileDetailBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: A */
    public final QMUITopBarLayout f13939A;
    @NonNull

    /* renamed from: w */
    public final RecyclerView f13940w;
    @NonNull

    /* renamed from: x */
    public final LinearLayout f13941x;
    @NonNull

    /* renamed from: y */
    public final TabLayout f13942y;
    @NonNull

    /* renamed from: z */
    public final ViewPager2 f13943z;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentConfigFileDetailBinding(Object obj, View view, int i, RecyclerView recyclerView, LinearLayout linearLayout, TabLayout tabLayout, ViewPager2 viewPager2, QMUITopBarLayout qMUITopBarLayout) {
        super(obj, view, i);
        this.f13940w = recyclerView;
        this.f13941x = linearLayout;
        this.f13942y = tabLayout;
        this.f13943z = viewPager2;
        this.f13939A = qMUITopBarLayout;
    }
}
