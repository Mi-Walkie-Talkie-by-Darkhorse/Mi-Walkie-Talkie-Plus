package com.ifengyu.intercom.lite.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.lifecycle.q;
import androidx.lifecycle.x;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.base.e;
import com.ifengyu.intercom.lite.dto.UpgradeInfoDTO;
import com.ifengyu.intercom.lite.enums.UpgradeModeEnum;
import com.ifengyu.intercom.lite.event.LiteEvent;
import com.ifengyu.intercom.lite.g.t;
import com.ifengyu.intercom.lite.utils.j;
import com.ifengyu.library.a.m;
import com.ifengyu.library.widget.view.DonutProgress;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.util.l;
import com.qmuiteam.qmui.widget.QMUIFontFitTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class FirmwareUpgradeFragment extends e {
    public static boolean C = false;
    private QMUIAlphaImageButton A;
    private t B;
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
    private int z = 1;

    private void A() {
        UpgradeInfoDTO upgradeInfoDTO;
        Bundle arguments = getArguments();
        if (arguments != null && (upgradeInfoDTO = (UpgradeInfoDTO) arguments.getParcelable("arg_firmware_info")) != null) {
            C = upgradeInfoDTO.h();
            c(upgradeInfoDTO);
        }
    }

    private void B() {
        this.A = this.mTopBar.a();
        Button c2 = this.mTopBar.c(R.string.lite_upgrade_change_log, l.a());
        c2.setTextColor(getResources().getColorStateList(R.color.topbar_right_btn_color_state_list));
        c2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirmwareUpgradeFragment.this.b(view);
            }
        });
        this.A.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirmwareUpgradeFragment.this.c(view);
            }
        });
    }

    private void C() {
        this.mBtnAction.setChangeAlphaWhenPress(false);
        this.mBtnAction.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirmwareUpgradeFragment.this.d(view);
            }
        });
        this.mProgressbar.setShowText(false);
    }

    private void D() {
        t tVar = (t) x.a(this).a(t.class);
        this.B = tVar;
        tVar.d().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.i0
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                FirmwareUpgradeFragment.this.a((Integer) obj);
            }
        });
        this.B.c().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.h0
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                FirmwareUpgradeFragment.this.c(((Integer) obj).intValue());
            }
        });
        this.B.e().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.f0
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                FirmwareUpgradeFragment.this.a((UpgradeInfoDTO) obj);
            }
        });
        this.B.b();
    }

    private void E() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.d(R.string.firmware_upgrading);
        eVar.a(0, R.string.common_ok, 0, g0.f5513a);
        eVar.a(R.style.DialogTheme2).show();
    }

    private void F() {
        if (!C) {
            t();
            return;
        }
        int i = this.z;
        if (i == 3 || i == 5) {
            t();
        } else if (i != 2) {
            this.B.f();
        }
    }

    public static FirmwareUpgradeFragment b(UpgradeInfoDTO upgradeInfoDTO) {
        FirmwareUpgradeFragment firmwareUpgradeFragment = new FirmwareUpgradeFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("arg_firmware_info", upgradeInfoDTO);
        firmwareUpgradeFragment.setArguments(bundle);
        return firmwareUpgradeFragment;
    }

    public /* synthetic */ void a(Integer num) {
        z.a("FirmwareUpgradeFragment", "on state changed: " + this.B.b(num.intValue()));
        d(num.intValue());
        if (num.intValue() == 3) {
            j.a().a(LiteEvent.UPGRADE_SUCCESS);
        }
    }

    public /* synthetic */ void c(View view) {
        o();
    }

    public /* synthetic */ void d(View view) {
        F();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.b
    public void o() {
        if (this.z == 2) {
            E();
        } else {
            super.o();
        }
    }

    @Override // com.qmuiteam.qmui.arch.b, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_firmware_upgrade, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        B();
        A();
        C();
        D();
        return inflate;
    }

    private void c(UpgradeInfoDTO upgradeInfoDTO) {
        if (upgradeInfoDTO != null) {
            if (upgradeInfoDTO.h()) {
                this.mTvDetail.setText(m.a((int) R.string.lite_upgrade_detail_detected_latest_version, upgradeInfoDTO.g()));
                this.mTvTip.setText(m.a((int) R.string.lite_upgrade_tip_current_version, upgradeInfoDTO.c()));
                this.mBtnAction.setText(R.string.lite_upgrade_btn_start_text);
                this.mIvStateView.setImageResource(R.mipmap.upgrade_icon_start);
                if (upgradeInfoDTO.e() == UpgradeModeEnum.FORCE.a().intValue()) {
                    F();
                    return;
                }
                return;
            }
            this.mTvDetail.setText((CharSequence) null);
            this.mTvTip.setText(m.a((int) R.string.lite_upgrade_tip_is_latest_version, upgradeInfoDTO.c()));
            this.mBtnAction.setText(R.string.common_ok);
            this.mIvStateView.setImageResource(R.mipmap.upgrade_icon_success);
        }
    }

    private void d(int i) {
        this.z = i;
        UpgradeInfoDTO value = this.B.e().getValue();
        String str = "";
        if (i == 1) {
            this.mProgressbar.setShowText(true);
            this.mBtnAction.setVisibility(8);
            this.mIvStateView.setVisibility(8);
            this.mProgressbar.setVisibility(0);
            QMUIFontFitTextView qMUIFontFitTextView = this.mTvDetail;
            Object[] objArr = new Object[1];
            if (value != null) {
                str = value.g();
            }
            objArr[0] = str;
            qMUIFontFitTextView.setText(m.a((int) R.string.lite_upgrade_detail_upgrading, objArr));
            this.mTvTip.setText(R.string.lite_upgrade_tip_upgrading);
            this.A.setVisibility(8);
        } else if (i == 3) {
            this.mBtnAction.setVisibility(0);
            this.mIvStateView.setVisibility(0);
            this.mProgressbar.setShowText(false);
            this.mProgressbar.setVisibility(8);
            this.mIvStateView.setImageResource(R.mipmap.upgrade_icon_success);
            QMUIFontFitTextView qMUIFontFitTextView2 = this.mTvDetail;
            Object[] objArr2 = new Object[1];
            if (value != null) {
                str = value.g();
            }
            objArr2[0] = str;
            qMUIFontFitTextView2.setText(m.a((int) R.string.lite_upgrade_detail_success, objArr2));
            this.mTvTip.setText(R.string.lite_upgrade_tip_success);
            this.mBtnAction.setText(R.string.common_ok);
            this.A.setVisibility(0);
        } else if (i == 4) {
            this.mBtnAction.setVisibility(0);
            this.mIvStateView.setVisibility(0);
            this.mProgressbar.setShowText(false);
            this.mProgressbar.setVisibility(8);
            this.mIvStateView.setImageResource(R.mipmap.upgrade_icon_fail);
            QMUIFontFitTextView qMUIFontFitTextView3 = this.mTvDetail;
            Object[] objArr3 = new Object[1];
            if (value != null) {
                str = value.g();
            }
            objArr3[0] = str;
            qMUIFontFitTextView3.setText(m.a((int) R.string.lite_upgrade_detail_detected_latest_version, objArr3));
            this.mTvTip.setText(R.string.lite_upgrade_tips_failed);
            this.mBtnAction.setText(R.string.common_retry);
            this.A.setVisibility(0);
            c(0);
        } else if (i == 5) {
            this.mBtnAction.setVisibility(0);
            this.mIvStateView.setVisibility(0);
            this.mProgressbar.setShowText(false);
            this.mProgressbar.setVisibility(8);
            this.mIvStateView.setImageResource(R.mipmap.upgrade_icon_fail);
            QMUIFontFitTextView qMUIFontFitTextView4 = this.mTvDetail;
            Object[] objArr4 = new Object[1];
            if (value != null) {
                str = value.g();
            }
            objArr4[0] = str;
            qMUIFontFitTextView4.setText(m.a((int) R.string.lite_upgrade_detail_detected_latest_version, objArr4));
            this.mTvTip.setText(R.string.lite_upgrade_tips_failed_low_power);
            this.mBtnAction.setText(R.string.common_ok);
            this.A.setVisibility(0);
            c(0);
        }
    }

    public /* synthetic */ void a(UpgradeInfoDTO upgradeInfoDTO) {
        C = upgradeInfoDTO.h();
        c(upgradeInfoDTO);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.base.e, com.qmuiteam.qmui.arch.b
    public boolean b(Context context, int i, int i2) {
        if (this.z == 2) {
            return false;
        }
        return super.b(context, i, i2);
    }

    public /* synthetic */ void b(View view) {
        UpgradeInfoDTO value = this.B.e().getValue();
        if (value != null) {
            b(value.a());
        }
    }

    private void b(String str) {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.c(R.string.lite_upgrade_change_log_dialog_title);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a((CharSequence) str);
        eVar2.a(0, R.string.common_ok, 0, e0.f5507a);
        eVar2.a(R.style.DialogTheme4).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i) {
        this.mProgressbar.setDonut_progress(String.valueOf(i));
    }
}
