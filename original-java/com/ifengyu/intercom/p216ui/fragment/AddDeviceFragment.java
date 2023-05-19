package com.ifengyu.intercom.p216ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.fragment.Mi3GWAddGuideFragment;
import com.ifengyu.intercom.p216ui.activity.ConnectDeviceActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.AddDeviceFragment */
/* loaded from: classes2.dex */
public class AddDeviceFragment extends BaseFragment {
    @BindView(R.id.dolphin_layout_bottom_shadow)
    QMUILinearLayout dolphinBottomShadow;
    @BindView(R.id.lite_layout_bottom_shadow)
    QMUILinearLayout liteBottomShadow;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.mi3_layout_bottom_shadow)
    QMUILinearLayout mi3BottomShadow;
    @BindView(R.id.net_device_layout_bottom_shadow)
    QMUILinearLayout netDeviceBottomShadow;
    @BindView(R.id.seal_layout_bottom_shadow)
    QMUILinearLayout sealBottomShadow;
    @BindView(R.id.shark_layout_bottom_shadow)
    QMUILinearLayout sharkBottomShadow;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h3 */
    public /* synthetic */ void m10182i3(View view) {
        mo8048o2();
    }

    /* renamed from: j3 */
    public static AddDeviceFragment m10181j3() {
        Bundle bundle = new Bundle();
        AddDeviceFragment addDeviceFragment = new AddDeviceFragment();
        addDeviceFragment.setArguments(bundle);
        return addDeviceFragment;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_add_device, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m10184g3();
        return inflate;
    }

    /* renamed from: g3 */
    protected void m10184g3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.device_add);
        this.mTopbar.setBackgroundColor(UIUtils.m8614d(R.color.colorDefaultBg));
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddDeviceFragment.this.m10182i3(view);
            }
        });
        this.dolphinBottomShadow.setRadiusAndShadow(UIUtils.m8616b(16.0f), UIUtils.m8616b(5.0f), 0.15f);
        this.sealBottomShadow.setRadiusAndShadow(UIUtils.m8616b(16.0f), UIUtils.m8616b(5.0f), 0.15f);
        this.sharkBottomShadow.setRadiusAndShadow(UIUtils.m8616b(16.0f), UIUtils.m8616b(5.0f), 0.15f);
        this.liteBottomShadow.setRadiusAndShadow(UIUtils.m8616b(16.0f), UIUtils.m8616b(5.0f), 0.15f);
        this.netDeviceBottomShadow.setRadiusAndShadow(UIUtils.m8616b(16.0f), UIUtils.m8616b(5.0f), 0.15f);
        this.mi3BottomShadow.setRadiusAndShadow(UIUtils.m8616b(16.0f), UIUtils.m8616b(5.0f), 0.15f);
    }

    @OnClick({R.id.dolphin_layout_bottom_shadow, R.id.seal_layout_bottom_shadow, R.id.shark_layout_bottom_shadow, R.id.lite_layout_bottom_shadow, R.id.net_device_layout_bottom_shadow, R.id.mi3_layout_bottom_shadow})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.dolphin_layout_bottom_shadow /* 2131296641 */:
                ConnectDeviceActivity.m10594R0(getContext(), 1);
                return;
            case R.id.lite_layout_bottom_shadow /* 2131296918 */:
                ConnectDeviceActivity.m10594R0(getContext(), 9);
                return;
            case R.id.mi3_layout_bottom_shadow /* 2131297026 */:
                ConnectDeviceActivity.m10594R0(getContext(), 14);
                return;
            case R.id.net_device_layout_bottom_shadow /* 2131297073 */:
                m8041v2(Mi3GWAddGuideFragment.m13472l3());
                return;
            case R.id.seal_layout_bottom_shadow /* 2131297261 */:
                ConnectDeviceActivity.m10594R0(getContext(), 5);
                return;
            case R.id.shark_layout_bottom_shadow /* 2131297311 */:
                ConnectDeviceActivity.m10594R0(getContext(), 4);
                return;
            default:
                return;
        }
    }
}
