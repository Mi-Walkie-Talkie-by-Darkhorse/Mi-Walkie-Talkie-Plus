package com.ifengyu.intercom.device.lite.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class LiteChannelEditFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private LiteChannelEditFragment f12275a;

    /* renamed from: b */
    private View f12276b;

    /* renamed from: c */
    private View f12277c;

    /* renamed from: d */
    private View f12278d;

    /* renamed from: e */
    private View f12279e;

    /* renamed from: f */
    private View f12280f;

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteChannelEditFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C3230a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteChannelEditFragment f12281a;

        C3230a(LiteChannelEditFragment_ViewBinding liteChannelEditFragment_ViewBinding, LiteChannelEditFragment liteChannelEditFragment) {
            this.f12281a = liteChannelEditFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12281a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteChannelEditFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C3231b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteChannelEditFragment f12282a;

        C3231b(LiteChannelEditFragment_ViewBinding liteChannelEditFragment_ViewBinding, LiteChannelEditFragment liteChannelEditFragment) {
            this.f12282a = liteChannelEditFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12282a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteChannelEditFragment_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C3232c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteChannelEditFragment f12283a;

        C3232c(LiteChannelEditFragment_ViewBinding liteChannelEditFragment_ViewBinding, LiteChannelEditFragment liteChannelEditFragment) {
            this.f12283a = liteChannelEditFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12283a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteChannelEditFragment_ViewBinding$d */
    /* loaded from: classes2.dex */
    class C3233d extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteChannelEditFragment f12284a;

        C3233d(LiteChannelEditFragment_ViewBinding liteChannelEditFragment_ViewBinding, LiteChannelEditFragment liteChannelEditFragment) {
            this.f12284a = liteChannelEditFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12284a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteChannelEditFragment_ViewBinding$e */
    /* loaded from: classes2.dex */
    class C3234e extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteChannelEditFragment f12285a;

        C3234e(LiteChannelEditFragment_ViewBinding liteChannelEditFragment_ViewBinding, LiteChannelEditFragment liteChannelEditFragment) {
            this.f12285a = liteChannelEditFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12285a.onClick(view);
        }
    }

    @UiThread
    public LiteChannelEditFragment_ViewBinding(LiteChannelEditFragment liteChannelEditFragment, View view) {
        this.f12275a = liteChannelEditFragment;
        liteChannelEditFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_receive_freq, "field 'mItemReceiveFreq' and method 'onClick'");
        liteChannelEditFragment.mItemReceiveFreq = (ItemView) Utils.castView(findRequiredView, R.id.item_receive_freq, "field 'mItemReceiveFreq'", ItemView.class);
        this.f12276b = findRequiredView;
        findRequiredView.setOnClickListener(new C3230a(this, liteChannelEditFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_send_freq, "field 'mItemSendFreq' and method 'onClick'");
        liteChannelEditFragment.mItemSendFreq = (ItemView) Utils.castView(findRequiredView2, R.id.item_send_freq, "field 'mItemSendFreq'", ItemView.class);
        this.f12277c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C3231b(this, liteChannelEditFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_receive_sub_tone, "field 'mItemReceiveTone' and method 'onClick'");
        liteChannelEditFragment.mItemReceiveTone = (ItemView) Utils.castView(findRequiredView3, R.id.item_receive_sub_tone, "field 'mItemReceiveTone'", ItemView.class);
        this.f12278d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C3232c(this, liteChannelEditFragment));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.item_send_sub_tone, "field 'mItemSendTone' and method 'onClick'");
        liteChannelEditFragment.mItemSendTone = (ItemView) Utils.castView(findRequiredView4, R.id.item_send_sub_tone, "field 'mItemSendTone'", ItemView.class);
        this.f12279e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C3233d(this, liteChannelEditFragment));
        liteChannelEditFragment.mTvDescription = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_description, "field 'mTvDescription'", TextView.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.btn_clear, "field 'mBtnClear' and method 'onClick'");
        liteChannelEditFragment.mBtnClear = (QMUIRoundButton) Utils.castView(findRequiredView5, R.id.btn_clear, "field 'mBtnClear'", QMUIRoundButton.class);
        this.f12280f = findRequiredView5;
        findRequiredView5.setOnClickListener(new C3234e(this, liteChannelEditFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteChannelEditFragment liteChannelEditFragment = this.f12275a;
        if (liteChannelEditFragment != null) {
            this.f12275a = null;
            liteChannelEditFragment.mTopBar = null;
            liteChannelEditFragment.mItemReceiveFreq = null;
            liteChannelEditFragment.mItemSendFreq = null;
            liteChannelEditFragment.mItemReceiveTone = null;
            liteChannelEditFragment.mItemSendTone = null;
            liteChannelEditFragment.mTvDescription = null;
            liteChannelEditFragment.mBtnClear = null;
            this.f12276b.setOnClickListener(null);
            this.f12276b = null;
            this.f12277c.setOnClickListener(null);
            this.f12277c = null;
            this.f12278d.setOnClickListener(null);
            this.f12278d = null;
            this.f12279e.setOnClickListener(null);
            this.f12279e = null;
            this.f12280f.setOnClickListener(null);
            this.f12280f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
