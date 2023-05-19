package com.ifengyu.intercom.device.mi3gw.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class DeviceInfoSettingFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DeviceInfoSettingFragment f12587a;

    /* renamed from: b */
    private View f12588b;

    /* renamed from: c */
    private View f12589c;

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceInfoSettingFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C3396a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceInfoSettingFragment f12590a;

        C3396a(DeviceInfoSettingFragment_ViewBinding deviceInfoSettingFragment_ViewBinding, DeviceInfoSettingFragment deviceInfoSettingFragment) {
            this.f12590a = deviceInfoSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12590a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceInfoSettingFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C3397b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceInfoSettingFragment f12591a;

        C3397b(DeviceInfoSettingFragment_ViewBinding deviceInfoSettingFragment_ViewBinding, DeviceInfoSettingFragment deviceInfoSettingFragment) {
            this.f12591a = deviceInfoSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12591a.onViewClicked(view);
        }
    }

    @UiThread
    public DeviceInfoSettingFragment_ViewBinding(DeviceInfoSettingFragment deviceInfoSettingFragment, View view) {
        this.f12587a = deviceInfoSettingFragment;
        deviceInfoSettingFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        deviceInfoSettingFragment.ivAvatar = (QMUIRadiusImageView) Utils.findRequiredViewAsType(view, R.id.iv_avatar, "field 'ivAvatar'", QMUIRadiusImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.deviceNickname, "field 'deviceNickname' and method 'onViewClicked'");
        deviceInfoSettingFragment.deviceNickname = (ItemView) Utils.castView(findRequiredView, R.id.deviceNickname, "field 'deviceNickname'", ItemView.class);
        this.f12588b = findRequiredView;
        findRequiredView.setOnClickListener(new C3396a(this, deviceInfoSettingFragment));
        deviceInfoSettingFragment.deviceId = (ItemView) Utils.findRequiredViewAsType(view, R.id.deviceId, "field 'deviceId'", ItemView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.device_avatar_ll, "method 'onViewClicked'");
        this.f12589c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C3397b(this, deviceInfoSettingFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DeviceInfoSettingFragment deviceInfoSettingFragment = this.f12587a;
        if (deviceInfoSettingFragment != null) {
            this.f12587a = null;
            deviceInfoSettingFragment.mTopbar = null;
            deviceInfoSettingFragment.ivAvatar = null;
            deviceInfoSettingFragment.deviceNickname = null;
            deviceInfoSettingFragment.deviceId = null;
            this.f12588b.setOnClickListener(null);
            this.f12588b = null;
            this.f12589c.setOnClickListener(null);
            this.f12589c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
