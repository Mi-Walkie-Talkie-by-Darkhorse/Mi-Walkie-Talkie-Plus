package com.ifengyu.intercom.ui.activity;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.McuUpdateInfoModel;
import com.ifengyu.intercom.g.d.d;
import com.ifengyu.intercom.i.a0;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.utils.l;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.f;
import com.ifengyu.intercom.ui.widget.dialog.g;
import com.ifengyu.intercom.ui.widget.view.CircleProgress;
import com.ifengyu.intercom.update.sealshark.UpdateHelper;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.util.HashMap;
import okhttp3.Call;

/* loaded from: classes2.dex */
public class SealSharkMcuUpdateActivity extends BaseActivity implements View.OnClickListener {
    private String A;
    private String B;
    private int C;
    private CircleProgress q;
    private FrameLayout r;
    private ImageView s;
    private TextView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private boolean y;
    private McuUpdateInfoModel z;
    private int x = 0;
    UpdateHelper.e D = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends d {
        a(String str, String str2) {
            super(str, str2);
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            String str = ((BaseActivity) SealSharkMcuUpdateActivity.this).f6370a;
            z.b(str, "onError :" + exc.getMessage());
            SealSharkMcuUpdateActivity.this.x = 3;
            SealSharkMcuUpdateActivity.this.y();
        }

        public void a(File file, int i) {
            if (file == null || !file.exists()) {
                SealSharkMcuUpdateActivity.this.x = 3;
                SealSharkMcuUpdateActivity.this.y();
            } else if (a0.a(file.toString()).equals(SealSharkMcuUpdateActivity.this.z.getMD5())) {
                SealSharkMcuUpdateActivity.this.x = 4;
                SealSharkMcuUpdateActivity.this.y();
                SealSharkMcuUpdateActivity.this.c(file.toString());
            } else {
                SealSharkMcuUpdateActivity.this.x = 3;
                SealSharkMcuUpdateActivity.this.y();
            }
        }
    }

    private void w() {
        int i = this.x;
        if (i == 0 || i == 3 || i == 5 || i == 6 || i == 7) {
            finish();
            return;
        }
        f fVar = new f(this);
        fVar.a(k0.c(R.string.firmware_upgrading));
        fVar.b(R.string.sure, (DialogInterface.OnClickListener) null);
        fVar.a();
        fVar.d();
    }

    @SuppressLint({"SetTextI18n"})
    private void x() {
        int i;
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.title_bar_right).setOnClickListener(this);
        this.v = (TextView) a(R.id.version_code_tv);
        this.q = (CircleProgress) a(R.id.progress);
        this.r = (FrameLayout) a(R.id.state_view_layout);
        this.s = (ImageView) a(R.id.iv_state_view);
        this.t = (TextView) a(R.id.tv_state);
        this.u = (TextView) a(R.id.tv_power_prompt);
        this.w = (TextView) a(R.id.btn_update);
        int g = d0.g();
        if (g != 4) {
            i = g != 5 ? 0 : d0.D();
        } else {
            i = d0.K();
        }
        String str = null;
        if (i > 0) {
            str = ((i / 16777216) % 256) + "." + ((i / 65536) % 256) + "." + (i % 65536);
        }
        if (this.z == null || !this.y) {
            this.v.setText("");
            this.w.setVisibility(8);
            this.s.setImageResource(R.drawable.firmware_icon_success);
            if (str != null) {
                this.t.setText(k0.a((int) R.string.current_mcu_version_1, str));
                return;
            }
            return;
        }
        this.v.setText(getString(R.string.update_check_new) + " V" + this.z.getVersionName());
        this.w.setOnClickListener(this);
        String str2 = this.B;
        if (str2 == null || !str2.equals("mcu_update_action_from_main")) {
            this.u.setVisibility(0);
            if ("seal".equals(this.A)) {
                this.u.setText(R.string.please_sure_seal_device_have_3power);
            } else if ("shark".equals(this.A)) {
                this.u.setText("");
            }
            this.w.setVisibility(0);
        } else {
            z();
        }
        if (str != null) {
            this.t.setText(k0.a((int) R.string.current_mcu_version, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        int i = this.x;
        if (i == 1) {
            this.r.setVisibility(0);
            this.q.setVisibility(8);
            this.w.setVisibility(8);
            this.r.setBackground(getResources().getDrawable(R.drawable.firmware_icon_circle_blue));
            this.s.setImageResource(R.drawable.firmware_icon_upgrade);
            this.t.setText(R.string.mcu_downloading);
        } else if (i == 3) {
            this.r.setVisibility(0);
            this.q.setVisibility(8);
            this.w.setVisibility(0);
            this.r.setBackground(getResources().getDrawable(R.drawable.firmware_icon_gray));
            this.s.setImageResource(R.drawable.firmware_icon_fail);
            this.t.setText(R.string.mcu_download_fail_and_reload);
            this.w.setText(R.string.update_restart);
        } else if (i == 4) {
            this.r.setVisibility(8);
            this.q.setVisibility(0);
            this.w.setVisibility(8);
            TextView textView = this.v;
            textView.setText(getString(R.string.update_to_newest_version) + this.z.getVersionName());
            this.t.setText(R.string.updating_not_close_device);
            this.q.setProgress(0, CircleProgress.STATE.UPDATING);
        } else if (i == 5) {
            this.r.setVisibility(0);
            this.q.setVisibility(8);
            this.w.setVisibility(0);
            this.w.setText(R.string.common_ok);
            this.r.setBackground(getResources().getDrawable(R.drawable.firmware_icon_circle_blue));
            this.s.setImageResource(R.drawable.firmware_icon_success);
            TextView textView2 = this.v;
            textView2.setText(getString(R.string.had_udpate_to_newest_version) + this.z.getVersionName());
            this.t.setText(R.string.update_success);
        } else if (i == 6) {
            this.r.setVisibility(0);
            this.q.setVisibility(8);
            this.w.setVisibility(0);
            this.r.setBackground(getResources().getDrawable(R.drawable.firmware_icon_gray));
            this.s.setImageResource(R.drawable.firmware_icon_fail);
            TextView textView3 = this.v;
            textView3.setText(getString(R.string.update_check_new) + " V" + this.z.getVersionName());
            this.t.setText(R.string.update_failure);
            this.w.setText(R.string.update_restart);
        } else if (i == 7) {
            this.r.setVisibility(0);
            this.q.setVisibility(8);
            this.w.setVisibility(0);
            this.r.setBackground(getResources().getDrawable(R.drawable.firmware_icon_gray));
            this.s.setImageResource(R.drawable.firmware_icon_fail);
            this.t.setText(R.string.update_failure_due_to_low_power);
            this.w.setText(R.string.update_restart);
        }
    }

    private void z() {
        String source = this.z.getSource();
        String substring = source.substring(source.lastIndexOf(47) + 1);
        File file = new File(k0.a().getFilesDir().getAbsolutePath() + File.separator + substring);
        if (!file.exists()) {
            c(source, substring);
        } else if (a0.a(file.toString()).equals(this.z.getMD5())) {
            this.x = 4;
            y();
            c(file.toString());
        } else {
            c(source, substring);
        }
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        w();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_update /* 2131296422 */:
                if (this.x == 5) {
                    finish();
                    return;
                } else if (!j.b().a()) {
                    c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                } else {
                    this.u.setVisibility(8);
                    z();
                    return;
                }
            case R.id.title_bar_left /* 2131297305 */:
                w();
                return;
            case R.id.title_bar_right /* 2131297306 */:
                new g(this, k0.c(R.string.version_v) + this.z.getVersionName(), this.z.getInfo()).show();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_shark_mcu_update);
        this.A = getIntent().getExtras().getString("mcu_update_device_type");
        this.y = getIntent().getExtras().getBoolean("mcu_have_update");
        this.z = (McuUpdateInfoModel) getIntent().getExtras().getParcelable("mcu_update_info");
        this.B = getIntent().getAction();
        x();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.D = null;
        com.ifengyu.intercom.update.sealshark.j.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.ifengyu.intercom.eventbus.a.a().c(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.ifengyu.intercom.eventbus.a.a().b(this);
    }

    public void c(String str, String str2) {
        this.x = 1;
        y();
        com.ifengyu.intercom.g.c.a c2 = com.ifengyu.intercom.g.b.c();
        c2.a(str);
        c2.a().b(new a(k0.a().getFilesDir().getAbsolutePath(), str2));
    }

    /* loaded from: classes2.dex */
    class b implements UpdateHelper.e {
        b() {
        }

        @Override // com.ifengyu.intercom.update.sealshark.UpdateHelper.e
        public void a(int i) {
            String str = ((BaseActivity) SealSharkMcuUpdateActivity.this).f6370a;
            z.a(str, "inProgress:" + i);
            SealSharkMcuUpdateActivity.this.q.setProgress(i, CircleProgress.STATE.UPDATING);
            SealSharkMcuUpdateActivity.this.C = i;
        }

        @Override // com.ifengyu.intercom.update.sealshark.UpdateHelper.e
        public void b(int i) {
            String str;
            z.a(((BaseActivity) SealSharkMcuUpdateActivity.this).f6370a, "onError:" + i);
            if (i == 0) {
                SealSharkMcuUpdateActivity.this.x = 6;
                SealSharkMcuUpdateActivity.this.y();
            } else if (i == 1) {
                SealSharkMcuUpdateActivity.this.x = 7;
                SealSharkMcuUpdateActivity.this.y();
            }
            HashMap hashMap = new HashMap();
            if (i == 1) {
                str = "LOW POWER";
            } else {
                str = "ErrorCode: " + i;
            }
            hashMap.put("failureReason", str);
            hashMap.put("userId", d0.N());
            hashMap.put("email", d0.L());
            hashMap.put("upgradeProgress", String.valueOf(SealSharkMcuUpdateActivity.this.C));
            hashMap.put("mobileManufacturer", Build.MANUFACTURER);
            hashMap.put("mobileBrand", Build.BRAND);
            hashMap.put("mobileModel", Build.MODEL);
            hashMap.put("mobileRelease", Build.VERSION.RELEASE);
            if (d0.g() == 5) {
                int D = d0.D();
                hashMap.put("fromVersionCode", String.valueOf(D));
                hashMap.put("fromVersionName", l.a(D));
                hashMap.put("toVersionCode", SealSharkMcuUpdateActivity.this.z.getVersionCode());
                hashMap.put("toVersionName", SealSharkMcuUpdateActivity.this.z.getVersionName());
                MobclickAgent.onEventObject(MiTalkiApp.b(), "Seal_Firmware_Upgrade_Failure", hashMap);
            } else if (d0.g() == 4) {
                int K = d0.K();
                hashMap.put("fromVersionCode", String.valueOf(K));
                hashMap.put("fromVersionName", l.a(K));
                hashMap.put("toVersionCode", SealSharkMcuUpdateActivity.this.z.getVersionCode());
                hashMap.put("toVersionName", SealSharkMcuUpdateActivity.this.z.getVersionName());
                MobclickAgent.onEventObject(MiTalkiApp.b(), "Shark_Firmware_Upgrade_Failure", hashMap);
            }
        }

        @Override // com.ifengyu.intercom.update.sealshark.UpdateHelper.e
        public void a() {
            z.a(((BaseActivity) SealSharkMcuUpdateActivity.this).f6370a, "onSuccess");
            SealSharkMcuUpdateActivity.this.x = 5;
            SealSharkMcuUpdateActivity.this.y();
            HashMap hashMap = new HashMap();
            hashMap.put("userId", d0.N());
            hashMap.put("email", d0.L());
            hashMap.put("upgradeProgress", String.valueOf(100));
            hashMap.put("mobileManufacturer", Build.MANUFACTURER);
            hashMap.put("mobileBrand", Build.BRAND);
            hashMap.put("mobileModel", Build.MODEL);
            hashMap.put("mobileRelease", Build.VERSION.RELEASE);
            if (d0.g() == 5) {
                int D = d0.D();
                hashMap.put("fromVersionCode", String.valueOf(D));
                hashMap.put("fromVersionName", l.a(D));
                hashMap.put("toVersionCode", SealSharkMcuUpdateActivity.this.z.getVersionCode());
                hashMap.put("toVersionName", SealSharkMcuUpdateActivity.this.z.getVersionName());
                MobclickAgent.onEventObject(MiTalkiApp.b(), "Seal_Firmware_Upgrade_Success", hashMap);
                d0.n(false);
                d0.j(Integer.parseInt(SealSharkMcuUpdateActivity.this.z.getVersionCode()));
            } else if (d0.g() == 4) {
                int K = d0.K();
                hashMap.put("fromVersionCode", String.valueOf(K));
                hashMap.put("fromVersionName", l.a(K));
                hashMap.put("toVersionCode", SealSharkMcuUpdateActivity.this.z.getVersionCode());
                hashMap.put("toVersionName", SealSharkMcuUpdateActivity.this.z.getVersionName());
                MobclickAgent.onEventObject(MiTalkiApp.b(), "Shark_Firmware_Upgrade_Success", hashMap);
                d0.q(false);
                d0.n(Integer.parseInt(SealSharkMcuUpdateActivity.this.z.getVersionCode()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        com.ifengyu.intercom.update.sealshark.j.a().a(k0.a(), 1, str, this.D);
    }
}
