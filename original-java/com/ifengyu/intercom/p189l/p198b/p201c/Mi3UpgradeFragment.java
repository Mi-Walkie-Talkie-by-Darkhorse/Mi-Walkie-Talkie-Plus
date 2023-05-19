package com.ifengyu.intercom.p189l.p198b.p201c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.p026a.p027a.AppCompatResources;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.enums.UpgradeModeEnum;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.p188k.FragmentFirmwareUpgradeBinding;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3UpgradeViewModel;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUIFontFitTextView;

/* renamed from: com.ifengyu.intercom.l.b.c.w1 */
/* loaded from: classes2.dex */
public class Mi3UpgradeFragment extends BaseFragment {

    /* renamed from: D */
    private static final String f14229D = Mi3UpgradeFragment.class.getSimpleName();

    /* renamed from: A */
    private int f14230A;

    /* renamed from: B */
    private QMUIAlphaImageButton f14231B;

    /* renamed from: C */
    private Mi3UpgradeViewModel f14232C;

    /* renamed from: z */
    private FragmentFirmwareUpgradeBinding f14233z;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A3 */
    public void m11623A3(VersionInfo versionInfo) {
        if (versionInfo == null) {
            return;
        }
        if (versionInfo.isHasNewVersion()) {
            this.f14233z.f13956A.setText(UIUtils.m8602p(R.string.lite_upgrade_detail_detected_latest_version, versionInfo.getVersionName()));
            this.f14233z.f13957B.setText(UIUtils.m8602p(R.string.lite_upgrade_tip_current_version, this.f14232C.m11542j()));
            this.f14233z.f13958w.setText(R.string.lite_upgrade_btn_start_text);
            this.f14233z.f13959x.setImageResource(R.mipmap.upgrade_icon_start);
            if (versionInfo.getMode() == UpgradeModeEnum.FORCE.m14023a().intValue()) {
                m11603z3();
                return;
            }
            return;
        }
        this.f14233z.f13956A.setText((CharSequence) null);
        this.f14233z.f13957B.setText(UIUtils.m8602p(R.string.lite_upgrade_tip_is_latest_version, this.f14232C.m11542j()));
        this.f14233z.f13958w.setText(R.string.common_ok);
        this.f14233z.f13959x.setImageResource(R.mipmap.upgrade_icon_success);
    }

    /* renamed from: g3 */
    private void m11622g3() {
        if (getActivity() == null) {
            return;
        }
        this.f14231B = this.f14233z.f13961z.m7344h();
        Button m7339o = this.f14233z.f13961z.m7339o(R.string.lite_upgrade_change_log, QMUIViewHelper.m7473b());
        m7339o.setTextColor(AppCompatResources.m26123c(getActivity(), R.color.topbar_right_btn_color_state_list));
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3UpgradeFragment.this.m11618k3(view);
            }
        });
        this.f14231B.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.c1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3UpgradeFragment.this.m11616m3(view);
            }
        });
        this.f14233z.f13958w.setChangeAlphaWhenPress(false);
        this.f14233z.f13958w.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.d1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3UpgradeFragment.this.m11614o3(view);
            }
        });
        this.f14233z.f13960y.setShowText(false);
    }

    @SuppressLint({"FragmentLiveDataObserve"})
    /* renamed from: h3 */
    private void m11621h3() {
        Mi3UpgradeViewModel mi3UpgradeViewModel = (Mi3UpgradeViewModel) new ViewModelProvider(requireActivity()).m22691a(Mi3UpgradeViewModel.class);
        this.f14232C = mi3UpgradeViewModel;
        mi3UpgradeViewModel.m11539m().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.f1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3UpgradeFragment.this.m11623A3((VersionInfo) obj);
            }
        });
        this.f14232C.m11540l().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.b1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3UpgradeFragment.this.m11612q3((Integer) obj);
            }
        });
        this.f14232C.m11541k().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.i1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3UpgradeFragment.this.m11607v3(((Integer) obj).intValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m11618k3(View view) {
        VersionInfo value = this.f14232C.m11539m().getValue();
        if (value != null) {
            m11605x3(value.getInfo());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m11616m3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m11614o3(View view) {
        m11603z3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m11612q3(Integer num) {
        String str = f14229D;
        C4161y.m11054a(str, "on state changed: " + num);
        m11606w3(num.intValue());
    }

    /* renamed from: u3 */
    public static Mi3UpgradeFragment m11608u3() {
        Mi3UpgradeFragment mi3UpgradeFragment = new Mi3UpgradeFragment();
        mi3UpgradeFragment.setArguments(new Bundle());
        return mi3UpgradeFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v3 */
    public void m11607v3(int i) {
        this.f14233z.f13960y.setDonut_progress(String.valueOf(i));
    }

    /* renamed from: w3 */
    private void m11606w3(int i) {
        this.f14230A = i;
        VersionInfo value = this.f14232C.m11539m().getValue();
        if (i != 1) {
            if (i != 4) {
                if (i == 6) {
                    this.f14233z.f13958w.setVisibility(0);
                    this.f14233z.f13959x.setVisibility(0);
                    this.f14233z.f13960y.setShowText(false);
                    this.f14233z.f13960y.setVisibility(8);
                    this.f14233z.f13959x.setImageResource(R.mipmap.upgrade_icon_success);
                    QMUIFontFitTextView qMUIFontFitTextView = this.f14233z.f13956A;
                    Object[] objArr = new Object[1];
                    objArr[0] = value != null ? value.getVersionName() : "";
                    qMUIFontFitTextView.setText(UIUtils.m8602p(R.string.lite_upgrade_detail_success, objArr));
                    this.f14233z.f13957B.setText(R.string.lite_upgrade_tip_success);
                    this.f14233z.f13958w.setText(R.string.common_ok);
                    this.f14233z.f13958w.setVisibility(8);
                    this.f14231B.setVisibility(0);
                    return;
                } else if (i != 7) {
                    if (i != 8) {
                        return;
                    }
                    this.f14233z.f13958w.setVisibility(0);
                    this.f14233z.f13959x.setVisibility(0);
                    this.f14233z.f13960y.setShowText(false);
                    this.f14233z.f13960y.setVisibility(8);
                    this.f14233z.f13959x.setImageResource(R.mipmap.upgrade_icon_fail);
                    QMUIFontFitTextView qMUIFontFitTextView2 = this.f14233z.f13956A;
                    Object[] objArr2 = new Object[1];
                    objArr2[0] = value != null ? value.getVersionName() : "";
                    qMUIFontFitTextView2.setText(UIUtils.m8602p(R.string.lite_upgrade_detail_detected_latest_version, objArr2));
                    this.f14233z.f13957B.setText(R.string.lite_upgrade_tips_failed_low_power);
                    this.f14233z.f13958w.setText(R.string.common_ok);
                    this.f14231B.setVisibility(0);
                    m11607v3(0);
                    return;
                }
            }
            this.f14233z.f13958w.setVisibility(0);
            this.f14233z.f13959x.setVisibility(0);
            this.f14233z.f13960y.setShowText(false);
            this.f14233z.f13960y.setVisibility(8);
            this.f14233z.f13959x.setImageResource(R.mipmap.upgrade_icon_fail);
            QMUIFontFitTextView qMUIFontFitTextView3 = this.f14233z.f13956A;
            Object[] objArr3 = new Object[1];
            objArr3[0] = value != null ? value.getVersionName() : "";
            qMUIFontFitTextView3.setText(UIUtils.m8602p(R.string.lite_upgrade_detail_detected_latest_version, objArr3));
            this.f14233z.f13957B.setText(R.string.lite_upgrade_tips_failed);
            this.f14233z.f13958w.setText(R.string.common_retry);
            this.f14231B.setVisibility(0);
            m11607v3(0);
            return;
        }
        this.f14233z.f13960y.setShowText(true);
        this.f14233z.f13958w.setVisibility(8);
        this.f14233z.f13959x.setVisibility(8);
        this.f14233z.f13960y.setVisibility(0);
        QMUIFontFitTextView qMUIFontFitTextView4 = this.f14233z.f13956A;
        Object[] objArr4 = new Object[1];
        objArr4[0] = value != null ? value.getVersionName() : "";
        qMUIFontFitTextView4.setText(UIUtils.m8602p(R.string.lite_upgrade_detail_upgrading, objArr4));
        this.f14233z.f13957B.setText(R.string.lite_upgrade_tip_upgrading);
        this.f14231B.setVisibility(8);
    }

    /* renamed from: x3 */
    private void m11605x3(String str) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7282x(R.string.lite_upgrade_change_log_dialog_title);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7247F(str);
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, C4014g1.f14156a);
        messageDialogBuilder2.m7296f(R.style.DialogTheme3).show();
    }

    /* renamed from: y3 */
    private void m11604y3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.firmware_upgrading);
        messageDialogBuilder.m7300b(0, R.string.common_ok, 0, C4017h1.f14159a);
        messageDialogBuilder.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: z3 */
    private void m11603z3() {
        VersionInfo value = this.f14232C.m11539m().getValue();
        if (value != null && value.isHasNewVersion()) {
            int i = this.f14230A;
            if (i == 6 || i == 8) {
                mo8048o2();
                return;
            } else if (i != 5) {
                this.f14232C.m11551D();
                return;
            } else {
                return;
            }
        }
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: M1 */
    public boolean mo8074M1(Context context, int i, int i2) {
        int i3 = this.f14230A;
        if (i3 == 2 || i3 == 5) {
            return false;
        }
        return super.mo8074M1(context, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: d2 */
    public void mo8057d2() {
        int i = this.f14230A;
        if (i != 2 && i != 5) {
            super.mo8057d2();
        } else {
            m11604y3();
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        FragmentFirmwareUpgradeBinding fragmentFirmwareUpgradeBinding = (FragmentFirmwareUpgradeBinding) DataBindingUtil.m22966e(getLayoutInflater(), R.layout.fragment_firmware_upgrade, null, false);
        this.f14233z = fragmentFirmwareUpgradeBinding;
        fragmentFirmwareUpgradeBinding.m23011A(getActivity());
        m11621h3();
        m11622g3();
        return this.f14233z.mo23006a();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }
}
