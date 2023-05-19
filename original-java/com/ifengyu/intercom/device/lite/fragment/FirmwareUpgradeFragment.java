package com.ifengyu.intercom.device.lite.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.dto.UpgradeInfoDTO;
import com.ifengyu.intercom.device.lite.enums.UpgradeModeEnum;
import com.ifengyu.intercom.device.lite.event.LiteEvent;
import com.ifengyu.intercom.device.lite.p160d.LiteUpgradeViewModel;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.view.DonutProgress;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUIFontFitTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class FirmwareUpgradeFragment extends BaseFragment {

    /* renamed from: C */
    public static boolean f12269C = false;

    /* renamed from: A */
    private QMUIAlphaImageButton f12270A;

    /* renamed from: B */
    private LiteUpgradeViewModel f12271B;
    @BindView(R.id.btn_action)
    QMUIRoundButton mBtnAction;
    @BindView(R.id.iv_state_view)
    AppCompatImageView mIvStateView;
    @BindView(R.id.progressbar)
    DonutProgress mProgressbar;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.tv_detail)
    QMUIFontFitTextView mTvDetail;
    @BindView(R.id.tv_tip)
    TextView mTvTip;
    @BindView(R.id.tv_title)
    TextView mTvTitle;

    /* renamed from: z */
    private int f12272z = 1;

    /* renamed from: A3 */
    private void m14002A3(String str) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7282x(R.string.lite_upgrade_change_log_dialog_title);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7247F(str);
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, C3289i.f12367a);
        messageDialogBuilder2.m7296f(R.style.DialogTheme3).show();
    }

    /* renamed from: B3 */
    private void m14001B3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.firmware_upgrading);
        messageDialogBuilder.m7300b(0, R.string.common_ok, 0, C3304p.f12386a);
        messageDialogBuilder.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: C3 */
    private void m14000C3() {
        if (!f12269C) {
            mo8048o2();
            return;
        }
        int i = this.f12272z;
        if (i == 3 || i == 5) {
            mo8048o2();
        } else if (i != 2) {
            this.f12271B.m14130L();
        }
    }

    /* renamed from: D3 */
    private void m13999D3(UpgradeInfoDTO upgradeInfoDTO) {
        if (upgradeInfoDTO == null) {
            return;
        }
        if (upgradeInfoDTO.m14090h()) {
            this.mTvDetail.setText(UIUtils.m8602p(R.string.lite_upgrade_detail_detected_latest_version, upgradeInfoDTO.m14091g()));
            this.mTvTip.setText(UIUtils.m8602p(R.string.lite_upgrade_tip_current_version, upgradeInfoDTO.m14095c()));
            this.mBtnAction.setText(R.string.lite_upgrade_btn_start_text);
            this.mIvStateView.setImageResource(R.mipmap.upgrade_icon_start);
            if (upgradeInfoDTO.m14093e() == UpgradeModeEnum.FORCE.m14023a().intValue()) {
                m14000C3();
                return;
            }
            return;
        }
        this.mTvDetail.setText((CharSequence) null);
        this.mTvTip.setText(UIUtils.m8602p(R.string.lite_upgrade_tip_is_latest_version, upgradeInfoDTO.m14095c()));
        this.mBtnAction.setText(R.string.common_ok);
        this.mIvStateView.setImageResource(R.mipmap.upgrade_icon_success);
    }

    /* renamed from: g3 */
    private void m13998g3() {
        UpgradeInfoDTO upgradeInfoDTO;
        Bundle arguments = getArguments();
        if (arguments == null || (upgradeInfoDTO = (UpgradeInfoDTO) arguments.getParcelable("arg_firmware_info")) == null) {
            return;
        }
        f12269C = upgradeInfoDTO.m14090h();
        m13999D3(upgradeInfoDTO);
    }

    /* renamed from: h3 */
    private void m13997h3() {
        this.f12270A = this.mTopBar.m7344h();
        Button m7339o = this.mTopBar.m7339o(R.string.lite_upgrade_change_log, QMUIViewHelper.m7473b());
        m7339o.setTextColor(getResources().getColorStateList(R.color.topbar_right_btn_color_state_list));
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.fragment.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirmwareUpgradeFragment.this.m13993l3(view);
            }
        });
        this.f12270A.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.fragment.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirmwareUpgradeFragment.this.m13991n3(view);
            }
        });
    }

    /* renamed from: i3 */
    private void m13996i3() {
        this.mBtnAction.setChangeAlphaWhenPress(false);
        this.mBtnAction.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.fragment.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirmwareUpgradeFragment.this.m13989p3(view);
            }
        });
        this.mProgressbar.setShowText(false);
    }

    /* renamed from: j3 */
    private void m13995j3() {
        LiteUpgradeViewModel liteUpgradeViewModel = (LiteUpgradeViewModel) ViewModelProviders.m22685a(this).m22691a(LiteUpgradeViewModel.class);
        this.f12271B = liteUpgradeViewModel;
        liteUpgradeViewModel.m14117i().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                FirmwareUpgradeFragment.this.m13987r3((Integer) obj);
            }
        });
        this.f12271B.m14118h().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.o
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                FirmwareUpgradeFragment.this.m13980y3(((Integer) obj).intValue());
            }
        });
        this.f12271B.m14116j().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.n
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                FirmwareUpgradeFragment.this.m13985t3((UpgradeInfoDTO) obj);
            }
        });
        this.f12271B.m14119g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k3 */
    public /* synthetic */ void m13993l3(View view) {
        UpgradeInfoDTO value = this.f12271B.m14116j().getValue();
        if (value != null) {
            m14002A3(value.m14097a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m13991n3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m13989p3(View view) {
        m14000C3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m13987r3(Integer num) {
        C4161y.m11054a("FirmwareUpgradeFragment", "on state changed: " + this.f12271B.m14129M(num.intValue()));
        m13979z3(num.intValue());
        if (num.intValue() == 3) {
            RxBus.m11806d().m11805e(LiteEvent.UPGRADE_SUCCESS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m13985t3(UpgradeInfoDTO upgradeInfoDTO) {
        f12269C = upgradeInfoDTO.m14090h();
        m13999D3(upgradeInfoDTO);
    }

    /* renamed from: x3 */
    public static FirmwareUpgradeFragment m13981x3(UpgradeInfoDTO upgradeInfoDTO) {
        FirmwareUpgradeFragment firmwareUpgradeFragment = new FirmwareUpgradeFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("arg_firmware_info", upgradeInfoDTO);
        firmwareUpgradeFragment.setArguments(bundle);
        return firmwareUpgradeFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y3 */
    public void m13980y3(int i) {
        this.mProgressbar.setDonut_progress(String.valueOf(i));
    }

    /* renamed from: z3 */
    private void m13979z3(int i) {
        this.f12272z = i;
        UpgradeInfoDTO value = this.f12271B.m14116j().getValue();
        if (i == 1) {
            this.mProgressbar.setShowText(true);
            this.mBtnAction.setVisibility(8);
            this.mIvStateView.setVisibility(8);
            this.mProgressbar.setVisibility(0);
            QMUIFontFitTextView qMUIFontFitTextView = this.mTvDetail;
            Object[] objArr = new Object[1];
            objArr[0] = value != null ? value.m14091g() : "";
            qMUIFontFitTextView.setText(UIUtils.m8602p(R.string.lite_upgrade_detail_upgrading, objArr));
            this.mTvTip.setText(R.string.lite_upgrade_tip_upgrading);
            this.f12270A.setVisibility(8);
        } else if (i == 3) {
            this.mBtnAction.setVisibility(0);
            this.mIvStateView.setVisibility(0);
            this.mProgressbar.setShowText(false);
            this.mProgressbar.setVisibility(8);
            this.mIvStateView.setImageResource(R.mipmap.upgrade_icon_success);
            QMUIFontFitTextView qMUIFontFitTextView2 = this.mTvDetail;
            Object[] objArr2 = new Object[1];
            objArr2[0] = value != null ? value.m14091g() : "";
            qMUIFontFitTextView2.setText(UIUtils.m8602p(R.string.lite_upgrade_detail_success, objArr2));
            this.mTvTip.setText(R.string.lite_upgrade_tip_success);
            this.mBtnAction.setText(R.string.common_ok);
            this.f12270A.setVisibility(0);
        } else if (i == 4) {
            this.mBtnAction.setVisibility(0);
            this.mIvStateView.setVisibility(0);
            this.mProgressbar.setShowText(false);
            this.mProgressbar.setVisibility(8);
            this.mIvStateView.setImageResource(R.mipmap.upgrade_icon_fail);
            QMUIFontFitTextView qMUIFontFitTextView3 = this.mTvDetail;
            Object[] objArr3 = new Object[1];
            objArr3[0] = value != null ? value.m14091g() : "";
            qMUIFontFitTextView3.setText(UIUtils.m8602p(R.string.lite_upgrade_detail_detected_latest_version, objArr3));
            this.mTvTip.setText(R.string.lite_upgrade_tips_failed);
            this.mBtnAction.setText(R.string.common_retry);
            this.f12270A.setVisibility(0);
            m13980y3(0);
        } else if (i != 5) {
        } else {
            this.mBtnAction.setVisibility(0);
            this.mIvStateView.setVisibility(0);
            this.mProgressbar.setShowText(false);
            this.mProgressbar.setVisibility(8);
            this.mIvStateView.setImageResource(R.mipmap.upgrade_icon_fail);
            QMUIFontFitTextView qMUIFontFitTextView4 = this.mTvDetail;
            Object[] objArr4 = new Object[1];
            objArr4[0] = value != null ? value.m14091g() : "";
            qMUIFontFitTextView4.setText(UIUtils.m8602p(R.string.lite_upgrade_detail_detected_latest_version, objArr4));
            this.mTvTip.setText(R.string.lite_upgrade_tips_failed_low_power);
            this.mBtnAction.setText(R.string.common_ok);
            this.f12270A.setVisibility(0);
            m13980y3(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: M1 */
    public boolean mo8074M1(Context context, int i, int i2) {
        if (this.f12272z == 2) {
            return false;
        }
        return super.mo8074M1(context, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: d2 */
    public void mo8057d2() {
        if (this.f12272z == 2) {
            m14001B3();
        } else {
            super.mo8057d2();
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_firmware_upgrade, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13997h3();
        m13998g3();
        m13996i3();
        m13995j3();
        return inflate;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }
}
