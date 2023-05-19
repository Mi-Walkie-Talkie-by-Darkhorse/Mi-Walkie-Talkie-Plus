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
public class LiteSettingVoiceFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private LiteSettingVoiceFragment f12332a;

    /* renamed from: b */
    private View f12333b;

    /* renamed from: c */
    private View f12334c;

    /* renamed from: d */
    private View f12335d;

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingVoiceFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C3261a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteSettingVoiceFragment f12336a;

        C3261a(LiteSettingVoiceFragment_ViewBinding liteSettingVoiceFragment_ViewBinding, LiteSettingVoiceFragment liteSettingVoiceFragment) {
            this.f12336a = liteSettingVoiceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12336a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingVoiceFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C3262b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteSettingVoiceFragment f12337a;

        C3262b(LiteSettingVoiceFragment_ViewBinding liteSettingVoiceFragment_ViewBinding, LiteSettingVoiceFragment liteSettingVoiceFragment) {
            this.f12337a = liteSettingVoiceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12337a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingVoiceFragment_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C3263c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LiteSettingVoiceFragment f12338a;

        C3263c(LiteSettingVoiceFragment_ViewBinding liteSettingVoiceFragment_ViewBinding, LiteSettingVoiceFragment liteSettingVoiceFragment) {
            this.f12338a = liteSettingVoiceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12338a.onClick(view);
        }
    }

    @UiThread
    public LiteSettingVoiceFragment_ViewBinding(LiteSettingVoiceFragment liteSettingVoiceFragment, View view) {
        this.f12332a = liteSettingVoiceFragment;
        liteSettingVoiceFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_startup_beep, "field 'mItemStartupBeep' and method 'onClick'");
        liteSettingVoiceFragment.mItemStartupBeep = (ItemView) Utils.castView(findRequiredView, R.id.item_startup_beep, "field 'mItemStartupBeep'", ItemView.class);
        this.f12333b = findRequiredView;
        findRequiredView.setOnClickListener(new C3261a(this, liteSettingVoiceFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_key_beep, "field 'mItemKeyBeep' and method 'onClick'");
        liteSettingVoiceFragment.mItemKeyBeep = (ItemView) Utils.castView(findRequiredView2, R.id.item_key_beep, "field 'mItemKeyBeep'", ItemView.class);
        this.f12334c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C3262b(this, liteSettingVoiceFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_voice, "field 'mItemVoice' and method 'onClick'");
        liteSettingVoiceFragment.mItemVoice = (ItemView) Utils.castView(findRequiredView3, R.id.item_voice, "field 'mItemVoice'", ItemView.class);
        this.f12335d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C3263c(this, liteSettingVoiceFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteSettingVoiceFragment liteSettingVoiceFragment = this.f12332a;
        if (liteSettingVoiceFragment != null) {
            this.f12332a = null;
            liteSettingVoiceFragment.mTopBar = null;
            liteSettingVoiceFragment.mItemStartupBeep = null;
            liteSettingVoiceFragment.mItemKeyBeep = null;
            liteSettingVoiceFragment.mItemVoice = null;
            this.f12333b.setOnClickListener(null);
            this.f12333b = null;
            this.f12334c.setOnClickListener(null);
            this.f12334c = null;
            this.f12335d.setOnClickListener(null);
            this.f12335d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
