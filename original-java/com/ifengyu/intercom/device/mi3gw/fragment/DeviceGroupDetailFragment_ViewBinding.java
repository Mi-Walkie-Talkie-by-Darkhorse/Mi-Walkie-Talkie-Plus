package com.ifengyu.intercom.device.mi3gw.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class DeviceGroupDetailFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DeviceGroupDetailFragment f12548a;

    /* renamed from: b */
    private View f12549b;

    /* renamed from: c */
    private View f12550c;

    /* renamed from: d */
    private View f12551d;

    /* renamed from: e */
    private View f12552e;

    /* renamed from: f */
    private View f12553f;

    /* renamed from: g */
    private View f12554g;

    /* renamed from: h */
    private View f12555h;

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceGroupDetailFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C3388a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceGroupDetailFragment f12556a;

        C3388a(DeviceGroupDetailFragment_ViewBinding deviceGroupDetailFragment_ViewBinding, DeviceGroupDetailFragment deviceGroupDetailFragment) {
            this.f12556a = deviceGroupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12556a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceGroupDetailFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C3389b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceGroupDetailFragment f12557a;

        C3389b(DeviceGroupDetailFragment_ViewBinding deviceGroupDetailFragment_ViewBinding, DeviceGroupDetailFragment deviceGroupDetailFragment) {
            this.f12557a = deviceGroupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12557a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceGroupDetailFragment_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C3390c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceGroupDetailFragment f12558a;

        C3390c(DeviceGroupDetailFragment_ViewBinding deviceGroupDetailFragment_ViewBinding, DeviceGroupDetailFragment deviceGroupDetailFragment) {
            this.f12558a = deviceGroupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12558a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceGroupDetailFragment_ViewBinding$d */
    /* loaded from: classes2.dex */
    class C3391d extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceGroupDetailFragment f12559a;

        C3391d(DeviceGroupDetailFragment_ViewBinding deviceGroupDetailFragment_ViewBinding, DeviceGroupDetailFragment deviceGroupDetailFragment) {
            this.f12559a = deviceGroupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12559a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceGroupDetailFragment_ViewBinding$e */
    /* loaded from: classes2.dex */
    class C3392e extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceGroupDetailFragment f12560a;

        C3392e(DeviceGroupDetailFragment_ViewBinding deviceGroupDetailFragment_ViewBinding, DeviceGroupDetailFragment deviceGroupDetailFragment) {
            this.f12560a = deviceGroupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12560a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceGroupDetailFragment_ViewBinding$f */
    /* loaded from: classes2.dex */
    class C3393f extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceGroupDetailFragment f12561a;

        C3393f(DeviceGroupDetailFragment_ViewBinding deviceGroupDetailFragment_ViewBinding, DeviceGroupDetailFragment deviceGroupDetailFragment) {
            this.f12561a = deviceGroupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12561a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceGroupDetailFragment_ViewBinding$g */
    /* loaded from: classes2.dex */
    class C3394g extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceGroupDetailFragment f12562a;

        C3394g(DeviceGroupDetailFragment_ViewBinding deviceGroupDetailFragment_ViewBinding, DeviceGroupDetailFragment deviceGroupDetailFragment) {
            this.f12562a = deviceGroupDetailFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12562a.onClick(view);
        }
    }

    @UiThread
    public DeviceGroupDetailFragment_ViewBinding(DeviceGroupDetailFragment deviceGroupDetailFragment, View view) {
        this.f12548a = deviceGroupDetailFragment;
        deviceGroupDetailFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        deviceGroupDetailFragment.rvTopList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_top_list, "field 'rvTopList'", RecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.look_all_member, "field 'lookAllMember' and method 'onClick'");
        deviceGroupDetailFragment.lookAllMember = (TextView) Utils.castView(findRequiredView, R.id.look_all_member, "field 'lookAllMember'", TextView.class);
        this.f12549b = findRequiredView;
        findRequiredView.setOnClickListener(new C3388a(this, deviceGroupDetailFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_set_group_name, "field 'itemSetGroupName' and method 'onClick'");
        deviceGroupDetailFragment.itemSetGroupName = (ItemView) Utils.castView(findRequiredView2, R.id.item_set_group_name, "field 'itemSetGroupName'", ItemView.class);
        this.f12550c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C3389b(this, deviceGroupDetailFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_set_group_avatar, "field 'itemSetGroupAvatar' and method 'onClick'");
        deviceGroupDetailFragment.itemSetGroupAvatar = (ItemView) Utils.castView(findRequiredView3, R.id.item_set_group_avatar, "field 'itemSetGroupAvatar'", ItemView.class);
        this.f12551d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C3390c(this, deviceGroupDetailFragment));
        deviceGroupDetailFragment.itemGroupId = (ItemView) Utils.findRequiredViewAsType(view, R.id.item_group_id, "field 'itemGroupId'", ItemView.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.item_set_my_group_name_in, "field 'itemSetMyGroupNameIn' and method 'onClick'");
        deviceGroupDetailFragment.itemSetMyGroupNameIn = (ItemView) Utils.castView(findRequiredView4, R.id.item_set_my_group_name_in, "field 'itemSetMyGroupNameIn'", ItemView.class);
        this.f12552e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C3391d(this, deviceGroupDetailFragment));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.item_change_group_owner, "field 'itemChangeGroupOwner' and method 'onClick'");
        deviceGroupDetailFragment.itemChangeGroupOwner = (ItemView) Utils.castView(findRequiredView5, R.id.item_change_group_owner, "field 'itemChangeGroupOwner'", ItemView.class);
        this.f12553f = findRequiredView5;
        findRequiredView5.setOnClickListener(new C3392e(this, deviceGroupDetailFragment));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.btn_exit_group, "field 'btnExitGroup' and method 'onClick'");
        deviceGroupDetailFragment.btnExitGroup = (QMUIRoundButton) Utils.castView(findRequiredView6, R.id.btn_exit_group, "field 'btnExitGroup'", QMUIRoundButton.class);
        this.f12554g = findRequiredView6;
        findRequiredView6.setOnClickListener(new C3393f(this, deviceGroupDetailFragment));
        View findRequiredView7 = Utils.findRequiredView(view, R.id.item_group_qr, "method 'onClick'");
        this.f12555h = findRequiredView7;
        findRequiredView7.setOnClickListener(new C3394g(this, deviceGroupDetailFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DeviceGroupDetailFragment deviceGroupDetailFragment = this.f12548a;
        if (deviceGroupDetailFragment != null) {
            this.f12548a = null;
            deviceGroupDetailFragment.mTopbar = null;
            deviceGroupDetailFragment.rvTopList = null;
            deviceGroupDetailFragment.lookAllMember = null;
            deviceGroupDetailFragment.itemSetGroupName = null;
            deviceGroupDetailFragment.itemSetGroupAvatar = null;
            deviceGroupDetailFragment.itemGroupId = null;
            deviceGroupDetailFragment.itemSetMyGroupNameIn = null;
            deviceGroupDetailFragment.itemChangeGroupOwner = null;
            deviceGroupDetailFragment.btnExitGroup = null;
            this.f12549b.setOnClickListener(null);
            this.f12549b = null;
            this.f12550c.setOnClickListener(null);
            this.f12550c = null;
            this.f12551d.setOnClickListener(null);
            this.f12551d = null;
            this.f12552e.setOnClickListener(null);
            this.f12552e = null;
            this.f12553f.setOnClickListener(null);
            this.f12553f = null;
            this.f12554g.setOnClickListener(null);
            this.f12554g = null;
            this.f12555h.setOnClickListener(null);
            this.f12555h = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
