package com.ifengyu.intercom.lite.fragment;

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

    /* renamed from: a  reason: collision with root package name */
    private LiteChannelEditFragment f5447a;

    /* renamed from: b  reason: collision with root package name */
    private View f5448b;

    /* renamed from: c  reason: collision with root package name */
    private View f5449c;
    private View d;
    private View e;
    private View f;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteChannelEditFragment f5450a;

        a(LiteChannelEditFragment_ViewBinding liteChannelEditFragment_ViewBinding, LiteChannelEditFragment liteChannelEditFragment) {
            this.f5450a = liteChannelEditFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5450a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteChannelEditFragment f5451a;

        b(LiteChannelEditFragment_ViewBinding liteChannelEditFragment_ViewBinding, LiteChannelEditFragment liteChannelEditFragment) {
            this.f5451a = liteChannelEditFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5451a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteChannelEditFragment f5452a;

        c(LiteChannelEditFragment_ViewBinding liteChannelEditFragment_ViewBinding, LiteChannelEditFragment liteChannelEditFragment) {
            this.f5452a = liteChannelEditFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5452a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class d extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteChannelEditFragment f5453a;

        d(LiteChannelEditFragment_ViewBinding liteChannelEditFragment_ViewBinding, LiteChannelEditFragment liteChannelEditFragment) {
            this.f5453a = liteChannelEditFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5453a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class e extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteChannelEditFragment f5454a;

        e(LiteChannelEditFragment_ViewBinding liteChannelEditFragment_ViewBinding, LiteChannelEditFragment liteChannelEditFragment) {
            this.f5454a = liteChannelEditFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5454a.onClick(view);
        }
    }

    @UiThread
    public LiteChannelEditFragment_ViewBinding(LiteChannelEditFragment liteChannelEditFragment, View view) {
        this.f5447a = liteChannelEditFragment;
        liteChannelEditFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_receive_freq, "field 'mItemReceiveFreq' and method 'onClick'");
        liteChannelEditFragment.mItemReceiveFreq = (ItemView) Utils.castView(findRequiredView, R.id.item_receive_freq, "field 'mItemReceiveFreq'", ItemView.class);
        this.f5448b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, liteChannelEditFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_send_freq, "field 'mItemSendFreq' and method 'onClick'");
        liteChannelEditFragment.mItemSendFreq = (ItemView) Utils.castView(findRequiredView2, R.id.item_send_freq, "field 'mItemSendFreq'", ItemView.class);
        this.f5449c = findRequiredView2;
        findRequiredView2.setOnClickListener(new b(this, liteChannelEditFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_receive_sub_tone, "field 'mItemReceiveTone' and method 'onClick'");
        liteChannelEditFragment.mItemReceiveTone = (ItemView) Utils.castView(findRequiredView3, R.id.item_receive_sub_tone, "field 'mItemReceiveTone'", ItemView.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new c(this, liteChannelEditFragment));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.item_send_sub_tone, "field 'mItemSendTone' and method 'onClick'");
        liteChannelEditFragment.mItemSendTone = (ItemView) Utils.castView(findRequiredView4, R.id.item_send_sub_tone, "field 'mItemSendTone'", ItemView.class);
        this.e = findRequiredView4;
        findRequiredView4.setOnClickListener(new d(this, liteChannelEditFragment));
        liteChannelEditFragment.mTvDescription = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_description, "field 'mTvDescription'", TextView.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.btn_clear, "field 'mBtnClear' and method 'onClick'");
        liteChannelEditFragment.mBtnClear = (QMUIRoundButton) Utils.castView(findRequiredView5, R.id.btn_clear, "field 'mBtnClear'", QMUIRoundButton.class);
        this.f = findRequiredView5;
        findRequiredView5.setOnClickListener(new e(this, liteChannelEditFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteChannelEditFragment liteChannelEditFragment = this.f5447a;
        if (liteChannelEditFragment != null) {
            this.f5447a = null;
            liteChannelEditFragment.mTopBar = null;
            liteChannelEditFragment.mItemReceiveFreq = null;
            liteChannelEditFragment.mItemSendFreq = null;
            liteChannelEditFragment.mItemReceiveTone = null;
            liteChannelEditFragment.mItemSendTone = null;
            liteChannelEditFragment.mTvDescription = null;
            liteChannelEditFragment.mBtnClear = null;
            this.f5448b.setOnClickListener(null);
            this.f5448b = null;
            this.f5449c.setOnClickListener(null);
            this.f5449c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            this.f.setOnClickListener(null);
            this.f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
