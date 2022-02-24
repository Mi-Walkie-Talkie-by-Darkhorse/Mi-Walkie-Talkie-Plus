package com.ifengyu.intercom.ui.setting.seal;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.library.base.BaseApp;
import com.squareup.otto.Subscribe;

/* loaded from: classes2.dex */
public class SealMoreSettingActivity extends BaseActivity {
    @BindView(R.id.noise_level)
    LinearLayout noiseLevel;
    @BindView(R.id.noise_level_value)
    TextView noiseLevelValue;
    @BindView(R.id.pw_save_mode)
    LinearLayout pwSaveMode;
    @BindView(R.id.pw_save_mode_checkBox)
    CheckBox pwSaveModeCheckBox;
    private Runnable q;
    private int r = -1;
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

    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealMoreSettingActivity.this.r = -1;
            SealMoreSettingActivity.this.j();
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealMoreSettingActivity.this.r = -1;
            SealMoreSettingActivity.this.j();
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealMoreSettingActivity.this.r = -1;
            SealMoreSettingActivity.this.j();
        }
    }

    /* loaded from: classes2.dex */
    class d implements q.c {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealMoreSettingActivity.this.r = -1;
                SealMoreSettingActivity.this.j();
            }
        }

        d() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.q.c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0 || i == 1 || i == 2) {
                SealMoreSettingActivity sealMoreSettingActivity = SealMoreSettingActivity.this;
                sealMoreSettingActivity.a(false, true, sealMoreSettingActivity.getString(R.string.please_wait), R.drawable.load_spinner);
                if (SealMoreSettingActivity.this.q != null) {
                    BaseApp.a().removeCallbacks(SealMoreSettingActivity.this.q);
                }
                SealMoreSettingActivity.this.q = new a();
                BaseApp.a().postDelayed(SealMoreSettingActivity.this.q, 5000L);
                SealMoreSettingActivity.this.r = 5;
                g0.e(i + 1);
            }
        }
    }

    /* loaded from: classes2.dex */
    class e implements q.c {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealMoreSettingActivity.this.r = -1;
                SealMoreSettingActivity.this.j();
            }
        }

        e() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.q.c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0 || i == 1) {
                SealMoreSettingActivity sealMoreSettingActivity = SealMoreSettingActivity.this;
                sealMoreSettingActivity.a(false, true, sealMoreSettingActivity.getString(R.string.please_wait), R.drawable.load_spinner);
                if (SealMoreSettingActivity.this.q != null) {
                    BaseApp.a().removeCallbacks(SealMoreSettingActivity.this.q);
                }
                SealMoreSettingActivity.this.q = new a();
                BaseApp.a().postDelayed(SealMoreSettingActivity.this.q, 5000L);
                SealMoreSettingActivity.this.r = 3;
                g0.d(i + 1);
            }
        }
    }

    /* loaded from: classes2.dex */
    class f implements q.c {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealMoreSettingActivity.this.r = -1;
                SealMoreSettingActivity.this.j();
            }
        }

        f() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.q.c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0 || i == 1) {
                SealMoreSettingActivity sealMoreSettingActivity = SealMoreSettingActivity.this;
                sealMoreSettingActivity.a(false, true, sealMoreSettingActivity.getString(R.string.please_wait), R.drawable.load_spinner);
                if (SealMoreSettingActivity.this.q != null) {
                    BaseApp.a().removeCallbacks(SealMoreSettingActivity.this.q);
                }
                SealMoreSettingActivity.this.q = new a();
                BaseApp.a().postDelayed(SealMoreSettingActivity.this.q, 5000L);
                SealMoreSettingActivity.this.r = 4;
                g0.a(i);
            }
        }
    }

    /* loaded from: classes2.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f6698a;

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealMoreSettingActivity.this.j();
            }
        }

        g(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f6698a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6698a.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                int i = SealMoreSettingActivity.this.r;
                if (i == 0) {
                    SealMoreSettingActivity.this.j();
                    SealMoreSettingActivity.this.r = -1;
                    CheckBox checkBox = SealMoreSettingActivity.this.voicePromptCheckBox;
                    checkBox.setChecked(true ^ checkBox.isChecked());
                } else if (i == 1) {
                    SealMoreSettingActivity.this.j();
                    SealMoreSettingActivity.this.r = -1;
                    CheckBox checkBox2 = SealMoreSettingActivity.this.pwSaveModeCheckBox;
                    checkBox2.setChecked(true ^ checkBox2.isChecked());
                    if (SealMoreSettingActivity.this.pwSaveModeCheckBox.isChecked()) {
                        com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(SealMoreSettingActivity.this);
                        fVar.a(SealMoreSettingActivity.this.getString(R.string.pw_save_mode_had_open));
                        fVar.b(R.string.user_guide_i_know, (DialogInterface.OnClickListener) null);
                        fVar.a();
                        fVar.d();
                    }
                } else if (i == 2) {
                    SealMoreSettingActivity.this.j();
                    SealMoreSettingActivity.this.r = -1;
                    CheckBox checkBox3 = SealMoreSettingActivity.this.stopTransIfBusyCheckBox;
                    checkBox3.setChecked(true ^ checkBox3.isChecked());
                } else if (i == 3) {
                    SealMoreSettingActivity.this.x();
                    SealMoreSettingActivity.this.j();
                    SealMoreSettingActivity.this.r = -1;
                } else if (i == 4) {
                    SealMoreSettingActivity.this.z();
                    SealMoreSettingActivity.this.j();
                    SealMoreSettingActivity.this.r = -1;
                } else if (i == 5) {
                    SealMoreSettingActivity.this.y();
                    SealMoreSettingActivity.this.j();
                    SealMoreSettingActivity.this.r = -1;
                }
            } else {
                SealMoreSettingActivity.this.b(R.drawable.mine_icon_lose);
                SealMoreSettingActivity.this.c(R.string.not_support_switch);
                k0.a(new a(), 500L);
            }
        }
    }

    private void w() {
        this.titleBarTitle.setText(R.string.more_setting);
        this.voicePromptCheckBox.setChecked(d0.w());
        CheckBox checkBox = this.pwSaveModeCheckBox;
        boolean z = true;
        if (d0.z() != 1) {
            z = false;
        }
        checkBox.setChecked(z);
        this.stopTransIfBusyCheckBox.setChecked(d0.y());
        y();
        x();
        z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        int B = d0.B();
        if (B == 1) {
            this.noiseLevelValue.setText(getString(R.string.normal));
        } else if (B == 2) {
            this.noiseLevelValue.setText(getString(R.string.sensitive));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (d0.D() < 851970) {
            this.voiceTypeParentLayout.setVisibility(8);
            return;
        }
        this.voiceTypeParentLayout.setVisibility(0);
        int S = d0.S();
        if (S == 1) {
            this.voiceTypeValue.setText(getString(R.string.common_off));
        } else if (S == 2) {
            this.voiceTypeValue.setText("中文");
        } else if (S == 3) {
            this.voiceTypeValue.setText("English");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        int t = d0.t();
        if (t == 0) {
            this.wideNarrowBandValue.setText(getString(R.string.wide_band));
        } else if (t == 1) {
            this.wideNarrowBandValue.setText(getString(R.string.narrow_banc));
        }
    }

    @OnClick({R.id.title_bar_left, R.id.pw_save_mode, R.id.voice_prompt, R.id.stop_trans_if_busy, R.id.voice_type, R.id.noise_level, R.id.wide_narrow_band})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.noise_level /* 2131296978 */:
                if (j.b().a()) {
                    String[] strArr = {getString(R.string.normal), getString(R.string.sensitive), getString(R.string.common_cancel)};
                    q qVar = new q(this);
                    qVar.a(true);
                    qVar.b(R.string.noise_level_text);
                    qVar.a(strArr, new e());
                    qVar.show();
                    return;
                }
                c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.pw_save_mode /* 2131297047 */:
                if (j.b().a()) {
                    a(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
                    if (this.q != null) {
                        BaseApp.a().removeCallbacks(this.q);
                    }
                    this.q = new b();
                    BaseApp.a().postDelayed(this.q, 5000L);
                    this.r = 1;
                    g0.b(!this.pwSaveModeCheckBox.isChecked());
                    return;
                }
                c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.stop_trans_if_busy /* 2131297241 */:
                if (j.b().a()) {
                    a(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
                    if (this.q != null) {
                        BaseApp.a().removeCallbacks(this.q);
                    }
                    this.q = new c();
                    BaseApp.a().postDelayed(this.q, 5000L);
                    this.r = 2;
                    g0.b(!this.stopTransIfBusyCheckBox.isChecked());
                    return;
                }
                c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.title_bar_left /* 2131297305 */:
                finish();
                return;
            case R.id.voice_prompt /* 2131297483 */:
                if (j.b().a()) {
                    a(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
                    if (this.q != null) {
                        BaseApp.a().removeCallbacks(this.q);
                    }
                    this.q = new a();
                    BaseApp.a().postDelayed(this.q, 5000L);
                    this.r = 0;
                    g0.c(!this.voicePromptCheckBox.isChecked());
                    return;
                }
                c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.voice_type /* 2131297485 */:
                if (j.b().a()) {
                    String[] strArr2 = {getString(R.string.common_off), "中文", "English", getString(R.string.common_cancel)};
                    q qVar2 = new q(this);
                    qVar2.a(true);
                    qVar2.b(R.string.voice_broadcast);
                    qVar2.a(strArr2, new d());
                    qVar2.show();
                    return;
                }
                c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.wide_narrow_band /* 2131297495 */:
                if (j.b().a()) {
                    String[] strArr3 = {getString(R.string.wide_band), getString(R.string.narrow_banc), getString(R.string.common_cancel)};
                    q qVar3 = new q(this);
                    qVar3.a(true);
                    qVar3.b(R.string.wide_narrow_band_text);
                    qVar3.a(strArr3, new f());
                    qVar3.show();
                    return;
                }
                c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_more_setting);
        ButterKnife.bind(this);
        w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().b(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().c(this);
    }

    @Subscribe
    public void receiveParamResponse(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        z.c(this.f6370a, "receiveParamResponse");
        k0.a(new g(sEAL_DeviceParam));
    }
}
