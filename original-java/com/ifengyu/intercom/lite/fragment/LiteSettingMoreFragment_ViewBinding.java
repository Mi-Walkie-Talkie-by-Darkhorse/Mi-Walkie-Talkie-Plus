package com.ifengyu.intercom.lite.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class LiteSettingMoreFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private LiteSettingMoreFragment f5478a;

    /* renamed from: b  reason: collision with root package name */
    private View f5479b;

    /* renamed from: c  reason: collision with root package name */
    private View f5480c;
    private View d;
    private View e;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingMoreFragment f5481a;

        a(LiteSettingMoreFragment_ViewBinding liteSettingMoreFragment_ViewBinding, LiteSettingMoreFragment liteSettingMoreFragment) {
            this.f5481a = liteSettingMoreFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5481a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingMoreFragment f5482a;

        b(LiteSettingMoreFragment_ViewBinding liteSettingMoreFragment_ViewBinding, LiteSettingMoreFragment liteSettingMoreFragment) {
            this.f5482a = liteSettingMoreFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5482a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingMoreFragment f5483a;

        c(LiteSettingMoreFragment_ViewBinding liteSettingMoreFragment_ViewBinding, LiteSettingMoreFragment liteSettingMoreFragment) {
            this.f5483a = liteSettingMoreFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5483a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class d extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingMoreFragment f5484a;

        d(LiteSettingMoreFragment_ViewBinding liteSettingMoreFragment_ViewBinding, LiteSettingMoreFragment liteSettingMoreFragment) {
            this.f5484a = liteSettingMoreFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5484a.onClick(view);
        }
    }

    @UiThread
    public LiteSettingMoreFragment_ViewBinding(LiteSettingMoreFragment liteSettingMoreFragment, View view) {
        this.f5478a = liteSettingMoreFragment;
        liteSettingMoreFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_keyless_to_talk, "field 'mItemKeylessTalk' and method 'onClick'");
        liteSettingMoreFragment.mItemKeylessTalk = (ItemView) Utils.castView(findRequiredView, R.id.item_keyless_to_talk, "field 'mItemKeylessTalk'", ItemView.class);
        this.f5479b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, liteSettingMoreFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_banned_on_busy, "field 'mItemBannedOnBusy' and method 'onClick'");
        liteSettingMoreFragment.mItemBannedOnBusy = (ItemView) Utils.castView(findRequiredView2, R.id.item_banned_on_busy, "field 'mItemBannedOnBusy'", ItemView.class);
        this.f5480c = findRequiredView2;
        findRequiredView2.setOnClickListener(new b(this, liteSettingMoreFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_squelch_level, "field 'mItemSquelchLevel' and method 'onClick'");
        liteSettingMoreFragment.mItemSquelchLevel = (ItemView) Utils.castView(findRequiredView3, R.id.item_squelch_level, "field 'mItemSquelchLevel'", ItemView.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new c(this, liteSettingMoreFragment));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.item_wide_narrow_band, "field 'mItemWideNarrowBand' and method 'onClick'");
        liteSettingMoreFragment.mItemWideNarrowBand = (ItemView) Utils.castView(findRequiredView4, R.id.item_wide_narrow_band, "field 'mItemWideNarrowBand'", ItemView.class);
        this.e = findRequiredView4;
        findRequiredView4.setOnClickListener(new d(this, liteSettingMoreFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteSettingMoreFragment liteSettingMoreFragment = this.f5478a;
        if (liteSettingMoreFragment != null) {
            this.f5478a = null;
            liteSettingMoreFragment.mTopBar = null;
            liteSettingMoreFragment.mItemKeylessTalk = null;
            liteSettingMoreFragment.mItemBannedOnBusy = null;
            liteSettingMoreFragment.mItemSquelchLevel = null;
            liteSettingMoreFragment.mItemWideNarrowBand = null;
            this.f5479b.setOnClickListener(null);
            this.f5479b = null;
            this.f5480c.setOnClickListener(null);
            this.f5480c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
