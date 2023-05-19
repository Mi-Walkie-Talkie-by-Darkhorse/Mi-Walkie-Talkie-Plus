package com.ifengyu.intercom.p188k;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.k.a */
/* loaded from: classes2.dex */
public abstract class ChannelListEveryTypeBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: w */
    public final TabLayout f13918w;
    @NonNull

    /* renamed from: x */
    public final QMUITopBarLayout f13919x;
    @NonNull

    /* renamed from: y */
    public final ViewPager2 f13920y;

    /* JADX INFO: Access modifiers changed from: protected */
    public ChannelListEveryTypeBinding(Object obj, View view, int i, TabLayout tabLayout, QMUITopBarLayout qMUITopBarLayout, ViewPager2 viewPager2) {
        super(obj, view, i);
        this.f13918w = tabLayout;
        this.f13919x = qMUITopBarLayout;
        this.f13920y = viewPager2;
    }
}
