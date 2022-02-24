package com.ifengyu.intercom.lite.old;

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
public class LiteChannelEditActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private LiteChannelEditActivity f5711a;

    /* renamed from: b  reason: collision with root package name */
    private View f5712b;

    /* renamed from: c  reason: collision with root package name */
    private View f5713c;
    private View d;
    private View e;
    private View f;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteChannelEditActivity f5714a;

        a(LiteChannelEditActivity_ViewBinding liteChannelEditActivity_ViewBinding, LiteChannelEditActivity liteChannelEditActivity) {
            this.f5714a = liteChannelEditActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5714a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteChannelEditActivity f5715a;

        b(LiteChannelEditActivity_ViewBinding liteChannelEditActivity_ViewBinding, LiteChannelEditActivity liteChannelEditActivity) {
            this.f5715a = liteChannelEditActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5715a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteChannelEditActivity f5716a;

        c(LiteChannelEditActivity_ViewBinding liteChannelEditActivity_ViewBinding, LiteChannelEditActivity liteChannelEditActivity) {
            this.f5716a = liteChannelEditActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5716a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class d extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteChannelEditActivity f5717a;

        d(LiteChannelEditActivity_ViewBinding liteChannelEditActivity_ViewBinding, LiteChannelEditActivity liteChannelEditActivity) {
            this.f5717a = liteChannelEditActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5717a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class e extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteChannelEditActivity f5718a;

        e(LiteChannelEditActivity_ViewBinding liteChannelEditActivity_ViewBinding, LiteChannelEditActivity liteChannelEditActivity) {
            this.f5718a = liteChannelEditActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5718a.onClick(view);
        }
    }

    @UiThread
    public LiteChannelEditActivity_ViewBinding(LiteChannelEditActivity liteChannelEditActivity, View view) {
        this.f5711a = liteChannelEditActivity;
        liteChannelEditActivity.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_receive_freq, "field 'mItemReceiveFreq' and method 'onClick'");
        liteChannelEditActivity.mItemReceiveFreq = (ItemView) Utils.castView(findRequiredView, R.id.item_receive_freq, "field 'mItemReceiveFreq'", ItemView.class);
        this.f5712b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, liteChannelEditActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_send_freq, "field 'mItemSendFreq' and method 'onClick'");
        liteChannelEditActivity.mItemSendFreq = (ItemView) Utils.castView(findRequiredView2, R.id.item_send_freq, "field 'mItemSendFreq'", ItemView.class);
        this.f5713c = findRequiredView2;
        findRequiredView2.setOnClickListener(new b(this, liteChannelEditActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_receive_sub_tone, "field 'mItemReceiveTone' and method 'onClick'");
        liteChannelEditActivity.mItemReceiveTone = (ItemView) Utils.castView(findRequiredView3, R.id.item_receive_sub_tone, "field 'mItemReceiveTone'", ItemView.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new c(this, liteChannelEditActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.item_send_sub_tone, "field 'mItemSendTone' and method 'onClick'");
        liteChannelEditActivity.mItemSendTone = (ItemView) Utils.castView(findRequiredView4, R.id.item_send_sub_tone, "field 'mItemSendTone'", ItemView.class);
        this.e = findRequiredView4;
        findRequiredView4.setOnClickListener(new d(this, liteChannelEditActivity));
        liteChannelEditActivity.mTvDescription = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_description, "field 'mTvDescription'", TextView.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.btn_clear, "field 'mBtnClear' and method 'onClick'");
        liteChannelEditActivity.mBtnClear = (QMUIRoundButton) Utils.castView(findRequiredView5, R.id.btn_clear, "field 'mBtnClear'", QMUIRoundButton.class);
        this.f = findRequiredView5;
        findRequiredView5.setOnClickListener(new e(this, liteChannelEditActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteChannelEditActivity liteChannelEditActivity = this.f5711a;
        if (liteChannelEditActivity != null) {
            this.f5711a = null;
            liteChannelEditActivity.mTopBar = null;
            liteChannelEditActivity.mItemReceiveFreq = null;
            liteChannelEditActivity.mItemSendFreq = null;
            liteChannelEditActivity.mItemReceiveTone = null;
            liteChannelEditActivity.mItemSendTone = null;
            liteChannelEditActivity.mTvDescription = null;
            liteChannelEditActivity.mBtnClear = null;
            this.f5712b.setOnClickListener(null);
            this.f5712b = null;
            this.f5713c.setOnClickListener(null);
            this.f5713c = null;
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
