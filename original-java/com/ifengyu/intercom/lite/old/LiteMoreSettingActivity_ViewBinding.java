package com.ifengyu.intercom.lite.old;

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
public class LiteMoreSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private LiteMoreSettingActivity f5723a;

    /* renamed from: b  reason: collision with root package name */
    private View f5724b;

    /* renamed from: c  reason: collision with root package name */
    private View f5725c;
    private View d;
    private View e;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteMoreSettingActivity f5726a;

        a(LiteMoreSettingActivity_ViewBinding liteMoreSettingActivity_ViewBinding, LiteMoreSettingActivity liteMoreSettingActivity) {
            this.f5726a = liteMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5726a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteMoreSettingActivity f5727a;

        b(LiteMoreSettingActivity_ViewBinding liteMoreSettingActivity_ViewBinding, LiteMoreSettingActivity liteMoreSettingActivity) {
            this.f5727a = liteMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5727a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteMoreSettingActivity f5728a;

        c(LiteMoreSettingActivity_ViewBinding liteMoreSettingActivity_ViewBinding, LiteMoreSettingActivity liteMoreSettingActivity) {
            this.f5728a = liteMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5728a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class d extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteMoreSettingActivity f5729a;

        d(LiteMoreSettingActivity_ViewBinding liteMoreSettingActivity_ViewBinding, LiteMoreSettingActivity liteMoreSettingActivity) {
            this.f5729a = liteMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5729a.onClick(view);
        }
    }

    @UiThread
    public LiteMoreSettingActivity_ViewBinding(LiteMoreSettingActivity liteMoreSettingActivity, View view) {
        this.f5723a = liteMoreSettingActivity;
        liteMoreSettingActivity.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_keyless_to_talk, "field 'mItemKeylessTalk' and method 'onClick'");
        liteMoreSettingActivity.mItemKeylessTalk = (ItemView) Utils.castView(findRequiredView, R.id.item_keyless_to_talk, "field 'mItemKeylessTalk'", ItemView.class);
        this.f5724b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, liteMoreSettingActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_banned_on_busy, "field 'mItemBannedOnBusy' and method 'onClick'");
        liteMoreSettingActivity.mItemBannedOnBusy = (ItemView) Utils.castView(findRequiredView2, R.id.item_banned_on_busy, "field 'mItemBannedOnBusy'", ItemView.class);
        this.f5725c = findRequiredView2;
        findRequiredView2.setOnClickListener(new b(this, liteMoreSettingActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_squelch_level, "field 'mItemSquelchLevel' and method 'onClick'");
        liteMoreSettingActivity.mItemSquelchLevel = (ItemView) Utils.castView(findRequiredView3, R.id.item_squelch_level, "field 'mItemSquelchLevel'", ItemView.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new c(this, liteMoreSettingActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.item_wide_narrow_band, "field 'mItemWideNarrowBand' and method 'onClick'");
        liteMoreSettingActivity.mItemWideNarrowBand = (ItemView) Utils.castView(findRequiredView4, R.id.item_wide_narrow_band, "field 'mItemWideNarrowBand'", ItemView.class);
        this.e = findRequiredView4;
        findRequiredView4.setOnClickListener(new d(this, liteMoreSettingActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteMoreSettingActivity liteMoreSettingActivity = this.f5723a;
        if (liteMoreSettingActivity != null) {
            this.f5723a = null;
            liteMoreSettingActivity.mTopBar = null;
            liteMoreSettingActivity.mItemKeylessTalk = null;
            liteMoreSettingActivity.mItemBannedOnBusy = null;
            liteMoreSettingActivity.mItemSquelchLevel = null;
            liteMoreSettingActivity.mItemWideNarrowBand = null;
            this.f5724b.setOnClickListener(null);
            this.f5724b = null;
            this.f5725c.setOnClickListener(null);
            this.f5725c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
