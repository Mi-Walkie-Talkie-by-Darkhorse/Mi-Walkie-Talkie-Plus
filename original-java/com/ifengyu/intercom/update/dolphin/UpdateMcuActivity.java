package com.ifengyu.intercom.update.dolphin;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.t;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.network.OnDownloadListener;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.protos.MitalkProtos.POWERSTATE;
import com.ifengyu.intercom.protos.MitalkProtos.ParamUpdate;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.dialog.e;
import com.ifengyu.intercom.ui.widget.dialog.u;
import com.ifengyu.intercom.ui.widget.view.ProgressCircle;
import com.ifengyu.intercom.ui.widget.view.ProgressCircle.STATE;
import com.ifengyu.intercom.update.dolphin.UpdateManager.CHECK_CONDITION;
import com.ifengyu.intercom.update.dolphin.l.a;
import com.mi.milinkforgame.sdk.base.debug.TraceFormat;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.util.HashMap;

public class UpdateMcuActivity extends BaseActivity implements OnClickListener, OnDownloadListener, a {
    public static boolean a = false;
    /* access modifiers changed from: private */
    public String A;
    private TextView B;
    private int C;
    /* access modifiers changed from: private */
    public Runnable D;
    /* access modifiers changed from: private */
    public boolean E;
    private int F;
    private String G;
    private int H;
    /* access modifiers changed from: private */
    public ProgressCircle b;
    /* access modifiers changed from: private */
    public STATE c = STATE.START;
    private View d;
    private View q;
    private View r;
    private View s;
    private TextView t;
    /* access modifiers changed from: private */
    public l u;
    private boolean v;
    /* access modifiers changed from: private */
    public boolean w = false;
    /* access modifiers changed from: private */
    public int x;
    private final int y = 10;
    private String z;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_update_ble);
        com.ifengyu.intercom.eventbus.a.a().a((Object) this);
        this.d = (View) c(R.id.right_update_info_iv);
        this.d.setOnClickListener(this);
        this.q = (View) c(R.id.update_failure_layout);
        this.s = (View) c(R.id.update_sure_click);
        this.r = (View) c(R.id.update_start_click);
        this.b = (ProgressCircle) c(R.id.update_progress);
        this.t = (TextView) c(R.id.update_state);
        this.B = (TextView) findViewById(R.id.update_version);
        c();
        this.F = w.m();
        this.z = getIntent().getStringExtra("update_info_message");
        this.C = getIntent().getIntExtra("MCU_SERVER_VERSION_CODE", 1);
        if (this.z.equals("update_mcu_ble") || this.z.equals("update_mcu") || this.z.equals("update_diff_language")) {
            String str = (String) UpdateManager.a().e().get("versionName");
            if (str == null || str.length() <= 0 || str.equals("null")) {
                this.B.setText(getResources().getText(R.string.update_check_new));
            } else {
                this.B.setText(getResources().getText(R.string.update_check_new) + " V" + str);
            }
            findViewById(R.id.update_cancel_click).setOnClickListener(this);
            findViewById(R.id.update_restart_click).setOnClickListener(this);
            findViewById(R.id.title_bar_left).setOnClickListener(this);
            this.s.setOnClickListener(this);
            this.r.setOnClickListener(this);
            if (this.c != STATE.UPDATING) {
                this.c = STATE.START;
            }
            if (this.c != STATE.UPDATING || this.u == null) {
                this.u = new l(MiTalkiApp.a(), this, true);
            }
            UpdateManager.a().addDownloadListener(this);
            if ("com.ifengyu.intercom.FORM_MAIN".equals(getIntent().getAction())) {
                d();
            } else {
                a(this.c);
            }
        } else if (this.z.equals("update_all_is_newest")) {
            findViewById(R.id.update_ble_text).setVisibility(8);
            this.B.setVisibility(8);
            findViewById(R.id.title_bar_left).setOnClickListener(this);
            this.r.setVisibility(8);
            this.s.setVisibility(8);
            this.q.setVisibility(8);
            this.t.setVisibility(0);
            int l = w.l();
            StringBuilder sb = new StringBuilder();
            if (l > 0) {
                sb.append(TraceFormat.STR_VERBOSE);
                sb.append((l / 16777216) % 256);
                sb.append(".");
                sb.append((l / 65536) % 256);
                sb.append(".");
                sb.append(l % 65536);
                this.G = sb.toString();
                sb.append("\n\n");
            }
            sb.append(getText(R.string.up_2_date));
            s.b("UpdateMcuActivity", sb.toString());
            this.t.setText(sb.toString());
            this.b.setVisibility(8);
            findViewById(R.id.update_dev_is_newsest).setVisibility(0);
        }
    }

    private void c() {
        if (v.c((Context) this)) {
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.update_anim);
            LayoutParams layoutParams = new LayoutParams(-1, (int) v.a(200.0f));
            layoutParams.setMargins(0, (int) v.a(200.0f), 0, 0);
            relativeLayout.setLayoutParams(layoutParams);
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "UpdateMcuActivity");
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        com.ifengyu.intercom.eventbus.a.a().b((Object) this);
        if (this.c == STATE.FAILURE || this.c == STATE.SUCCESS) {
            this.c = STATE.START;
            this.u = null;
        }
        UpdateManager.a().removeDownloadListener(this);
    }

    /* access modifiers changed from: private */
    public void d() {
        this.x = 0;
        this.v = false;
        this.c = STATE.UPDATING;
        this.b.setProgress(this.x, this.c);
        a(this.c);
        f.a().b();
        this.E = true;
        this.w = true;
        this.D = new Runnable() {
            public void run() {
                UpdateMcuActivity.this.E = false;
                UpdateMcuActivity.this.w = false;
                UpdateMcuActivity.this.c = STATE.FAILURE;
                UpdateMcuActivity.this.b.setProgress(UpdateMcuActivity.this.x, UpdateMcuActivity.this.c);
                UpdateMcuActivity.this.a(UpdateMcuActivity.this.c);
            }
        };
        ad.a(this.D, 3000);
    }

    /* access modifiers changed from: private */
    public void a(int i, int i2) {
        s.b("UpdateMcuActivity", "versionMCU:" + i + "----versionBLE:" + i2);
        if (this.z.equals("update_mcu_ble") || this.z.equals("update_mcu") || this.z.equals("update_diff_language")) {
            UpdateManager.a().a(this, i, i2, CHECK_CONDITION.MCU);
        }
    }

    @Subscribe
    public void receiveParamUpdateEvent(final ParamUpdate paramUpdate) {
        if (this.E) {
            this.E = false;
            ad.a((Runnable) new Runnable() {
                public void run() {
                    if (UpdateMcuActivity.this.D != null) {
                        ad.b(UpdateMcuActivity.this.D);
                        UpdateMcuActivity.this.D = null;
                    }
                    if (!paramUpdate.hasLowPower() || paramUpdate.getLowPower() != POWERSTATE.PROHIBITEUPDATE) {
                        UpdateMcuActivity.this.b.setProgress(1, UpdateMcuActivity.this.c);
                        UpdateMcuActivity.this.a(paramUpdate.getVersionMCU(), paramUpdate.getVersionBLE());
                        return;
                    }
                    UpdateMcuActivity.this.k();
                    UpdateMcuActivity.this.c(ad.a((int) R.string.update_failure_due_to_low_power));
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void c(String str) {
        this.w = false;
        this.c = STATE.FAILURE;
        this.b.setProgress(this.x, this.c);
        this.r.setVisibility(8);
        this.s.setVisibility(8);
        this.q.setVisibility(0);
        this.t.setVisibility(0);
        this.t.setText(str);
    }

    public void a(String str, String str2) {
        if (str2 == null) {
            c(ad.a((int) R.string.update_failure_due_to_file_check_failed));
        } else if (!str2.equals(t.b(str))) {
            c(ad.a((int) R.string.update_failure_due_to_file_check_failed));
        } else {
            this.v = true;
            if (!a) {
                d(str);
            }
        }
    }

    public void a() {
        this.w = false;
        v.a((CharSequence) getString(R.string.net_error_please_check), false);
        this.c = STATE.FAILURE;
        a(this.c);
        this.b.setProgress(this.x, this.c);
    }

    private void d(String str) {
        this.A = str;
        a = true;
        this.b.setProgress(this.x, this.c);
        if (this.c == STATE.UPDATING) {
            runOnUiThread(new Runnable() {
                public void run() {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("type", Integer.valueOf(9));
                    contentValues.put("version", Integer.valueOf(w.a));
                    contentValues.put("filePath", UpdateMcuActivity.this.A);
                    UpdateMcuActivity.this.u.execute(new ContentValues[]{contentValues});
                }
            });
        }
    }

    public void a(int i, STATE state) {
        boolean z2 = false;
        this.c = state;
        if (s.a()) {
            s.a("UpdateMcuActivity", "progress:" + i + "--state-" + state);
        }
        this.b.setProgress(i, state);
        a(state);
        if (state == STATE.UPDATING) {
            this.H = i;
        } else if (state == STATE.FAILURE) {
            s.b("UpdateMcuActivity", "update faied,report state");
            HashMap hashMap = new HashMap();
            hashMap.put("userId", w.K());
            hashMap.put("userEmail", w.P());
            hashMap.put("versionMcu", String.valueOf(w.l()));
            hashMap.put("updateProgress", String.valueOf(this.H));
            hashMap.put("manufacturer", Build.MANUFACTURER);
            hashMap.put("brand", Build.BRAND);
            hashMap.put("model", Build.MODEL);
            hashMap.put("release", VERSION.RELEASE);
            MiStatInterface.recordCountEvent("user_firmware_upgrade", "firmware_upgrade_failed", hashMap);
            this.H = 0;
        }
        if (state == STATE.UPDATING) {
            z2 = true;
        }
        this.w = z2;
        if (i == 100 && state == STATE.SUCCESS) {
            HashMap e = UpdateManager.a().e();
            if (e != null) {
                if ("en_us".equals((String) e.get("lang")) && !w.ag()) {
                    com.ifengyu.intercom.a.a.b(w.K(), w.o(), (b) null);
                }
            }
            if ((this.z.equals("update_mcu") || this.z.equals("update_mcu_ble") || this.z.equals("update_diff_language")) && this.C > 1) {
                s.b("UpdateMcuActivity", "server mcu version code:" + this.C);
                w.a(this.C);
                MiStatInterface.recordNumericPropertyEvent("user_version_mcu", "version_mcu", (long) this.C);
            }
        }
    }

    public void a(String str) {
    }

    public void a(CHECK_CONDITION check_condition, boolean z2) {
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                f();
                return;
            case R.id.right_update_info_iv /*2131755405*/:
                q();
                return;
            case R.id.update_start_click /*2131755412*/:
                if (!v.a((Context) this)) {
                    v.a((CharSequence) getString(R.string.net_error_please_check), false);
                    return;
                } else if (e()) {
                    u uVar = new u(this);
                    uVar.a((u.a) new u.a() {
                        public void a() {
                            if (UpdateMcuActivity.this.c == STATE.START) {
                                UpdateMcuActivity.this.d();
                            }
                        }
                    });
                    uVar.show();
                    return;
                } else {
                    this.w = true;
                    if (this.c == STATE.START) {
                        d();
                        return;
                    }
                    return;
                }
            case R.id.update_sure_click /*2131755413*/:
                this.c = STATE.START;
                finish();
                return;
            case R.id.update_cancel_click /*2131755415*/:
                this.c = STATE.START;
                finish();
                return;
            case R.id.update_restart_click /*2131755416*/:
                this.w = true;
                if (this.c == STATE.FAILURE) {
                    if (this.z.equals("update_mcu") || this.z.equals("update_mcu_ble")) {
                        this.u = new l(MiTalkiApp.a(), this, true);
                    }
                    d();
                    return;
                }
                return;
            default:
                return;
        }
    }

    private boolean e() {
        if (v.a()) {
            if (w.p().equals("mcu_language_type_english")) {
                return false;
            }
            return true;
        } else if (!v.b() || w.p().equals("mcu_language_type_chinese")) {
            return false;
        } else {
            return true;
        }
    }

    public void onBackPressed() {
        f();
    }

    private void f() {
        if (this.w) {
            new d(this).b((CharSequence) ad.a((int) R.string.firmware_upgrading)).c((int) R.string.sure, (DialogInterface.OnClickListener) null).b().c();
        } else {
            finish();
        }
    }

    private void q() {
        HashMap e = UpdateManager.a().e();
        String str = ad.a((int) R.string.version_v) + ((String) e.get("versionName"));
        String str2 = (String) e.get("info");
        if (this.z.equals("update_all_is_newest") && this.G != null) {
            str = ad.a((int) R.string.version) + this.G;
        }
        new e(this, str, str2).show();
    }

    /* access modifiers changed from: private */
    public void a(STATE state) {
        switch (state) {
            case START:
                this.r.setVisibility(0);
                this.s.setVisibility(8);
                this.q.setVisibility(8);
                this.t.setVisibility(8);
                return;
            case UPDATING:
                this.r.setVisibility(8);
                this.s.setVisibility(8);
                this.q.setVisibility(8);
                this.t.setVisibility(8);
                return;
            case FAILURE:
                k();
                this.r.setVisibility(8);
                this.s.setVisibility(8);
                this.q.setVisibility(0);
                this.t.setVisibility(0);
                this.t.setText(getText(R.string.update_failure));
                return;
            case SUCCESS:
                this.B.setVisibility(8);
                this.r.setVisibility(8);
                this.s.setVisibility(0);
                this.q.setVisibility(8);
                this.t.setVisibility(0);
                this.t.setText(getText(R.string.update_success));
                return;
            default:
                return;
        }
    }
}
