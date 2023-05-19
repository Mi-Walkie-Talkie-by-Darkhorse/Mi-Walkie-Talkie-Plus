package com.ifengyu.intercom.device.mi3gw.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class Mi3GWAddGuideFragment extends BaseFragment {
    @BindView(R.id.btn_goto_connect)
    QMUIRoundButton btnGotoConnect;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h3 */
    public /* synthetic */ void m13475i3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m13473k3(View view) {
        m10316T2("android.permission.CAMERA");
    }

    /* renamed from: l3 */
    public static Mi3GWAddGuideFragment m13472l3() {
        Bundle bundle = new Bundle();
        Mi3GWAddGuideFragment mi3GWAddGuideFragment = new Mi3GWAddGuideFragment();
        mi3GWAddGuideFragment.setArguments(bundle);
        return mi3GWAddGuideFragment;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: O2 */
    protected void mo9611O2() {
        m8041v2(AddDeviceQrScanFragment.m13433X3());
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_mi3_gw_add_guide, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13477g3();
        return inflate;
    }

    /* renamed from: g3 */
    protected void m13477g3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.w1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3GWAddGuideFragment.this.m13475i3(view);
            }
        });
        this.btnGotoConnect.setChangeAlphaWhenPress(true);
        this.btnGotoConnect.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.v1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3GWAddGuideFragment.this.m13473k3(view);
            }
        });
    }
}
