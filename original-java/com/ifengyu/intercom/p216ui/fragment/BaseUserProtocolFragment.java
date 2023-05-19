package com.ifengyu.intercom.p216ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.ViewModelProvider;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p189l.p190a.p192b.p195c.ConfigFileViewModel;
import com.ifengyu.intercom.p205m.p207b.RevokeUserProtocolDialogBuilder;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.ui.fragment.BaseUserProtocolFragment */
/* loaded from: classes2.dex */
public abstract class BaseUserProtocolFragment extends BaseFragment {

    /* renamed from: A */
    protected long f15145A;
    @BindView(R.id.btn_quit_user_protocol)
    QMUIRoundButton btnQuitUserProtocol;
    @BindView(R.id.itemPrivacyPolicy)
    ItemView itemPrivacyPolicy;
    @BindView(R.id.itemUserAgreement)
    ItemView itemUserAgreement;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;

    /* renamed from: z */
    protected String f15146z;

    /* renamed from: i3 */
    private void m10147i3() {
        this.mTopBar.setBottomDividerAlpha(0);
        this.mTopBar.m7338p(R.string.user_protocol_and_privacy_agreement);
        this.mTopBar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseUserProtocolFragment.this.m10145k3(view);
            }
        });
        this.btnQuitUserProtocol.setVisibility(0);
        this.btnQuitUserProtocol.setChangeAlphaWhenPress(true);
        this.btnQuitUserProtocol.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseUserProtocolFragment.this.m10143m3(view);
            }
        });
        this.itemUserAgreement.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseUserProtocolFragment.this.m10141o3(view);
            }
        });
        this.itemPrivacyPolicy.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseUserProtocolFragment.this.m10139q3(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m10145k3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m10143m3(View view) {
        m10134y3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m10141o3(View view) {
        mo9845w3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m10139q3(View view) {
        mo9844x3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m10136t3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        mo9846u3();
    }

    /* renamed from: y3 */
    private void m10134y3() {
        RevokeUserProtocolDialogBuilder revokeUserProtocolDialogBuilder = new RevokeUserProtocolDialogBuilder(getContext());
        revokeUserProtocolDialogBuilder.m7248E(mo9847h3());
        revokeUserProtocolDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4637y.f15384a);
        RevokeUserProtocolDialogBuilder revokeUserProtocolDialogBuilder2 = revokeUserProtocolDialogBuilder;
        revokeUserProtocolDialogBuilder2.m7300b(0, R.string.revoke_action, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.w
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                BaseUserProtocolFragment.this.m10136t3(qMUIDialog, i);
            }
        });
        revokeUserProtocolDialogBuilder2.m7296f(R.style.DialogTheme3).show();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15146z = bundle.getString("key_device_sn");
            this.f15145A = bundle.getLong("key_device_uid");
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_user_protocol, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m10147i3();
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g3 */
    public void m10148g3() {
        BleCoreClient.m12373n().m12383d(this.f15146z);
    }

    /* renamed from: h3 */
    protected abstract int mo9847h3();

    /* renamed from: u3 */
    protected abstract void mo9846u3();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: v3 */
    public void m10135v3() {
        ((ConfigFileViewModel) new ViewModelProvider(this).m22691a(ConfigFileViewModel.class)).m11846d();
    }

    /* renamed from: w3 */
    protected abstract void mo9845w3();

    /* renamed from: x3 */
    protected abstract void mo9844x3();
}
