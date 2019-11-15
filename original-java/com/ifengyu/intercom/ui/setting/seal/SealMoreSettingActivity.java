package com.ifengyu.intercom.ui.setting.seal;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.eventbus.a;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.ui.widget.dialog.q.b;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class SealMoreSettingActivity extends BaseActivity {
    /* access modifiers changed from: private */
    public Runnable a;
    /* access modifiers changed from: private */
    public int b = -1;
    @BindView(2131755342)
    LinearLayout noiseLevel;
    @BindView(2131755343)
    TextView noiseLevelValue;
    @BindView(2131755338)
    LinearLayout pwSaveMode;
    @BindView(2131755339)
    CheckBox pwSaveModeCheckBox;
    @BindView(2131755340)
    LinearLayout stopTransIfBusy;
    @BindView(2131755341)
    CheckBox stopTransIfBusyCheckBox;
    @BindView(2131755203)
    ImageView titleBarLeft;
    @BindView(2131755588)
    TextView titleBarTitle;
    @BindView(2131755333)
    LinearLayout voicePrompt;
    @BindView(2131755334)
    CheckBox voicePromptCheckBox;
    @BindView(2131755336)
    LinearLayout voiceType;
    @BindView(2131755335)
    LinearLayout voiceTypeParentLayout;
    @BindView(2131755337)
    TextView voiceTypeValue;
    @BindView(2131755344)
    LinearLayout wideNarrowBand;
    @BindView(2131755345)
    TextView wideNarrowBandValue;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_seal_more_setting);
        ButterKnife.bind((Activity) this);
        c();
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        a.a().a((Object) this);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        a.a().b((Object) this);
    }

    @OnClick({2131755203, 2131755338, 2131755333, 2131755340, 2131755336, 2131755342, 2131755344})
    public void onClick(View view) {
        boolean z = true;
        int i = 0;
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.voice_prompt /*2131755333*/:
                if (k.a().b()) {
                    a(false, true, getString(R.string.please_wait), (int) R.drawable.load_spinner);
                    if (this.a != null) {
                        MiTalkiApp.n().removeCallbacks(this.a);
                    }
                    this.a = new Runnable() {
                        public void run() {
                            SealMoreSettingActivity.this.b = -1;
                            SealMoreSettingActivity.this.k();
                        }
                    };
                    MiTalkiApp.n().postDelayed(this.a, 5000);
                    this.b = 0;
                    if (this.voicePromptCheckBox.isChecked()) {
                        z = false;
                    }
                    aa.b(z);
                    return;
                }
                v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.voice_type /*2131755336*/:
                if (k.a().b()) {
                    String[] strArr = {getString(R.string.common_off), "中文", "English", getString(R.string.common_cancel)};
                    q qVar = new q(this);
                    qVar.a(true);
                    qVar.b((int) R.string.voice_broadcast).a(strArr, new b() {
                        public void a(DialogInterface dialogInterface, int i) {
                            switch (i) {
                                case 0:
                                case 1:
                                case 2:
                                    SealMoreSettingActivity.this.a(false, true, SealMoreSettingActivity.this.getString(R.string.please_wait), (int) R.drawable.load_spinner);
                                    if (SealMoreSettingActivity.this.a != null) {
                                        MiTalkiApp.n().removeCallbacks(SealMoreSettingActivity.this.a);
                                    }
                                    SealMoreSettingActivity.this.a = new Runnable() {
                                        public void run() {
                                            SealMoreSettingActivity.this.b = -1;
                                            SealMoreSettingActivity.this.k();
                                        }
                                    };
                                    MiTalkiApp.n().postDelayed(SealMoreSettingActivity.this.a, 5000);
                                    SealMoreSettingActivity.this.b = 5;
                                    aa.d(i + 1);
                                    return;
                                default:
                                    return;
                            }
                        }
                    }).show();
                    return;
                }
                v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.pw_save_mode /*2131755338*/:
                if (k.a().b()) {
                    a(false, true, getString(R.string.please_wait), (int) R.drawable.load_spinner);
                    if (this.a != null) {
                        MiTalkiApp.n().removeCallbacks(this.a);
                    }
                    this.a = new Runnable() {
                        public void run() {
                            SealMoreSettingActivity.this.b = -1;
                            SealMoreSettingActivity.this.k();
                        }
                    };
                    MiTalkiApp.n().postDelayed(this.a, 5000);
                    this.b = 1;
                    if (!this.pwSaveModeCheckBox.isChecked()) {
                        i = 1;
                    }
                    aa.b(i);
                } else {
                    v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                }
                MiStatInterface.recordCountEvent("device_setting_page", "sealPowerSaveModeBtnClick");
                return;
            case R.id.stop_trans_if_busy /*2131755340*/:
                if (k.a().b()) {
                    a(false, true, getString(R.string.please_wait), (int) R.drawable.load_spinner);
                    if (this.a != null) {
                        MiTalkiApp.n().removeCallbacks(this.a);
                    }
                    this.a = new Runnable() {
                        public void run() {
                            SealMoreSettingActivity.this.b = -1;
                            SealMoreSettingActivity.this.k();
                        }
                    };
                    MiTalkiApp.n().postDelayed(this.a, 5000);
                    this.b = 2;
                    if (this.stopTransIfBusyCheckBox.isChecked()) {
                        z = false;
                    }
                    aa.d(z);
                    return;
                }
                v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.noise_level /*2131755342*/:
                if (k.a().b()) {
                    String[] strArr2 = {getString(R.string.normal), getString(R.string.sensitive), getString(R.string.common_cancel)};
                    q qVar2 = new q(this);
                    qVar2.a(true);
                    qVar2.b((int) R.string.noise_level_text).a(strArr2, new b() {
                        public void a(DialogInterface dialogInterface, int i) {
                            switch (i) {
                                case 0:
                                case 1:
                                    SealMoreSettingActivity.this.a(false, true, SealMoreSettingActivity.this.getString(R.string.please_wait), (int) R.drawable.load_spinner);
                                    if (SealMoreSettingActivity.this.a != null) {
                                        MiTalkiApp.n().removeCallbacks(SealMoreSettingActivity.this.a);
                                    }
                                    SealMoreSettingActivity.this.a = new Runnable() {
                                        public void run() {
                                            SealMoreSettingActivity.this.b = -1;
                                            SealMoreSettingActivity.this.k();
                                        }
                                    };
                                    MiTalkiApp.n().postDelayed(SealMoreSettingActivity.this.a, 5000);
                                    SealMoreSettingActivity.this.b = 3;
                                    aa.c(i + 1);
                                    return;
                                default:
                                    return;
                            }
                        }
                    }).show();
                    return;
                }
                v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.wide_narrow_band /*2131755344*/:
                if (k.a().b()) {
                    String[] strArr3 = {getString(R.string.wide_band), getString(R.string.narrow_banc), getString(R.string.common_cancel)};
                    q qVar3 = new q(this);
                    qVar3.a(true);
                    qVar3.b((int) R.string.wide_narrow_band_text).a(strArr3, new b() {
                        public void a(DialogInterface dialogInterface, int i) {
                            switch (i) {
                                case 0:
                                case 1:
                                    SealMoreSettingActivity.this.a(false, true, SealMoreSettingActivity.this.getString(R.string.please_wait), (int) R.drawable.load_spinner);
                                    if (SealMoreSettingActivity.this.a != null) {
                                        MiTalkiApp.n().removeCallbacks(SealMoreSettingActivity.this.a);
                                    }
                                    SealMoreSettingActivity.this.a = new Runnable() {
                                        public void run() {
                                            SealMoreSettingActivity.this.b = -1;
                                            SealMoreSettingActivity.this.k();
                                        }
                                    };
                                    MiTalkiApp.n().postDelayed(SealMoreSettingActivity.this.a, 5000);
                                    SealMoreSettingActivity.this.b = 4;
                                    aa.e(i);
                                    return;
                                default:
                                    return;
                            }
                        }
                    }).show();
                    return;
                }
                v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            default:
                return;
        }
    }

    @Subscribe
    public void receiveParamResponse(final SEAL_DeviceParam sEAL_DeviceParam) {
        s.c(this.e, "receiveParamResponse");
        ad.a((Runnable) new Runnable() {
            public void run() {
                boolean z = true;
                if (sEAL_DeviceParam.getResult() == SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                    switch (SealMoreSettingActivity.this.b) {
                        case 0:
                            SealMoreSettingActivity.this.k();
                            SealMoreSettingActivity.this.b = -1;
                            CheckBox checkBox = SealMoreSettingActivity.this.voicePromptCheckBox;
                            if (SealMoreSettingActivity.this.voicePromptCheckBox.isChecked()) {
                                z = false;
                            }
                            checkBox.setChecked(z);
                            return;
                        case 1:
                            SealMoreSettingActivity.this.k();
                            SealMoreSettingActivity.this.b = -1;
                            CheckBox checkBox2 = SealMoreSettingActivity.this.pwSaveModeCheckBox;
                            if (SealMoreSettingActivity.this.pwSaveModeCheckBox.isChecked()) {
                                z = false;
                            }
                            checkBox2.setChecked(z);
                            if (SealMoreSettingActivity.this.pwSaveModeCheckBox.isChecked()) {
                                new d(SealMoreSettingActivity.this).b((CharSequence) SealMoreSettingActivity.this.getString(R.string.pw_save_mode_had_open)).c((int) R.string.user_guide_i_know, (OnClickListener) null).b().c();
                                return;
                            }
                            return;
                        case 2:
                            SealMoreSettingActivity.this.k();
                            SealMoreSettingActivity.this.b = -1;
                            CheckBox checkBox3 = SealMoreSettingActivity.this.stopTransIfBusyCheckBox;
                            if (SealMoreSettingActivity.this.stopTransIfBusyCheckBox.isChecked()) {
                                z = false;
                            }
                            checkBox3.setChecked(z);
                            return;
                        case 3:
                            SealMoreSettingActivity.this.e();
                            SealMoreSettingActivity.this.k();
                            SealMoreSettingActivity.this.b = -1;
                            return;
                        case 4:
                            SealMoreSettingActivity.this.f();
                            SealMoreSettingActivity.this.k();
                            SealMoreSettingActivity.this.b = -1;
                            return;
                        case 5:
                            SealMoreSettingActivity.this.d();
                            SealMoreSettingActivity.this.k();
                            SealMoreSettingActivity.this.b = -1;
                            return;
                        default:
                            return;
                    }
                } else {
                    SealMoreSettingActivity.this.d(R.drawable.mine_icon_lose);
                    SealMoreSettingActivity.this.e(R.string.not_support_switch);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            SealMoreSettingActivity.this.k();
                        }
                    }, 500);
                }
            }
        });
    }

    private void c() {
        boolean z = true;
        this.titleBarTitle.setText(R.string.more_setting);
        this.voicePromptCheckBox.setChecked(w.u());
        CheckBox checkBox = this.pwSaveModeCheckBox;
        if (w.w() != 1) {
            z = false;
        }
        checkBox.setChecked(z);
        this.stopTransIfBusyCheckBox.setChecked(w.B());
        d();
        e();
        f();
    }

    /* access modifiers changed from: private */
    public void d() {
        if (w.s() < 851970) {
            this.voiceTypeParentLayout.setVisibility(8);
            return;
        }
        this.voiceTypeParentLayout.setVisibility(0);
        switch (w.x()) {
            case 1:
                this.voiceTypeValue.setText(getString(R.string.common_off));
                return;
            case 2:
                this.voiceTypeValue.setText("中文");
                return;
            case 3:
                this.voiceTypeValue.setText("English");
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void e() {
        switch (w.z()) {
            case 1:
                this.noiseLevelValue.setText(getString(R.string.normal));
                return;
            case 2:
                this.noiseLevelValue.setText(getString(R.string.sensitive));
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void f() {
        switch (w.A()) {
            case 0:
                this.wideNarrowBandValue.setText(getString(R.string.wide_band));
                return;
            case 1:
                this.wideNarrowBandValue.setText(getString(R.string.narrow_banc));
                return;
            default:
                return;
        }
    }
}
