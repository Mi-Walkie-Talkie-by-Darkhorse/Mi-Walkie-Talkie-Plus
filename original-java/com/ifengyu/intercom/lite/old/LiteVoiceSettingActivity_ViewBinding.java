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
public class LiteVoiceSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private LiteVoiceSettingActivity f5753a;

    /* renamed from: b  reason: collision with root package name */
    private View f5754b;

    /* renamed from: c  reason: collision with root package name */
    private View f5755c;
    private View d;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteVoiceSettingActivity f5756a;

        a(LiteVoiceSettingActivity_ViewBinding liteVoiceSettingActivity_ViewBinding, LiteVoiceSettingActivity liteVoiceSettingActivity) {
            this.f5756a = liteVoiceSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5756a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteVoiceSettingActivity f5757a;

        b(LiteVoiceSettingActivity_ViewBinding liteVoiceSettingActivity_ViewBinding, LiteVoiceSettingActivity liteVoiceSettingActivity) {
            this.f5757a = liteVoiceSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5757a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteVoiceSettingActivity f5758a;

        c(LiteVoiceSettingActivity_ViewBinding liteVoiceSettingActivity_ViewBinding, LiteVoiceSettingActivity liteVoiceSettingActivity) {
            this.f5758a = liteVoiceSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5758a.onClick(view);
        }
    }

    @UiThread
    public LiteVoiceSettingActivity_ViewBinding(LiteVoiceSettingActivity liteVoiceSettingActivity, View view) {
        this.f5753a = liteVoiceSettingActivity;
        liteVoiceSettingActivity.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_startup_beep, "field 'mItemStartupBeep' and method 'onClick'");
        liteVoiceSettingActivity.mItemStartupBeep = (ItemView) Utils.castView(findRequiredView, R.id.item_startup_beep, "field 'mItemStartupBeep'", ItemView.class);
        this.f5754b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, liteVoiceSettingActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_key_beep, "field 'mItemKeyBeep' and method 'onClick'");
        liteVoiceSettingActivity.mItemKeyBeep = (ItemView) Utils.castView(findRequiredView2, R.id.item_key_beep, "field 'mItemKeyBeep'", ItemView.class);
        this.f5755c = findRequiredView2;
        findRequiredView2.setOnClickListener(new b(this, liteVoiceSettingActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_voice, "field 'mItemVoice' and method 'onClick'");
        liteVoiceSettingActivity.mItemVoice = (ItemView) Utils.castView(findRequiredView3, R.id.item_voice, "field 'mItemVoice'", ItemView.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new c(this, liteVoiceSettingActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteVoiceSettingActivity liteVoiceSettingActivity = this.f5753a;
        if (liteVoiceSettingActivity != null) {
            this.f5753a = null;
            liteVoiceSettingActivity.mTopBar = null;
            liteVoiceSettingActivity.mItemStartupBeep = null;
            liteVoiceSettingActivity.mItemKeyBeep = null;
            liteVoiceSettingActivity.mItemVoice = null;
            this.f5754b.setOnClickListener(null);
            this.f5754b = null;
            this.f5755c.setOnClickListener(null);
            this.f5755c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
