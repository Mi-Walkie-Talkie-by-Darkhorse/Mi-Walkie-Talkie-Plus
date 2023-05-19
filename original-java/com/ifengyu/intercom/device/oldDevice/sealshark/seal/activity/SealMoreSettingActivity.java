package com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity;

import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.ListDialog;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.utils.UIUtils;
import com.squareup.otto.Subscribe;

/* loaded from: classes2.dex */
public class SealMoreSettingActivity extends BaseActivity1 {

    /* renamed from: j */
    private Runnable f13273j;

    /* renamed from: k */
    private int f13274k = -1;

    /* renamed from: l */
    private String f13275l;
    @BindView(R.id.noise_level)
    LinearLayout noiseLevel;
    @BindView(R.id.noise_level_value)
    TextView noiseLevelValue;
    @BindView(R.id.pw_save_mode)
    LinearLayout pwSaveMode;
    @BindView(R.id.pw_save_mode_checkBox)
    CheckBox pwSaveModeCheckBox;
    @BindView(R.id.stop_trans_if_busy)
    LinearLayout stopTransIfBusy;
    @BindView(R.id.stop_trans_if_busy_checkBox)
    CheckBox stopTransIfBusyCheckBox;
    @BindView(R.id.title_bar_left)
    ImageView titleBarLeft;
    @BindView(R.id.title_bar_title)
    TextView titleBarTitle;
    @BindView(R.id.voice_prompt)
    LinearLayout voicePrompt;
    @BindView(R.id.voice_prompt_checkBox)
    CheckBox voicePromptCheckBox;
    @BindView(R.id.voice_type)
    LinearLayout voiceType;
    @BindView(R.id.voice_type_parent_layout)
    LinearLayout voiceTypeParentLayout;
    @BindView(R.id.voice_type_value)
    TextView voiceTypeValue;
    @BindView(R.id.wide_narrow_band)
    LinearLayout wideNarrowBand;
    @BindView(R.id.wide_narrow_band_value)
    TextView wideNarrowBandValue;

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity$a */
    /* loaded from: classes2.dex */
    class RunnableC3687a implements Runnable {
        RunnableC3687a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealMoreSettingActivity.this.f13274k = -1;
            SealMoreSettingActivity.this.m10283n();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity$b */
    /* loaded from: classes2.dex */
    class RunnableC3688b implements Runnable {
        RunnableC3688b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealMoreSettingActivity.this.f13274k = -1;
            SealMoreSettingActivity.this.m10283n();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity$c */
    /* loaded from: classes2.dex */
    class RunnableC3689c implements Runnable {
        RunnableC3689c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealMoreSettingActivity.this.f13274k = -1;
            SealMoreSettingActivity.this.m10283n();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity$d */
    /* loaded from: classes2.dex */
    class C3690d implements ListDialog.InterfaceC4927c {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity$d$a */
        /* loaded from: classes2.dex */
        class RunnableC3691a implements Runnable {
            RunnableC3691a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealMoreSettingActivity.this.f13274k = -1;
                SealMoreSettingActivity.this.m10283n();
            }
        }

        C3690d() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.ListDialog.InterfaceC4927c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0 || i == 1 || i == 2) {
                SealMoreSettingActivity sealMoreSettingActivity = SealMoreSettingActivity.this;
                sealMoreSettingActivity.m10287D(false, true, sealMoreSettingActivity.getString(R.string.please_wait), R.drawable.load_spinner);
                if (SealMoreSettingActivity.this.f13273j != null) {
                    BaseApp.m8713a().removeCallbacks(SealMoreSettingActivity.this.f13273j);
                }
                SealMoreSettingActivity.this.f13273j = new RunnableC3691a();
                BaseApp.m8713a().postDelayed(SealMoreSettingActivity.this.f13273j, 5000L);
                SealMoreSettingActivity.this.f13274k = 5;
                BleCoreClient.m12373n().m12375l(SealMoreSettingActivity.this.f13275l).m12140D1(i + 1);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity$e */
    /* loaded from: classes2.dex */
    class C3692e implements ListDialog.InterfaceC4927c {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity$e$a */
        /* loaded from: classes2.dex */
        class RunnableC3693a implements Runnable {
            RunnableC3693a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealMoreSettingActivity.this.f13274k = -1;
                SealMoreSettingActivity.this.m10283n();
            }
        }

        C3692e() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.ListDialog.InterfaceC4927c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0 || i == 1) {
                SealMoreSettingActivity sealMoreSettingActivity = SealMoreSettingActivity.this;
                sealMoreSettingActivity.m10287D(false, true, sealMoreSettingActivity.getString(R.string.please_wait), R.drawable.load_spinner);
                if (SealMoreSettingActivity.this.f13273j != null) {
                    BaseApp.m8713a().removeCallbacks(SealMoreSettingActivity.this.f13273j);
                }
                SealMoreSettingActivity.this.f13273j = new RunnableC3693a();
                BaseApp.m8713a().postDelayed(SealMoreSettingActivity.this.f13273j, 5000L);
                SealMoreSettingActivity.this.f13274k = 3;
                BleCoreClient.m12373n().m12375l(SealMoreSettingActivity.this.f13275l).m12076x1(i + 1);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity$f */
    /* loaded from: classes2.dex */
    class C3694f implements ListDialog.InterfaceC4927c {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity$f$a */
        /* loaded from: classes2.dex */
        class RunnableC3695a implements Runnable {
            RunnableC3695a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealMoreSettingActivity.this.f13274k = -1;
                SealMoreSettingActivity.this.m10283n();
            }
        }

        C3694f() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.ListDialog.InterfaceC4927c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0 || i == 1) {
                SealMoreSettingActivity sealMoreSettingActivity = SealMoreSettingActivity.this;
                sealMoreSettingActivity.m10287D(false, true, sealMoreSettingActivity.getString(R.string.please_wait), R.drawable.load_spinner);
                if (SealMoreSettingActivity.this.f13273j != null) {
                    BaseApp.m8713a().removeCallbacks(SealMoreSettingActivity.this.f13273j);
                }
                SealMoreSettingActivity.this.f13273j = new RunnableC3695a();
                BaseApp.m8713a().postDelayed(SealMoreSettingActivity.this.f13273j, 5000L);
                SealMoreSettingActivity.this.f13274k = 4;
                BleCoreClient.m12373n().m12375l(SealMoreSettingActivity.this.f13275l).m12100l1(i);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity$g */
    /* loaded from: classes2.dex */
    class RunnableC3696g implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f13285a;

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity$g$a */
        /* loaded from: classes2.dex */
        class RunnableC3697a implements Runnable {
            RunnableC3697a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealMoreSettingActivity.this.m10283n();
            }
        }

        RunnableC3696g(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f13285a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f13285a.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                int i = SealMoreSettingActivity.this.f13274k;
                if (i == 0) {
                    SealMoreSettingActivity.this.m10283n();
                    SealMoreSettingActivity.this.f13274k = -1;
                    CheckBox checkBox = SealMoreSettingActivity.this.voicePromptCheckBox;
                    checkBox.setChecked(true ^ checkBox.isChecked());
                    return;
                } else if (i == 1) {
                    SealMoreSettingActivity.this.m10283n();
                    SealMoreSettingActivity.this.f13274k = -1;
                    CheckBox checkBox2 = SealMoreSettingActivity.this.pwSaveModeCheckBox;
                    checkBox2.setChecked(true ^ checkBox2.isChecked());
                    if (SealMoreSettingActivity.this.pwSaveModeCheckBox.isChecked()) {
                        SealMoreSettingActivity sealMoreSettingActivity = SealMoreSettingActivity.this;
                        CommonDialog commonDialog = new CommonDialog(sealMoreSettingActivity);
                        commonDialog.m9025l(sealMoreSettingActivity.getString(R.string.pw_save_mode_had_open));
                        commonDialog.m9022o(R.string.user_guide_i_know, null);
                        commonDialog.m9032e();
                        commonDialog.m9016u();
                        return;
                    }
                    return;
                } else if (i == 2) {
                    SealMoreSettingActivity.this.m10283n();
                    SealMoreSettingActivity.this.f13274k = -1;
                    CheckBox checkBox3 = SealMoreSettingActivity.this.stopTransIfBusyCheckBox;
                    checkBox3.setChecked(true ^ checkBox3.isChecked());
                    return;
                } else if (i == 3) {
                    SealMoreSettingActivity.this.m12843O();
                    SealMoreSettingActivity.this.m10283n();
                    SealMoreSettingActivity.this.f13274k = -1;
                    return;
                } else if (i == 4) {
                    SealMoreSettingActivity.this.m12841R();
                    SealMoreSettingActivity.this.m10283n();
                    SealMoreSettingActivity.this.f13274k = -1;
                    return;
                } else if (i != 5) {
                    return;
                } else {
                    SealMoreSettingActivity.this.m12842P();
                    SealMoreSettingActivity.this.m10283n();
                    SealMoreSettingActivity.this.f13274k = -1;
                    return;
                }
            }
            SealMoreSettingActivity.this.m10277t(R.drawable.load_fail);
            SealMoreSettingActivity.this.m10276u(R.string.not_support_switch);
            UIUtils.m8599s(new RunnableC3697a(), 500L);
        }
    }

    /* renamed from: N */
    private void m12844N() {
        this.titleBarTitle.setText(R.string.more_setting);
        this.voicePromptCheckBox.setChecked(MiTalkClientUtil.m11177x());
        this.pwSaveModeCheckBox.setChecked(MiTalkClientUtil.m11273A() == 1);
        this.stopTransIfBusyCheckBox.setChecked(MiTalkClientUtil.m11173z());
        m12842P();
        m12843O();
        m12841R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public void m12843O() {
        int m11269C = MiTalkClientUtil.m11269C();
        if (m11269C == 1) {
            this.noiseLevelValue.setText(getString(R.string.normal));
        } else if (m11269C != 2) {
        } else {
            this.noiseLevelValue.setText(getString(R.string.sensitive));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P */
    public void m12842P() {
        if (MiTalkClientUtil.m11265E() < 851970) {
            this.voiceTypeParentLayout.setVisibility(8);
            return;
        }
        this.voiceTypeParentLayout.setVisibility(0);
        int m11233U = MiTalkClientUtil.m11233U();
        if (m11233U == 1) {
            this.voiceTypeValue.setText(getString(R.string.common_off));
        } else if (m11233U == 2) {
            this.voiceTypeValue.setText("中文");
        } else if (m11233U != 3) {
        } else {
            this.voiceTypeValue.setText("English");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public void m12841R() {
        int m11183u = MiTalkClientUtil.m11183u();
        if (m11183u == 0) {
            this.wideNarrowBandValue.setText(getString(R.string.wide_band));
        } else if (m11183u != 1) {
        } else {
            this.wideNarrowBandValue.setText(getString(R.string.narrow_banc));
        }
    }

    @OnClick({R.id.title_bar_left, R.id.pw_save_mode, R.id.voice_prompt, R.id.stop_trans_if_busy, R.id.voice_type, R.id.noise_level, R.id.wide_narrow_band})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.noise_level /* 2131297077 */:
                if (BleCoreClient.m12373n().m12372o(this.f13275l)) {
                    String[] strArr = {getString(R.string.normal), getString(R.string.sensitive), getString(R.string.common_cancel)};
                    ListDialog listDialog = new ListDialog(this);
                    listDialog.m8937k(true);
                    listDialog.m8936l(R.string.noise_level_text);
                    listDialog.m8934n(strArr, new C3692e());
                    listDialog.show();
                    return;
                }
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                return;
            case R.id.pw_save_mode /* 2131297146 */:
                if (BleCoreClient.m12373n().m12372o(this.f13275l)) {
                    m10287D(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
                    if (this.f13273j != null) {
                        BaseApp.m8713a().removeCallbacks(this.f13273j);
                    }
                    this.f13273j = new RunnableC3688b();
                    BaseApp.m8713a().postDelayed(this.f13273j, 5000L);
                    this.f13274k = 1;
                    BleCoreClient.m12373n().m12375l(this.f13275l).m12082u1(!this.pwSaveModeCheckBox.isChecked());
                    return;
                }
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                return;
            case R.id.stop_trans_if_busy /* 2131297357 */:
                if (BleCoreClient.m12373n().m12372o(this.f13275l)) {
                    m10287D(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
                    if (this.f13273j != null) {
                        BaseApp.m8713a().removeCallbacks(this.f13273j);
                    }
                    this.f13273j = new RunnableC3689c();
                    BaseApp.m8713a().postDelayed(this.f13273j, 5000L);
                    this.f13274k = 2;
                    BleCoreClient.m12373n().m12375l(this.f13275l).m12074y1(!this.stopTransIfBusyCheckBox.isChecked());
                    return;
                }
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                return;
            case R.id.title_bar_left /* 2131297422 */:
                finish();
                return;
            case R.id.voice_prompt /* 2131297599 */:
                if (BleCoreClient.m12373n().m12372o(this.f13275l)) {
                    m10287D(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
                    if (this.f13273j != null) {
                        BaseApp.m8713a().removeCallbacks(this.f13273j);
                    }
                    this.f13273j = new RunnableC3687a();
                    BaseApp.m8713a().postDelayed(this.f13273j, 5000L);
                    this.f13274k = 0;
                    BleCoreClient.m12373n().m12375l(this.f13275l).m12072z1(!this.voicePromptCheckBox.isChecked());
                    return;
                }
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                return;
            case R.id.voice_type /* 2131297601 */:
                if (BleCoreClient.m12373n().m12372o(this.f13275l)) {
                    String[] strArr2 = {getString(R.string.common_off), "中文", "English", getString(R.string.common_cancel)};
                    ListDialog listDialog2 = new ListDialog(this);
                    listDialog2.m8937k(true);
                    listDialog2.m8936l(R.string.voice_broadcast);
                    listDialog2.m8934n(strArr2, new C3690d());
                    listDialog2.show();
                    return;
                }
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                return;
            case R.id.wide_narrow_band /* 2131297611 */:
                if (BleCoreClient.m12373n().m12372o(this.f13275l)) {
                    String[] strArr3 = {getString(R.string.wide_band), getString(R.string.narrow_banc), getString(R.string.common_cancel)};
                    ListDialog listDialog3 = new ListDialog(this);
                    listDialog3.m8937k(true);
                    listDialog3.m8936l(R.string.wide_narrow_band_text);
                    listDialog3.m8934n(strArr3, new C3694f());
                    listDialog3.show();
                    return;
                }
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_more_setting);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f13275l = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        ButterKnife.bind(this);
        m12844N();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        MiBus.getInstance().m6411j(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        MiBus.getInstance().m6409l(this);
    }

    @Subscribe
    public void receiveParamResponse(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        C4161y.m11049f(this.f15055a, "receiveParamResponse");
        UIUtils.m8598t(new RunnableC3696g(sEAL_DeviceParam));
    }
}
