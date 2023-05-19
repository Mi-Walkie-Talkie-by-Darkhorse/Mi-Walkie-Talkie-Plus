package com.ifengyu.intercom.device.mi3gw.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class DeviceCurGroupSettingFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DeviceCurGroupSettingFragment f12525a;

    /* renamed from: b */
    private View f12526b;

    /* renamed from: c */
    private View f12527c;

    /* renamed from: d */
    private View f12528d;

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceCurGroupSettingFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C3384a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceCurGroupSettingFragment f12529a;

        C3384a(DeviceCurGroupSettingFragment_ViewBinding deviceCurGroupSettingFragment_ViewBinding, DeviceCurGroupSettingFragment deviceCurGroupSettingFragment) {
            this.f12529a = deviceCurGroupSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12529a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceCurGroupSettingFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C3385b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceCurGroupSettingFragment f12530a;

        C3385b(DeviceCurGroupSettingFragment_ViewBinding deviceCurGroupSettingFragment_ViewBinding, DeviceCurGroupSettingFragment deviceCurGroupSettingFragment) {
            this.f12530a = deviceCurGroupSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12530a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceCurGroupSettingFragment_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C3386c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceCurGroupSettingFragment f12531a;

        C3386c(DeviceCurGroupSettingFragment_ViewBinding deviceCurGroupSettingFragment_ViewBinding, DeviceCurGroupSettingFragment deviceCurGroupSettingFragment) {
            this.f12531a = deviceCurGroupSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12531a.onViewClicked(view);
        }
    }

    @UiThread
    public DeviceCurGroupSettingFragment_ViewBinding(DeviceCurGroupSettingFragment deviceCurGroupSettingFragment, View view) {
        this.f12525a = deviceCurGroupSettingFragment;
        deviceCurGroupSettingFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        deviceCurGroupSettingFragment.topSettingLayout = (QMUILinearLayout) Utils.findRequiredViewAsType(view, R.id.top_setting_layout, "field 'topSettingLayout'", QMUILinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.doubleGroupMonitor, "field 'doubleGroupMonitor' and method 'onViewClicked'");
        deviceCurGroupSettingFragment.doubleGroupMonitor = (ItemView) Utils.castView(findRequiredView, R.id.doubleGroupMonitor, "field 'doubleGroupMonitor'", ItemView.class);
        this.f12526b = findRequiredView;
        findRequiredView.setOnClickListener(new C3384a(this, deviceCurGroupSettingFragment));
        deviceCurGroupSettingFragment.currentGroupTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.current_group_title, "field 'currentGroupTitle'", TextView.class);
        deviceCurGroupSettingFragment.currentGroupLayout = (QMUILinearLayout) Utils.findRequiredViewAsType(view, R.id.current_group_layout, "field 'currentGroupLayout'", QMUILinearLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.curGroupItem, "field 'curGroupItem' and method 'onViewClicked'");
        deviceCurGroupSettingFragment.curGroupItem = (ItemView) Utils.castView(findRequiredView2, R.id.curGroupItem, "field 'curGroupItem'", ItemView.class);
        this.f12527c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C3385b(this, deviceCurGroupSettingFragment));
        deviceCurGroupSettingFragment.listenGroupTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.listen_group_title, "field 'listenGroupTitle'", TextView.class);
        deviceCurGroupSettingFragment.listenGroupLayout = (QMUILinearLayout) Utils.findRequiredViewAsType(view, R.id.listen_group_layout, "field 'listenGroupLayout'", QMUILinearLayout.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.listenGroupItem, "field 'listenGroupItem' and method 'onViewClicked'");
        deviceCurGroupSettingFragment.listenGroupItem = (ItemView) Utils.castView(findRequiredView3, R.id.listenGroupItem, "field 'listenGroupItem'", ItemView.class);
        this.f12528d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C3386c(this, deviceCurGroupSettingFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DeviceCurGroupSettingFragment deviceCurGroupSettingFragment = this.f12525a;
        if (deviceCurGroupSettingFragment != null) {
            this.f12525a = null;
            deviceCurGroupSettingFragment.mTopbar = null;
            deviceCurGroupSettingFragment.topSettingLayout = null;
            deviceCurGroupSettingFragment.doubleGroupMonitor = null;
            deviceCurGroupSettingFragment.currentGroupTitle = null;
            deviceCurGroupSettingFragment.currentGroupLayout = null;
            deviceCurGroupSettingFragment.curGroupItem = null;
            deviceCurGroupSettingFragment.listenGroupTitle = null;
            deviceCurGroupSettingFragment.listenGroupLayout = null;
            deviceCurGroupSettingFragment.listenGroupItem = null;
            this.f12526b.setOnClickListener(null);
            this.f12526b = null;
            this.f12527c.setOnClickListener(null);
            this.f12527c = null;
            this.f12528d.setOnClickListener(null);
            this.f12528d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
