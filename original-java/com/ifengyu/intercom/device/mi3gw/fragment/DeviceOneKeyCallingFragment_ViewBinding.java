package com.ifengyu.intercom.device.mi3gw.fragment;

import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class DeviceOneKeyCallingFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DeviceOneKeyCallingFragment f12595a;

    /* renamed from: b */
    private View f12596b;

    /* renamed from: c */
    private View f12597c;

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceOneKeyCallingFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C3401a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceOneKeyCallingFragment f12598a;

        C3401a(DeviceOneKeyCallingFragment_ViewBinding deviceOneKeyCallingFragment_ViewBinding, DeviceOneKeyCallingFragment deviceOneKeyCallingFragment) {
            this.f12598a = deviceOneKeyCallingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12598a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceOneKeyCallingFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C3402b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ DeviceOneKeyCallingFragment f12599a;

        C3402b(DeviceOneKeyCallingFragment_ViewBinding deviceOneKeyCallingFragment_ViewBinding, DeviceOneKeyCallingFragment deviceOneKeyCallingFragment) {
            this.f12599a = deviceOneKeyCallingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12599a.onViewClicked(view);
        }
    }

    @UiThread
    public DeviceOneKeyCallingFragment_ViewBinding(DeviceOneKeyCallingFragment deviceOneKeyCallingFragment, View view) {
        this.f12595a = deviceOneKeyCallingFragment;
        deviceOneKeyCallingFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        deviceOneKeyCallingFragment.not_set_contact_layout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.not_set_contact_layout, "field 'not_set_contact_layout'", LinearLayout.class);
        deviceOneKeyCallingFragment.et_input_id = (EditText) Utils.findRequiredViewAsType(view, R.id.et_input_id, "field 'et_input_id'", EditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.btn_set_contact, "field 'btn_set_contact' and method 'onViewClicked'");
        deviceOneKeyCallingFragment.btn_set_contact = (QMUIRoundButton) Utils.castView(findRequiredView, R.id.btn_set_contact, "field 'btn_set_contact'", QMUIRoundButton.class);
        this.f12596b = findRequiredView;
        findRequiredView.setOnClickListener(new C3401a(this, deviceOneKeyCallingFragment));
        deviceOneKeyCallingFragment.had_set_contact_layout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.had_set_contact_layout, "field 'had_set_contact_layout'", LinearLayout.class);
        deviceOneKeyCallingFragment.tv_contact_id = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_contact_id, "field 'tv_contact_id'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.btn_remove_contact, "field 'btn_remove_contact' and method 'onViewClicked'");
        deviceOneKeyCallingFragment.btn_remove_contact = (QMUIRoundButton) Utils.castView(findRequiredView2, R.id.btn_remove_contact, "field 'btn_remove_contact'", QMUIRoundButton.class);
        this.f12597c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C3402b(this, deviceOneKeyCallingFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DeviceOneKeyCallingFragment deviceOneKeyCallingFragment = this.f12595a;
        if (deviceOneKeyCallingFragment != null) {
            this.f12595a = null;
            deviceOneKeyCallingFragment.mTopbar = null;
            deviceOneKeyCallingFragment.not_set_contact_layout = null;
            deviceOneKeyCallingFragment.et_input_id = null;
            deviceOneKeyCallingFragment.btn_set_contact = null;
            deviceOneKeyCallingFragment.had_set_contact_layout = null;
            deviceOneKeyCallingFragment.tv_contact_id = null;
            deviceOneKeyCallingFragment.btn_remove_contact = null;
            this.f12596b.setOnClickListener(null);
            this.f12596b = null;
            this.f12597c.setOnClickListener(null);
            this.f12597c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
