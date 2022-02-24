package com.ifengyu.intercom.lite.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.alpha.QMUIAlphaButton;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class LiteSettingFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private LiteSettingFragment f5464a;

    /* renamed from: b  reason: collision with root package name */
    private View f5465b;

    /* renamed from: c  reason: collision with root package name */
    private View f5466c;
    private View d;
    private View e;
    private View f;
    private View g;
    private View h;
    private View i;
    private View j;
    private View k;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingFragment f5467a;

        a(LiteSettingFragment_ViewBinding liteSettingFragment_ViewBinding, LiteSettingFragment liteSettingFragment) {
            this.f5467a = liteSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5467a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingFragment f5468a;

        b(LiteSettingFragment_ViewBinding liteSettingFragment_ViewBinding, LiteSettingFragment liteSettingFragment) {
            this.f5468a = liteSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5468a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingFragment f5469a;

        c(LiteSettingFragment_ViewBinding liteSettingFragment_ViewBinding, LiteSettingFragment liteSettingFragment) {
            this.f5469a = liteSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5469a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class d extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingFragment f5470a;

        d(LiteSettingFragment_ViewBinding liteSettingFragment_ViewBinding, LiteSettingFragment liteSettingFragment) {
            this.f5470a = liteSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5470a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class e extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingFragment f5471a;

        e(LiteSettingFragment_ViewBinding liteSettingFragment_ViewBinding, LiteSettingFragment liteSettingFragment) {
            this.f5471a = liteSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5471a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class f extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingFragment f5472a;

        f(LiteSettingFragment_ViewBinding liteSettingFragment_ViewBinding, LiteSettingFragment liteSettingFragment) {
            this.f5472a = liteSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5472a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class g extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingFragment f5473a;

        g(LiteSettingFragment_ViewBinding liteSettingFragment_ViewBinding, LiteSettingFragment liteSettingFragment) {
            this.f5473a = liteSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5473a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class h extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingFragment f5474a;

        h(LiteSettingFragment_ViewBinding liteSettingFragment_ViewBinding, LiteSettingFragment liteSettingFragment) {
            this.f5474a = liteSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5474a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class i extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingFragment f5475a;

        i(LiteSettingFragment_ViewBinding liteSettingFragment_ViewBinding, LiteSettingFragment liteSettingFragment) {
            this.f5475a = liteSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5475a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class j extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingFragment f5476a;

        j(LiteSettingFragment_ViewBinding liteSettingFragment_ViewBinding, LiteSettingFragment liteSettingFragment) {
            this.f5476a = liteSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5476a.onClick(view);
        }
    }

    @UiThread
    public LiteSettingFragment_ViewBinding(LiteSettingFragment liteSettingFragment, View view) {
        this.f5464a = liteSettingFragment;
        liteSettingFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_config, "field 'mItemConfig' and method 'onClick'");
        liteSettingFragment.mItemConfig = (ItemView) Utils.castView(findRequiredView, R.id.item_config, "field 'mItemConfig'", ItemView.class);
        this.f5465b = findRequiredView;
        findRequiredView.setOnClickListener(new b(this, liteSettingFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_name, "field 'mItemName' and method 'onClick'");
        liteSettingFragment.mItemName = (ItemView) Utils.castView(findRequiredView2, R.id.item_name, "field 'mItemName'", ItemView.class);
        this.f5466c = findRequiredView2;
        findRequiredView2.setOnClickListener(new c(this, liteSettingFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_id, "field 'mItemId' and method 'onClick'");
        liteSettingFragment.mItemId = (ItemView) Utils.castView(findRequiredView3, R.id.item_id, "field 'mItemId'", ItemView.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new d(this, liteSettingFragment));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.item_voice, "field 'mItemVoice' and method 'onClick'");
        liteSettingFragment.mItemVoice = (ItemView) Utils.castView(findRequiredView4, R.id.item_voice, "field 'mItemVoice'", ItemView.class);
        this.e = findRequiredView4;
        findRequiredView4.setOnClickListener(new e(this, liteSettingFragment));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.item_deploy, "field 'mItemDeploy' and method 'onClick'");
        liteSettingFragment.mItemDeploy = (ItemView) Utils.castView(findRequiredView5, R.id.item_deploy, "field 'mItemDeploy'", ItemView.class);
        this.f = findRequiredView5;
        findRequiredView5.setOnClickListener(new f(this, liteSettingFragment));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.item_more, "field 'mItemMore' and method 'onClick'");
        liteSettingFragment.mItemMore = (ItemView) Utils.castView(findRequiredView6, R.id.item_more, "field 'mItemMore'", ItemView.class);
        this.g = findRequiredView6;
        findRequiredView6.setOnClickListener(new g(this, liteSettingFragment));
        View findRequiredView7 = Utils.findRequiredView(view, R.id.item_update, "field 'mItemUpdate' and method 'onClick'");
        liteSettingFragment.mItemUpdate = (ItemView) Utils.castView(findRequiredView7, R.id.item_update, "field 'mItemUpdate'", ItemView.class);
        this.h = findRequiredView7;
        findRequiredView7.setOnClickListener(new h(this, liteSettingFragment));
        liteSettingFragment.mTvChannelName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_channel_name, "field 'mTvChannelName'", TextView.class);
        liteSettingFragment.mEmptyBoard = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.empty_board, "field 'mEmptyBoard'", LinearLayout.class);
        liteSettingFragment.mTvReceiveFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_receive_freq, "field 'mTvReceiveFreq'", TextView.class);
        liteSettingFragment.mTvSendFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_send_freq, "field 'mTvSendFreq'", TextView.class);
        liteSettingFragment.mContentBoard = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.content_board, "field 'mContentBoard'", RelativeLayout.class);
        View findRequiredView8 = Utils.findRequiredView(view, R.id.btn_unbind, "field 'mBtnUnbind' and method 'onClick'");
        liteSettingFragment.mBtnUnbind = (QMUIAlphaButton) Utils.castView(findRequiredView8, R.id.btn_unbind, "field 'mBtnUnbind'", QMUIAlphaButton.class);
        this.i = findRequiredView8;
        findRequiredView8.setOnClickListener(new i(this, liteSettingFragment));
        View findRequiredView9 = Utils.findRequiredView(view, R.id.ll_channel_board, "method 'onClick'");
        this.j = findRequiredView9;
        findRequiredView9.setOnClickListener(new j(this, liteSettingFragment));
        View findRequiredView10 = Utils.findRequiredView(view, R.id.item_about, "method 'onClick'");
        this.k = findRequiredView10;
        findRequiredView10.setOnClickListener(new a(this, liteSettingFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteSettingFragment liteSettingFragment = this.f5464a;
        if (liteSettingFragment != null) {
            this.f5464a = null;
            liteSettingFragment.mTopBar = null;
            liteSettingFragment.mItemConfig = null;
            liteSettingFragment.mItemName = null;
            liteSettingFragment.mItemId = null;
            liteSettingFragment.mItemVoice = null;
            liteSettingFragment.mItemDeploy = null;
            liteSettingFragment.mItemMore = null;
            liteSettingFragment.mItemUpdate = null;
            liteSettingFragment.mTvChannelName = null;
            liteSettingFragment.mEmptyBoard = null;
            liteSettingFragment.mTvReceiveFreq = null;
            liteSettingFragment.mTvSendFreq = null;
            liteSettingFragment.mContentBoard = null;
            liteSettingFragment.mBtnUnbind = null;
            this.f5465b.setOnClickListener(null);
            this.f5465b = null;
            this.f5466c.setOnClickListener(null);
            this.f5466c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            this.f.setOnClickListener(null);
            this.f = null;
            this.g.setOnClickListener(null);
            this.g = null;
            this.h.setOnClickListener(null);
            this.h = null;
            this.i.setOnClickListener(null);
            this.i = null;
            this.j.setOnClickListener(null);
            this.j = null;
            this.k.setOnClickListener(null);
            this.k = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
