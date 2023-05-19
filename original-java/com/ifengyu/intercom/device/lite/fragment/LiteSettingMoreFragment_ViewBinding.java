package com.ifengyu.intercom.device.lite.fragment;

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

    /* renamed from: a */
    private LiteSettingMoreFragment f12320a;

    /* renamed from: b */
    private View f12321b;

    /* renamed from: c */
    private View f12322c;

    /* renamed from: d */
    private View f12323d;

    /* renamed from: e */
    private View f12324e;

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingMoreFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C3256a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteSettingMoreFragment f12325a;

        C3256a(LiteSettingMoreFragment_ViewBinding liteSettingMoreFragment_ViewBinding, LiteSettingMoreFragment liteSettingMoreFragment) {
            this.f12325a = liteSettingMoreFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12325a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingMoreFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C3257b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteSettingMoreFragment f12326a;

        C3257b(LiteSettingMoreFragment_ViewBinding liteSettingMoreFragment_ViewBinding, LiteSettingMoreFragment liteSettingMoreFragment) {
            this.f12326a = liteSettingMoreFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12326a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingMoreFragment_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C3258c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteSettingMoreFragment f12327a;

        C3258c(LiteSettingMoreFragment_ViewBinding liteSettingMoreFragment_ViewBinding, LiteSettingMoreFragment liteSettingMoreFragment) {
            this.f12327a = liteSettingMoreFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12327a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingMoreFragment_ViewBinding$d */
    /* loaded from: classes2.dex */
    class C3259d extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteSettingMoreFragment f12328a;

        C3259d(LiteSettingMoreFragment_ViewBinding liteSettingMoreFragment_ViewBinding, LiteSettingMoreFragment liteSettingMoreFragment) {
            this.f12328a = liteSettingMoreFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12328a.onClick(view);
        }
    }

    @UiThread
    public LiteSettingMoreFragment_ViewBinding(LiteSettingMoreFragment liteSettingMoreFragment, View view) {
        this.f12320a = liteSettingMoreFragment;
        liteSettingMoreFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_keyless_to_talk, "field 'mItemKeylessTalk' and method 'onClick'");
        liteSettingMoreFragment.mItemKeylessTalk = (ItemView) Utils.castView(findRequiredView, R.id.item_keyless_to_talk, "field 'mItemKeylessTalk'", ItemView.class);
        this.f12321b = findRequiredView;
        findRequiredView.setOnClickListener(new C3256a(this, liteSettingMoreFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_banned_on_busy, "field 'mItemBannedOnBusy' and method 'onClick'");
        liteSettingMoreFragment.mItemBannedOnBusy = (ItemView) Utils.castView(findRequiredView2, R.id.item_banned_on_busy, "field 'mItemBannedOnBusy'", ItemView.class);
        this.f12322c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C3257b(this, liteSettingMoreFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_squelch_level, "field 'mItemSquelchLevel' and method 'onClick'");
        liteSettingMoreFragment.mItemSquelchLevel = (ItemView) Utils.castView(findRequiredView3, R.id.item_squelch_level, "field 'mItemSquelchLevel'", ItemView.class);
        this.f12323d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C3258c(this, liteSettingMoreFragment));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.item_wide_narrow_band, "field 'mItemWideNarrowBand' and method 'onClick'");
        liteSettingMoreFragment.mItemWideNarrowBand = (ItemView) Utils.castView(findRequiredView4, R.id.item_wide_narrow_band, "field 'mItemWideNarrowBand'", ItemView.class);
        this.f12324e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C3259d(this, liteSettingMoreFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteSettingMoreFragment liteSettingMoreFragment = this.f12320a;
        if (liteSettingMoreFragment != null) {
            this.f12320a = null;
            liteSettingMoreFragment.mTopBar = null;
            liteSettingMoreFragment.mItemKeylessTalk = null;
            liteSettingMoreFragment.mItemBannedOnBusy = null;
            liteSettingMoreFragment.mItemSquelchLevel = null;
            liteSettingMoreFragment.mItemWideNarrowBand = null;
            this.f12321b.setOnClickListener(null);
            this.f12321b = null;
            this.f12322c.setOnClickListener(null);
            this.f12322c = null;
            this.f12323d.setOnClickListener(null);
            this.f12323d = null;
            this.f12324e.setOnClickListener(null);
            this.f12324e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
