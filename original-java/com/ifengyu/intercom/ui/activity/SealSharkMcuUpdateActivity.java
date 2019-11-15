package com.ifengyu.intercom.ui.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.d;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.t;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.McuUpdateInfoModel;
import com.ifengyu.intercom.eventbus.a;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.e;
import com.ifengyu.intercom.ui.widget.view.CircleProgress;
import com.ifengyu.intercom.ui.widget.view.CircleProgress.STATE;
import com.ifengyu.intercom.update.sealshark.UpdateHelper.b;
import com.ifengyu.intercom.update.sealshark.j;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.io.File;
import okhttp3.Call;

public class SealSharkMcuUpdateActivity extends BaseActivity implements OnClickListener {
    b a = new b() {
        public void a(int i) {
            s.b(SealSharkMcuUpdateActivity.this.e, "inProgress:" + i);
            SealSharkMcuUpdateActivity.this.b.setProgress(i, STATE.UPDATING);
        }

        public void b(int i) {
            s.b(SealSharkMcuUpdateActivity.this.e, "onError:" + i);
            if (i == 0) {
                SealSharkMcuUpdateActivity.this.u = 6;
                SealSharkMcuUpdateActivity.this.f();
            } else if (i == 1) {
                SealSharkMcuUpdateActivity.this.u = 7;
                SealSharkMcuUpdateActivity.this.f();
            }
        }

        public void a() {
            s.b(SealSharkMcuUpdateActivity.this.e, "onSuccess");
            SealSharkMcuUpdateActivity.this.u = 5;
            SealSharkMcuUpdateActivity.this.f();
            if (w.ad() == 5) {
                w.h(false);
                w.c(Integer.parseInt(SealSharkMcuUpdateActivity.this.w.getVersionCode()));
            } else if (w.ad() == 4) {
                w.k(false);
                w.k(Integer.parseInt(SealSharkMcuUpdateActivity.this.w.getVersionCode()));
            }
        }
    };
    /* access modifiers changed from: private */
    public CircleProgress b;
    private FrameLayout c;
    private ImageView d;
    private TextView q;
    private TextView r;
    private TextView s;
    private TextView t;
    /* access modifiers changed from: private */
    public int u = 0;
    private boolean v;
    /* access modifiers changed from: private */
    public McuUpdateInfoModel w;
    private String x;
    private String y;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_seal_shark_mcu_update);
        this.x = getIntent().getExtras().getString("mcu_update_device_type");
        this.v = getIntent().getExtras().getBoolean("mcu_have_update");
        this.w = (McuUpdateInfoModel) getIntent().getExtras().getParcelable("mcu_update_info");
        this.y = getIntent().getAction();
        c();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, this.e);
        a.a().a((Object) this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
        a.a().b((Object) this);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.a = null;
        j.b();
    }

    @SuppressLint({"SetTextI18n"})
    private void c() {
        int G;
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.title_bar_right).setOnClickListener(this);
        this.s = (TextView) c(R.id.version_code_tv);
        this.b = (CircleProgress) c(R.id.progress);
        this.c = (FrameLayout) c(R.id.state_view_layout);
        this.d = (ImageView) c(R.id.iv_state_view);
        this.q = (TextView) c(R.id.tv_state);
        this.r = (TextView) c(R.id.tv_power_prompt);
        this.t = (TextView) c(R.id.btn_update);
        switch (w.ad()) {
            case 4:
                G = w.G();
                break;
            case 5:
                G = w.s();
                break;
            default:
                G = 0;
                break;
        }
        String str = null;
        if (G > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append((G / 16777216) % 256);
            sb.append(".");
            sb.append((G / 65536) % 256);
            sb.append(".");
            sb.append(G % 65536);
            str = sb.toString();
        }
        if (this.w == null || !this.v) {
            this.s.setText("");
            this.t.setVisibility(8);
            this.d.setImageResource(R.drawable.firmware_icon_success);
            if (str != null) {
                this.q.setText(ad.a((int) R.string.current_mcu_version_1, str));
                return;
            }
            return;
        }
        this.s.setText(getString(R.string.update_check_new) + " V" + this.w.getVersionName());
        this.t.setOnClickListener(this);
        if (this.y == null || !this.y.equals("mcu_update_action_from_main")) {
            this.r.setVisibility(0);
            if ("seal".equals(this.x)) {
                this.r.setText(R.string.please_sure_seal_device_have_3power);
            } else if ("shark".equals(this.x)) {
                this.r.setText("");
            }
            this.t.setVisibility(0);
        } else {
            d();
        }
        if (str != null) {
            this.q.setText(ad.a((int) R.string.current_mcu_version, str));
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                e();
                return;
            case R.id.title_bar_right /*2131755355*/:
                new e(this, ad.a((int) R.string.version_v) + this.w.getVersionName(), this.w.getInfo()).show();
                return;
            case R.id.btn_update /*2131755362*/:
                if (this.u == 5) {
                    finish();
                    return;
                } else if (!k.a().b()) {
                    v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                } else {
                    this.r.setVisibility(8);
                    d();
                    return;
                }
            default:
                return;
        }
    }

    private void d() {
        String source = this.w.getSource();
        String substring = source.substring(source.lastIndexOf(47) + 1);
        File file = new File(ad.a().getFilesDir().getAbsolutePath() + File.separator + substring);
        if (!file.exists()) {
            a(source, substring);
        } else if (t.b(file.toString()).equals(this.w.getMD5())) {
            this.u = 4;
            f();
            a(file.toString());
        } else {
            a(source, substring);
        }
    }

    public void a(String str, String str2) {
        this.u = 1;
        f();
        ((com.ifengyu.intercom.a.a.a) com.ifengyu.intercom.a.b.d().a(str)).a().b((com.ifengyu.intercom.a.b.b) new d(ad.a().getFilesDir().getAbsolutePath(), str2) {
            public void a(Call call, Exception exc, int i) {
                s.e(SealSharkMcuUpdateActivity.this.e, "onError :" + exc.getMessage());
                SealSharkMcuUpdateActivity.this.u = 3;
                SealSharkMcuUpdateActivity.this.f();
            }

            public void a(File file, int i) {
                if (file == null || !file.exists()) {
                    SealSharkMcuUpdateActivity.this.u = 3;
                    SealSharkMcuUpdateActivity.this.f();
                } else if (t.b(file.toString()).equals(SealSharkMcuUpdateActivity.this.w.getMD5())) {
                    SealSharkMcuUpdateActivity.this.u = 4;
                    SealSharkMcuUpdateActivity.this.f();
                    SealSharkMcuUpdateActivity.this.a(file.toString());
                } else {
                    SealSharkMcuUpdateActivity.this.u = 3;
                    SealSharkMcuUpdateActivity.this.f();
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(String str) {
        j.a().a(ad.a(), Integer.valueOf(1), str, this.a);
    }

    public void onBackPressed() {
        e();
    }

    private void e() {
        if (this.u == 0 || this.u == 3 || this.u == 5 || this.u == 6 || this.u == 7) {
            finish();
        } else {
            new com.ifengyu.intercom.ui.widget.dialog.d(this).b((CharSequence) ad.a((int) R.string.firmware_upgrading)).c((int) R.string.sure, (DialogInterface.OnClickListener) null).b().c();
        }
    }

    /* access modifiers changed from: private */
    public void f() {
        switch (this.u) {
            case 1:
                this.c.setVisibility(0);
                this.b.setVisibility(8);
                this.t.setVisibility(8);
                this.c.setBackground(getResources().getDrawable(R.drawable.firmware_icon_circle_blue));
                this.d.setImageResource(R.drawable.firmware_icon_upgrade);
                this.q.setText(R.string.mcu_downloading);
                return;
            case 3:
                this.c.setVisibility(0);
                this.b.setVisibility(8);
                this.t.setVisibility(0);
                this.c.setBackground(getResources().getDrawable(R.drawable.firmware_icon_gray));
                this.d.setImageResource(R.drawable.firmware_icon_fail);
                this.q.setText(R.string.mcu_download_fail_and_reload);
                this.t.setText(R.string.update_restart);
                return;
            case 4:
                this.c.setVisibility(8);
                this.b.setVisibility(0);
                this.t.setVisibility(8);
                this.s.setText(getString(R.string.update_to_newest_version) + this.w.getVersionName());
                this.q.setText(R.string.updating_not_close_device);
                this.b.setProgress(0, STATE.UPDATING);
                return;
            case 5:
                this.c.setVisibility(0);
                this.b.setVisibility(8);
                this.t.setVisibility(0);
                this.t.setText(R.string.common_ok);
                this.c.setBackground(getResources().getDrawable(R.drawable.firmware_icon_circle_blue));
                this.d.setImageResource(R.drawable.firmware_icon_success);
                this.s.setText(getString(R.string.had_udpate_to_newest_version) + this.w.getVersionName());
                this.q.setText(R.string.update_success);
                return;
            case 6:
                this.c.setVisibility(0);
                this.b.setVisibility(8);
                this.t.setVisibility(0);
                this.c.setBackground(getResources().getDrawable(R.drawable.firmware_icon_gray));
                this.d.setImageResource(R.drawable.firmware_icon_fail);
                this.s.setText(getString(R.string.update_check_new) + " V" + this.w.getVersionName());
                this.q.setText(R.string.update_failure);
                this.t.setText(R.string.update_restart);
                return;
            case 7:
                this.c.setVisibility(0);
                this.b.setVisibility(8);
                this.t.setVisibility(0);
                this.c.setBackground(getResources().getDrawable(R.drawable.firmware_icon_gray));
                this.d.setImageResource(R.drawable.firmware_icon_fail);
                this.q.setText(R.string.update_failure_due_to_low_power);
                this.t.setText(R.string.update_restart);
                return;
            default:
                return;
        }
    }
}
