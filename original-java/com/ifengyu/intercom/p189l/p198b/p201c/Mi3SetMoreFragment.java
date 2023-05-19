package com.ifengyu.intercom.p189l.p198b.p201c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p188k.FragmentFirmwareSetBinding;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3UpgradeViewModel;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;

/* renamed from: com.ifengyu.intercom.l.b.c.t1 */
/* loaded from: classes2.dex */
public class Mi3SetMoreFragment extends BaseFragment {

    /* renamed from: A */
    private Mi3ViewModel f14199A;

    /* renamed from: B */
    private Mi3UpgradeViewModel f14200B;

    /* renamed from: C */
    private String f14201C;

    /* renamed from: z */
    private FragmentFirmwareSetBinding f14202z;

    /* renamed from: g3 */
    private void m11729g3() {
        if (getActivity() == null) {
            return;
        }
        this.f14202z.f13951z.setBackgroundColor(getResources().getColor(R.color.white));
        this.f14202z.f13951z.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3SetMoreFragment.this.m11726j3(view);
            }
        });
        this.f14202z.f13951z.m7338p(R.string.setting);
        UIUtils.m8595w(AppConstants.f13911e, this.f14202z.f13949x);
        this.f14202z.f13948w.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3SetMoreFragment.this.m11724l3(view);
            }
        });
        this.f14202z.f13950y.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3SetMoreFragment.this.m11722n3(view);
            }
        });
        this.f14202z.f13949x.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3SetMoreFragment.this.m11720p3(view);
            }
        });
    }

    @SuppressLint({"FragmentLiveDataObserve"})
    /* renamed from: h3 */
    private void m11728h3() {
        Mi3ViewModel mi3ViewModel = (Mi3ViewModel) new ViewModelProvider(requireActivity()).m22691a(Mi3ViewModel.class);
        this.f14199A = mi3ViewModel;
        mi3ViewModel.m11483i0(this.f14201C);
        Mi3UpgradeViewModel mi3UpgradeViewModel = (Mi3UpgradeViewModel) new ViewModelProvider(requireActivity()).m22691a(Mi3UpgradeViewModel.class);
        this.f14200B = mi3UpgradeViewModel;
        mi3UpgradeViewModel.m11552C(this.f14201C);
        this.f14200B.m11539m().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.r
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3SetMoreFragment.this.m11718r3((VersionInfo) obj);
            }
        });
        this.f14200B.m11540l().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.p
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3SetMoreFragment.this.m11716t3((Integer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i3 */
    public /* synthetic */ void m11726j3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k3 */
    public /* synthetic */ void m11724l3(View view) {
        DeviceModel value = this.f14199A.m11462v().getValue();
        if (value != null) {
            UserProtocolActivity.m10422R(getActivity(), String.valueOf(value.getDeviceId()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m11722n3(View view) {
        m8041v2(Mi3UpgradeFragment.m11608u3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m11720p3(View view) {
        m11711y3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m11718r3(VersionInfo versionInfo) {
        if (versionInfo != null) {
            this.f14202z.f13950y.m8578c(versionInfo.isHasNewVersion());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m11716t3(Integer num) {
        if (num.intValue() == 6) {
            this.f14202z.f13950y.m8578c(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v3 */
    public /* synthetic */ void m11713w3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        BleCoreClient.m12373n().m12384c(this.f14201C);
        MainActivity.start(getContext());
    }

    /* renamed from: x3 */
    public static Mi3SetMoreFragment m11712x3(String str) {
        Mi3SetMoreFragment mi3SetMoreFragment = new Mi3SetMoreFragment();
        Bundle bundle = new Bundle();
        bundle.putString("device_mac_address", str);
        mi3SetMoreFragment.setArguments(bundle);
        return mi3SetMoreFragment;
    }

    /* renamed from: y3 */
    private void m11711y3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.setting_confirm_un_bind_current_device);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4041s.f14193a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.b.c.w
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                Mi3SetMoreFragment.this.m11713w3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f14201C = bundle.getString("device_mac_address");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: M1 */
    public boolean mo8074M1(Context context, int i, int i2) {
        return super.mo8074M1(context, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: d2 */
    public void mo8057d2() {
        super.mo8057d2();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        FragmentFirmwareSetBinding fragmentFirmwareSetBinding = (FragmentFirmwareSetBinding) DataBindingUtil.m22966e(getLayoutInflater(), R.layout.fragment_firmware_set, null, false);
        this.f14202z = fragmentFirmwareSetBinding;
        fragmentFirmwareSetBinding.m23011A(getActivity());
        m11728h3();
        m11729g3();
        return this.f14202z.mo23006a();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }
}
