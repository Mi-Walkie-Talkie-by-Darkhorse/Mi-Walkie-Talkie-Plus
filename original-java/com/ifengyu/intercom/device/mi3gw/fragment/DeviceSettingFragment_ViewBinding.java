package com.ifengyu.intercom.device.mi3gw.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class DeviceSettingFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DeviceSettingFragment f12601a;

    /* renamed from: b */
    private View f12602b;

    /* renamed from: c */
    private View f12603c;

    /* renamed from: d */
    private View f12604d;

    /* renamed from: e */
    private View f12605e;

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceSettingFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C3404a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceSettingFragment f12606a;

        C3404a(DeviceSettingFragment_ViewBinding deviceSettingFragment_ViewBinding, DeviceSettingFragment deviceSettingFragment) {
            this.f12606a = deviceSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12606a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceSettingFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C3405b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceSettingFragment f12607a;

        C3405b(DeviceSettingFragment_ViewBinding deviceSettingFragment_ViewBinding, DeviceSettingFragment deviceSettingFragment) {
            this.f12607a = deviceSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12607a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceSettingFragment_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C3406c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceSettingFragment f12608a;

        C3406c(DeviceSettingFragment_ViewBinding deviceSettingFragment_ViewBinding, DeviceSettingFragment deviceSettingFragment) {
            this.f12608a = deviceSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12608a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceSettingFragment_ViewBinding$d */
    /* loaded from: classes2.dex */
    class C3407d extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceSettingFragment f12609a;

        C3407d(DeviceSettingFragment_ViewBinding deviceSettingFragment_ViewBinding, DeviceSettingFragment deviceSettingFragment) {
            this.f12609a = deviceSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12609a.onViewClicked(view);
        }
    }

    @UiThread
    public DeviceSettingFragment_ViewBinding(DeviceSettingFragment deviceSettingFragment, View view) {
        this.f12601a = deviceSettingFragment;
        deviceSettingFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        deviceSettingFragment.ivAvatar = (QMUIRadiusImageView) Utils.findRequiredViewAsType(view, R.id.iv_avatar, "field 'ivAvatar'", QMUIRadiusImageView.class);
        deviceSettingFragment.tvName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_name, "field 'tvName'", TextView.class);
        deviceSettingFragment.tvId = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_id, "field 'tvId'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.btn_unbind, "field 'btnUnbind' and method 'onViewClicked'");
        deviceSettingFragment.btnUnbind = (QMUIRoundButton) Utils.castView(findRequiredView, R.id.btn_unbind, "field 'btnUnbind'", QMUIRoundButton.class);
        this.f12602b = findRequiredView;
        findRequiredView.setOnClickListener(new C3404a(this, deviceSettingFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.ll_device_info, "method 'onViewClicked'");
        this.f12603c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C3405b(this, deviceSettingFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.deviceColling, "method 'onViewClicked'");
        this.f12604d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C3406c(this, deviceSettingFragment));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.deviceAbort, "method 'onViewClicked'");
        this.f12605e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C3407d(this, deviceSettingFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DeviceSettingFragment deviceSettingFragment = this.f12601a;
        if (deviceSettingFragment != null) {
            this.f12601a = null;
            deviceSettingFragment.mTopbar = null;
            deviceSettingFragment.ivAvatar = null;
            deviceSettingFragment.tvName = null;
            deviceSettingFragment.tvId = null;
            deviceSettingFragment.btnUnbind = null;
            this.f12602b.setOnClickListener(null);
            this.f12602b = null;
            this.f12603c.setOnClickListener(null);
            this.f12603c = null;
            this.f12604d.setOnClickListener(null);
            this.f12604d = null;
            this.f12605e.setOnClickListener(null);
            this.f12605e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
