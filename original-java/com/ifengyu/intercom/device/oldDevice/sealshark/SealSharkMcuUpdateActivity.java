package com.ifengyu.intercom.device.oldDevice.sealshark;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateHelper;
import com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateManager;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p189l.p190a.p197d.VersionUtil;
import com.ifengyu.intercom.p209o.OkHttpUtils;
import com.ifengyu.intercom.p209o.p210b.GetBuilder;
import com.ifengyu.intercom.p209o.p211c.FileCallBack;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MD5Util;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.DeviceUpdateLogInfoDialog;
import com.ifengyu.intercom.p216ui.widget.view.CircleProgress;
import com.ifengyu.library.utils.UIUtils;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.util.HashMap;
import okhttp3.Call;

/* loaded from: classes2.dex */
public class SealSharkMcuUpdateActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private CircleProgress f13071j;

    /* renamed from: k */
    private FrameLayout f13072k;

    /* renamed from: l */
    private ImageView f13073l;

    /* renamed from: m */
    private TextView f13074m;

    /* renamed from: n */
    private TextView f13075n;

    /* renamed from: o */
    private TextView f13076o;

    /* renamed from: p */
    private TextView f13077p;

    /* renamed from: r */
    private boolean f13079r;

    /* renamed from: s */
    private VersionInfo f13080s;

    /* renamed from: t */
    private String f13081t;

    /* renamed from: u */
    private String f13082u;

    /* renamed from: v */
    private String f13083v;

    /* renamed from: w */
    private int f13084w;

    /* renamed from: q */
    private int f13078q = 0;

    /* renamed from: x */
    SealSharkUpdateHelper.InterfaceC3827e f13085x = new C3628b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.SealSharkMcuUpdateActivity$a */
    /* loaded from: classes2.dex */
    public class C3627a extends FileCallBack {
        C3627a(String str, String str2) {
            super(str, str2);
        }

        @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
        /* renamed from: d */
        public void mo9819d(Call call, Exception exc, int i) {
            String str = ((BaseActivity1) SealSharkMcuUpdateActivity.this).f15055a;
            C4161y.m11052c(str, "onError :" + exc.getMessage());
            SealSharkMcuUpdateActivity.this.f13078q = 3;
            SealSharkMcuUpdateActivity.this.m13048U();
        }

        @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
        /* renamed from: j */
        public void mo9818e(File file, int i) {
            if (file == null || !file.exists()) {
                SealSharkMcuUpdateActivity.this.f13078q = 3;
                SealSharkMcuUpdateActivity.this.m13048U();
            } else if (MD5Util.m11041a(file.toString()).equals(SealSharkMcuUpdateActivity.this.f13080s.getMd5())) {
                SealSharkMcuUpdateActivity.this.f13078q = 4;
                SealSharkMcuUpdateActivity.this.m13048U();
                SealSharkMcuUpdateActivity.this.m13046W(file.toString());
            } else {
                SealSharkMcuUpdateActivity.this.f13078q = 3;
                SealSharkMcuUpdateActivity.this.m13048U();
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.SealSharkMcuUpdateActivity$b */
    /* loaded from: classes2.dex */
    class C3628b implements SealSharkUpdateHelper.InterfaceC3827e {
        C3628b() {
        }

        @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateHelper.InterfaceC3827e
        /* renamed from: a */
        public void mo12554a(int i) {
            String str = ((BaseActivity1) SealSharkMcuUpdateActivity.this).f15055a;
            C4161y.m11054a(str, "inProgress:" + i);
            SealSharkMcuUpdateActivity.this.f13071j.setProgress(i, CircleProgress.STATE.UPDATING);
            SealSharkMcuUpdateActivity.this.f13084w = i;
        }

        @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateHelper.InterfaceC3827e
        public void onError(int i) {
            String str;
            C4161y.m11054a(((BaseActivity1) SealSharkMcuUpdateActivity.this).f15055a, "onError:" + i);
            if (i == 0) {
                SealSharkMcuUpdateActivity.this.f13078q = 6;
                SealSharkMcuUpdateActivity.this.m13048U();
            } else if (i == 1) {
                SealSharkMcuUpdateActivity.this.f13078q = 7;
                SealSharkMcuUpdateActivity.this.m13048U();
            }
            HashMap hashMap = new HashMap();
            if (i == 1) {
                str = "LOW POWER";
            } else {
                str = "ErrorCode: " + i;
            }
            hashMap.put("failureReason", str);
            hashMap.put("userId", MiTalkClientUtil.m11243P());
            hashMap.put("email", MiTalkClientUtil.m11247N());
            hashMap.put("upgradeProgress", String.valueOf(SealSharkMcuUpdateActivity.this.f13084w));
            hashMap.put("mobileManufacturer", Build.MANUFACTURER);
            hashMap.put("mobileBrand", Build.BRAND);
            hashMap.put("mobileModel", Build.MODEL);
            hashMap.put("mobileRelease", Build.VERSION.RELEASE);
            if (MiTalkClientUtil.m11191q() == 5) {
                int m11265E = MiTalkClientUtil.m11265E();
                hashMap.put("fromVersionCode", String.valueOf(m11265E));
                hashMap.put("fromVersionName", VersionUtil.m11802a(m11265E));
                hashMap.put("toVersionCode", Integer.valueOf(SealSharkMcuUpdateActivity.this.f13080s.getVersionCode()));
                hashMap.put("toVersionName", SealSharkMcuUpdateActivity.this.f13080s.getVersionName());
                MobclickAgent.onEventObject(MiTalkiApp.m14296h(), "Seal_Firmware_Upgrade_Failure", hashMap);
            } else if (MiTalkClientUtil.m11191q() == 4) {
                int m11251L = MiTalkClientUtil.m11251L();
                hashMap.put("fromVersionCode", String.valueOf(m11251L));
                hashMap.put("fromVersionName", VersionUtil.m11802a(m11251L));
                hashMap.put("toVersionCode", Integer.valueOf(SealSharkMcuUpdateActivity.this.f13080s.getVersionCode()));
                hashMap.put("toVersionName", SealSharkMcuUpdateActivity.this.f13080s.getVersionName());
                MobclickAgent.onEventObject(MiTalkiApp.m14296h(), "Shark_Firmware_Upgrade_Failure", hashMap);
            }
        }

        @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateHelper.InterfaceC3827e
        public void onSuccess() {
            C4161y.m11054a(((BaseActivity1) SealSharkMcuUpdateActivity.this).f15055a, "onSuccess");
            SealSharkMcuUpdateActivity.this.f13078q = 5;
            SealSharkMcuUpdateActivity.this.m13048U();
            HashMap hashMap = new HashMap();
            hashMap.put("userId", MiTalkClientUtil.m11243P());
            hashMap.put("email", MiTalkClientUtil.m11247N());
            hashMap.put("upgradeProgress", String.valueOf(100));
            hashMap.put("mobileManufacturer", Build.MANUFACTURER);
            hashMap.put("mobileBrand", Build.BRAND);
            hashMap.put("mobileModel", Build.MODEL);
            hashMap.put("mobileRelease", Build.VERSION.RELEASE);
            if (MiTalkClientUtil.m11191q() == 5) {
                int m11265E = MiTalkClientUtil.m11265E();
                hashMap.put("fromVersionCode", String.valueOf(m11265E));
                hashMap.put("fromVersionName", VersionUtil.m11802a(m11265E));
                hashMap.put("toVersionCode", Integer.valueOf(SealSharkMcuUpdateActivity.this.f13080s.getVersionCode()));
                hashMap.put("toVersionName", SealSharkMcuUpdateActivity.this.f13080s.getVersionName());
                MobclickAgent.onEventObject(MiTalkiApp.m14296h(), "Seal_Firmware_Upgrade_Success", hashMap);
                MiTalkClientUtil.m11254J0(false);
                MiTalkClientUtil.m11244O0(SealSharkMcuUpdateActivity.this.f13080s.getVersionCode());
            } else if (MiTalkClientUtil.m11191q() == 4) {
                int m11251L = MiTalkClientUtil.m11251L();
                hashMap.put("fromVersionCode", String.valueOf(m11251L));
                hashMap.put("fromVersionName", VersionUtil.m11802a(m11251L));
                hashMap.put("toVersionCode", Integer.valueOf(SealSharkMcuUpdateActivity.this.f13080s.getVersionCode()));
                hashMap.put("toVersionName", SealSharkMcuUpdateActivity.this.f13080s.getVersionName());
                MobclickAgent.onEventObject(MiTalkiApp.m14296h(), "Shark_Firmware_Upgrade_Success", hashMap);
                MiTalkClientUtil.m11234T0(false);
                MiTalkClientUtil.m11228W0(SealSharkMcuUpdateActivity.this.f13080s.getVersionCode());
            }
        }
    }

    /* renamed from: S */
    private void m13050S() {
        int i = this.f13078q;
        if (i != 0 && i != 3 && i != 5 && i != 6 && i != 7) {
            CommonDialog commonDialog = new CommonDialog(this);
            commonDialog.m9025l(UIUtils.m8603o(R.string.firmware_upgrading));
            commonDialog.m9022o(R.string.sure, null);
            commonDialog.m9032e();
            commonDialog.m9016u();
            return;
        }
        finish();
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: T */
    private void m13049T() {
        int m11251L;
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.title_bar_right).setOnClickListener(this);
        this.f13076o = (TextView) m10282o(R.id.version_code_tv);
        this.f13071j = (CircleProgress) m10282o(R.id.progress);
        this.f13072k = (FrameLayout) m10282o(R.id.state_view_layout);
        this.f13073l = (ImageView) m10282o(R.id.iv_state_view);
        this.f13074m = (TextView) m10282o(R.id.tv_state);
        this.f13075n = (TextView) m10282o(R.id.tv_power_prompt);
        this.f13077p = (TextView) m10282o(R.id.btn_update);
        int m11191q = MiTalkClientUtil.m11191q();
        if (m11191q != 4) {
            m11251L = m11191q != 5 ? 0 : MiTalkClientUtil.m11265E();
        } else {
            m11251L = MiTalkClientUtil.m11251L();
        }
        String str = null;
        if (m11251L > 0) {
            str = ((m11251L / 16777216) % 256) + "." + ((m11251L / 65536) % 256) + "." + (m11251L % 65536);
        }
        if (this.f13080s != null && this.f13079r) {
            this.f13076o.setText(getString(R.string.update_check_new) + " V" + this.f13080s.getVersionName());
            this.f13077p.setOnClickListener(this);
            String str2 = this.f13082u;
            if (str2 != null && str2.equals("mcu_update_action_from_main")) {
                m13047V();
            } else {
                this.f13075n.setVisibility(0);
                if ("seal".equals(this.f13081t)) {
                    this.f13075n.setText(R.string.please_sure_seal_device_have_3power);
                } else if ("shark".equals(this.f13081t)) {
                    this.f13075n.setText("");
                }
                this.f13077p.setVisibility(0);
            }
            if (str != null) {
                this.f13074m.setText(UIUtils.m8602p(R.string.current_mcu_version, str));
                return;
            }
            return;
        }
        this.f13076o.setText("");
        this.f13077p.setVisibility(8);
        this.f13073l.setImageResource(R.drawable.firmware_icon_success);
        if (str != null) {
            this.f13074m.setText(UIUtils.m8602p(R.string.current_mcu_version_1, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U */
    public void m13048U() {
        int i = this.f13078q;
        if (i == 1) {
            this.f13072k.setVisibility(0);
            this.f13071j.setVisibility(8);
            this.f13077p.setVisibility(8);
            this.f13072k.setBackground(UIUtils.m8611g(R.drawable.firmware_icon_circle_blue));
            this.f13073l.setImageResource(R.drawable.firmware_icon_upgrade);
            this.f13074m.setText(R.string.mcu_downloading);
        } else if (i == 3) {
            this.f13072k.setVisibility(0);
            this.f13071j.setVisibility(8);
            this.f13077p.setVisibility(0);
            this.f13072k.setBackground(UIUtils.m8611g(R.drawable.firmware_icon_gray));
            this.f13073l.setImageResource(R.drawable.firmware_icon_fail);
            this.f13074m.setText(R.string.mcu_download_fail_and_reload);
            this.f13077p.setText(R.string.update_restart);
        } else if (i == 4) {
            this.f13072k.setVisibility(8);
            this.f13071j.setVisibility(0);
            this.f13077p.setVisibility(8);
            TextView textView = this.f13076o;
            textView.setText(UIUtils.m8603o(R.string.update_to_newest_version) + this.f13080s.getVersionName());
            this.f13074m.setText(R.string.updating_not_close_device);
            this.f13071j.setProgress(0, CircleProgress.STATE.UPDATING);
        } else if (i == 5) {
            this.f13072k.setVisibility(0);
            this.f13071j.setVisibility(8);
            this.f13077p.setVisibility(0);
            this.f13077p.setText(R.string.common_ok);
            this.f13072k.setBackground(UIUtils.m8611g(R.drawable.firmware_icon_circle_blue));
            this.f13073l.setImageResource(R.drawable.firmware_icon_success);
            TextView textView2 = this.f13076o;
            textView2.setText(UIUtils.m8603o(R.string.had_udpate_to_newest_version) + this.f13080s.getVersionName());
            this.f13074m.setText(R.string.update_success);
        } else if (i != 6) {
            if (i != 7) {
                return;
            }
            this.f13072k.setVisibility(0);
            this.f13071j.setVisibility(8);
            this.f13077p.setVisibility(0);
            this.f13072k.setBackground(UIUtils.m8611g(R.drawable.firmware_icon_gray));
            this.f13073l.setImageResource(R.drawable.firmware_icon_fail);
            this.f13074m.setText(R.string.update_failure_due_to_low_power);
            this.f13077p.setText(R.string.update_restart);
        } else {
            this.f13072k.setVisibility(0);
            this.f13071j.setVisibility(8);
            this.f13077p.setVisibility(0);
            this.f13072k.setBackground(UIUtils.m8611g(R.drawable.firmware_icon_gray));
            this.f13073l.setImageResource(R.drawable.firmware_icon_fail);
            TextView textView3 = this.f13076o;
            textView3.setText(UIUtils.m8603o(R.string.update_check_new) + " V" + this.f13080s.getVersionName());
            this.f13074m.setText(R.string.update_failure);
            this.f13077p.setText(R.string.update_restart);
        }
    }

    /* renamed from: V */
    private void m13047V() {
        String source = this.f13080s.getSource();
        String substring = source.substring(source.lastIndexOf(47) + 1);
        File file = new File(UIUtils.m8613e().getFilesDir().getAbsolutePath() + File.separator + substring);
        if (file.exists()) {
            if (MD5Util.m11041a(file.toString()).equals(this.f13080s.getMd5())) {
                this.f13078q = 4;
                m13048U();
                m13046W(file.toString());
                return;
            }
            m13051R(source, substring);
            return;
        }
        m13051R(source, substring);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public void m13046W(String str) {
        SealSharkUpdateManager.m12523a().m12521c(UIUtils.m8613e(), this.f13083v, 1, str, this.f13085x);
    }

    /* renamed from: R */
    public void m13051R(String str, String str2) {
        this.f13078q = 1;
        m13048U();
        GetBuilder m11353b = OkHttpUtils.m11353b();
        m11353b.m11344a(str);
        m11353b.m11345c().m11325b(new C3627a(UIUtils.m8613e().getFilesDir().getAbsolutePath(), str2));
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m13050S();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_update /* 2131296442 */:
                if (this.f13078q == 5) {
                    finish();
                    return;
                } else if (!BleCoreClient.m12373n().m12372o(this.f13083v)) {
                    MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                    return;
                } else {
                    this.f13075n.setVisibility(8);
                    m13047V();
                    return;
                }
            case R.id.title_bar_left /* 2131297422 */:
                m13050S();
                return;
            case R.id.title_bar_right /* 2131297423 */:
                new DeviceUpdateLogInfoDialog(this, UIUtils.m8603o(R.string.version_v) + this.f13080s.getVersionName(), this.f13080s.getInfo()).show();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_shark_mcu_update);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f13083v = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f13081t = getIntent().getExtras().getString("mcu_update_device_type");
        this.f13079r = getIntent().getExtras().getBoolean("mcu_have_update");
        this.f13080s = (VersionInfo) getIntent().getExtras().getParcelable("mcu_update_info");
        this.f13082u = getIntent().getAction();
        m13049T();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f13085x = null;
        SealSharkUpdateManager.m12522b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MiBus.getInstance().m6409l(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MiBus.getInstance().m6411j(this);
    }
}
