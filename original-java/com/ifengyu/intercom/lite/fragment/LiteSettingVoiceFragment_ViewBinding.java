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
public class LiteSettingVoiceFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private LiteSettingVoiceFragment f5486a;

    /* renamed from: b  reason: collision with root package name */
    private View f5487b;

    /* renamed from: c  reason: collision with root package name */
    private View f5488c;
    private View d;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingVoiceFragment f5489a;

        a(LiteSettingVoiceFragment_ViewBinding liteSettingVoiceFragment_ViewBinding, LiteSettingVoiceFragment liteSettingVoiceFragment) {
            this.f5489a = liteSettingVoiceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5489a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingVoiceFragment f5490a;

        b(LiteSettingVoiceFragment_ViewBinding liteSettingVoiceFragment_ViewBinding, LiteSettingVoiceFragment liteSettingVoiceFragment) {
            this.f5490a = liteSettingVoiceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5490a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSettingVoiceFragment f5491a;

        c(LiteSettingVoiceFragment_ViewBinding liteSettingVoiceFragment_ViewBinding, LiteSettingVoiceFragment liteSettingVoiceFragment) {
            this.f5491a = liteSettingVoiceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5491a.onClick(view);
        }
    }

    @UiThread
    public LiteSettingVoiceFragment_ViewBinding(LiteSettingVoiceFragment liteSettingVoiceFragment, View view) {
        this.f5486a = liteSettingVoiceFragment;
        liteSettingVoiceFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_startup_beep, "field 'mItemStartupBeep' and method 'onClick'");
        liteSettingVoiceFragment.mItemStartupBeep = (ItemView) Utils.castView(findRequiredView, R.id.item_startup_beep, "field 'mItemStartupBeep'", ItemView.class);
        this.f5487b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, liteSettingVoiceFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_key_beep, "field 'mItemKeyBeep' and method 'onClick'");
        liteSettingVoiceFragment.mItemKeyBeep = (ItemView) Utils.castView(findRequiredView2, R.id.item_key_beep, "field 'mItemKeyBeep'", ItemView.class);
        this.f5488c = findRequiredView2;
        findRequiredView2.setOnClickListener(new b(this, liteSettingVoiceFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_voice, "field 'mItemVoice' and method 'onClick'");
        liteSettingVoiceFragment.mItemVoice = (ItemView) Utils.castView(findRequiredView3, R.id.item_voice, "field 'mItemVoice'", ItemView.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new c(this, liteSettingVoiceFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteSettingVoiceFragment liteSettingVoiceFragment = this.f5486a;
        if (liteSettingVoiceFragment != null) {
            this.f5486a = null;
            liteSettingVoiceFragment.mTopBar = null;
            liteSettingVoiceFragment.mItemStartupBeep = null;
            liteSettingVoiceFragment.mItemKeyBeep = null;
            liteSettingVoiceFragment.mItemVoice = null;
            this.f5487b.setOnClickListener(null);
            this.f5487b = null;
            this.f5488c.setOnClickListener(null);
            this.f5488c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
