package com.ifengyu.intercom.update.dolphin;

import android.content.ContentValues;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.a0;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.network.OnDownloadListener;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.f;
import com.ifengyu.intercom.ui.widget.dialog.g;
import com.ifengyu.intercom.ui.widget.dialog.t;
import com.ifengyu.intercom.ui.widget.view.ProgressCircle;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.intercom.update.dolphin.l;
import com.squareup.otto.Subscribe;
import com.umeng.analytics.MobclickAgent;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.mipush.sdk.Constants;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class UpdateMcuActivity extends BaseActivity implements View.OnClickListener, l.a, OnDownloadListener {
    public static boolean H = false;
    private String A;
    private String B;
    private TextView C;
    private int D;
    private Runnable E;
    private boolean F;
    private String G;
    private ProgressCircle q;
    private View s;
    private View t;
    private View u;
    private View v;
    private TextView w;
    private l x;
    private int z;
    private ProgressCircle.STATE r = ProgressCircle.STATE.START;
    private boolean y = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UpdateMcuActivity.this.F = false;
            UpdateMcuActivity.this.y = false;
            UpdateMcuActivity.this.r = ProgressCircle.STATE.FAILURE;
            UpdateMcuActivity.this.q.setProgress(UpdateMcuActivity.this.z, UpdateMcuActivity.this.r);
            UpdateMcuActivity updateMcuActivity = UpdateMcuActivity.this;
            updateMcuActivity.a(updateMcuActivity.r);
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MitalkProtos.ParamUpdate f7127a;

        b(MitalkProtos.ParamUpdate paramUpdate) {
            this.f7127a = paramUpdate;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (UpdateMcuActivity.this.E != null) {
                k0.b(UpdateMcuActivity.this.E);
                UpdateMcuActivity.this.E = null;
            }
            if (!this.f7127a.hasLowPower() || this.f7127a.getLowPower() != MitalkProtos.POWERSTATE.PROHIBITEUPDATE) {
                UpdateMcuActivity.this.q.setProgress(1, UpdateMcuActivity.this.r);
                UpdateMcuActivity.this.a(this.f7127a.getVersionMCU(), this.f7127a.getVersionBLE());
                return;
            }
            UpdateMcuActivity.this.j();
            UpdateMcuActivity.this.d(k0.c(R.string.update_failure_due_to_low_power));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", (Integer) 9);
            contentValues.put(Constants.VERSION, Integer.valueOf(d0.f5308a));
            contentValues.put("filePath", UpdateMcuActivity.this.B);
            UpdateMcuActivity.this.x.execute(contentValues);
        }
    }

    /* loaded from: classes2.dex */
    class d implements t.a {
        d() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.t.a
        public void a() {
            if (UpdateMcuActivity.this.r == ProgressCircle.STATE.START) {
                UpdateMcuActivity.this.z();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class e {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7131a;

        static {
            int[] iArr = new int[ProgressCircle.STATE.values().length];
            f7131a = iArr;
            try {
                iArr[ProgressCircle.STATE.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7131a[ProgressCircle.STATE.UPDATING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7131a[ProgressCircle.STATE.FAILURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7131a[ProgressCircle.STATE.SUCCESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private boolean A() {
        return c0.a() ? !d0.i().equals("mcu_language_type_english") : c0.b() && !d0.i().equals("mcu_language_type_chinese");
    }

    private void w() {
        if (c0.c(this)) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, (int) c0.a(200.0f));
            layoutParams.setMargins(0, (int) c0.a(200.0f), 0, 0);
            ((RelativeLayout) findViewById(R.id.update_anim)).setLayoutParams(layoutParams);
        }
    }

    private void x() {
        if (this.y) {
            f fVar = new f(this);
            fVar.a(k0.c(R.string.firmware_upgrading));
            fVar.b(R.string.sure, (DialogInterface.OnClickListener) null);
            fVar.a();
            fVar.d();
            return;
        }
        finish();
    }

    private void y() {
        HashMap<String, String> a2;
        String str = k0.c(R.string.version_v) + a2.get("versionName");
        String str2 = UpdateManager.d().a().get(XiaomiOAuthConstants.EXTRA_INFO);
        if (this.A.equals("update_all_is_newest") && this.G != null) {
            str = k0.c(R.string.version) + this.G;
        }
        new g(this, str, str2).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        this.z = 0;
        ProgressCircle.STATE state = ProgressCircle.STATE.UPDATING;
        this.r = state;
        this.q.setProgress(0, state);
        a(this.r);
        com.ifengyu.intercom.node.e.d().c();
        this.F = true;
        this.y = true;
        a aVar = new a();
        this.E = aVar;
        k0.a(aVar, 3000L);
    }

    @Override // com.ifengyu.intercom.network.OnDownloadListener
    public void a(String str) {
    }

    @Override // com.ifengyu.intercom.network.OnDownloadListener
    public void b(UpdateManager.CHECK_CONDITION check_condition, boolean z) {
    }

    @Override // com.ifengyu.intercom.network.OnDownloadListener
    public void h() {
        this.y = false;
        c0.a((CharSequence) getString(R.string.net_error_please_check), false);
        ProgressCircle.STATE state = ProgressCircle.STATE.FAILURE;
        this.r = state;
        a(state);
        this.q.setProgress(this.z, this.r);
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        x();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.right_update_info_iv /* 2131297103 */:
                y();
                return;
            case R.id.title_bar_left /* 2131297305 */:
                x();
                return;
            case R.id.update_cancel_click /* 2131297454 */:
                this.r = ProgressCircle.STATE.START;
                finish();
                return;
            case R.id.update_restart_click /* 2131297459 */:
                this.y = true;
                if (this.r == ProgressCircle.STATE.FAILURE) {
                    if (this.A.equals("update_mcu") || this.A.equals("update_mcu_ble")) {
                        this.x = new l(MiTalkiApp.b(), this, true);
                    }
                    z();
                    return;
                }
                return;
            case R.id.update_start_click /* 2131297460 */:
                if (!c0.b(this)) {
                    c0.a((CharSequence) getString(R.string.net_error_please_check), false);
                    return;
                } else if (A()) {
                    t tVar = new t(this);
                    tVar.a(new d());
                    tVar.show();
                    return;
                } else {
                    this.y = true;
                    if (this.r == ProgressCircle.STATE.START) {
                        z();
                        return;
                    }
                    return;
                }
            case R.id.update_sure_click /* 2131297462 */:
                this.r = ProgressCircle.STATE.START;
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_update_ble);
        com.ifengyu.intercom.eventbus.a.a().b(this);
        View view = (View) a(R.id.right_update_info_iv);
        this.s = view;
        view.setOnClickListener(this);
        this.t = (View) a(R.id.update_failure_layout);
        this.v = (View) a(R.id.update_sure_click);
        this.u = (View) a(R.id.update_start_click);
        this.q = (ProgressCircle) a(R.id.update_progress);
        this.w = (TextView) a(R.id.update_state);
        this.C = (TextView) findViewById(R.id.update_version);
        w();
        d0.k();
        this.A = getIntent().getStringExtra("update_info_message");
        this.D = getIntent().getIntExtra("MCU_SERVER_VERSION_CODE", 1);
        if (this.A.equals("update_mcu_ble") || this.A.equals("update_mcu") || this.A.equals("update_diff_language")) {
            String str = UpdateManager.d().a().get("versionName");
            if (str == null || str.length() <= 0 || str.equals("null")) {
                this.C.setText(getResources().getText(R.string.update_check_new));
            } else {
                TextView textView = this.C;
                textView.setText(((Object) getResources().getText(R.string.update_check_new)) + " V" + str);
            }
            findViewById(R.id.update_cancel_click).setOnClickListener(this);
            findViewById(R.id.update_restart_click).setOnClickListener(this);
            findViewById(R.id.title_bar_left).setOnClickListener(this);
            this.v.setOnClickListener(this);
            this.u.setOnClickListener(this);
            if (this.r != ProgressCircle.STATE.UPDATING) {
                this.r = ProgressCircle.STATE.START;
            }
            if (this.r != ProgressCircle.STATE.UPDATING || this.x == null) {
                this.x = new l(MiTalkiApp.b(), this, true);
            }
            UpdateManager.d().addDownloadListener(this);
            if ("com.ifengyu.intercom.FORM_MAIN".equals(getIntent().getAction())) {
                z();
            } else {
                a(this.r);
            }
        } else if (this.A.equals("update_all_is_newest")) {
            findViewById(R.id.update_ble_text).setVisibility(8);
            this.C.setVisibility(8);
            findViewById(R.id.title_bar_left).setOnClickListener(this);
            this.u.setVisibility(8);
            this.v.setVisibility(8);
            this.t.setVisibility(8);
            this.w.setVisibility(0);
            int l = d0.l();
            StringBuilder sb = new StringBuilder();
            if (l > 0) {
                sb.append("V");
                sb.append((l / 16777216) % 256);
                sb.append(".");
                sb.append((l / 65536) % 256);
                sb.append(".");
                sb.append(l % 65536);
                this.G = sb.toString();
                sb.append("\n\n");
            }
            sb.append(getText(R.string.up_2_date));
            z.a("UpdateMcuActivity", sb.toString());
            this.w.setText(sb.toString());
            this.q.setVisibility(8);
            findViewById(R.id.update_dev_is_newsest).setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.ifengyu.intercom.eventbus.a.a().c(this);
        ProgressCircle.STATE state = this.r;
        if (state == ProgressCircle.STATE.FAILURE || state == ProgressCircle.STATE.SUCCESS) {
            this.r = ProgressCircle.STATE.START;
            this.x = null;
        }
        UpdateManager.d().removeDownloadListener(this);
    }

    @Subscribe
    public void receiveParamUpdateEvent(MitalkProtos.ParamUpdate paramUpdate) {
        if (this.F) {
            this.F = false;
            k0.a(new b(paramUpdate));
        }
    }

    private void c(String str) {
        this.B = str;
        H = true;
        this.q.setProgress(this.z, this.r);
        if (this.r == ProgressCircle.STATE.UPDATING) {
            runOnUiThread(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        this.y = false;
        ProgressCircle.STATE state = ProgressCircle.STATE.FAILURE;
        this.r = state;
        this.q.setProgress(this.z, state);
        this.u.setVisibility(8);
        this.v.setVisibility(8);
        this.t.setVisibility(0);
        this.w.setVisibility(0);
        this.w.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        z.a("UpdateMcuActivity", "versionMCU:" + i + "----versionBLE:" + i2);
        if (this.A.equals("update_mcu_ble") || this.A.equals("update_mcu") || this.A.equals("update_diff_language")) {
            UpdateManager.d().a(this, i, i2, UpdateManager.CHECK_CONDITION.MCU);
        }
    }

    @Override // com.ifengyu.intercom.network.OnDownloadListener
    public void a(String str, String str2) {
        if (str2 == null) {
            d(k0.c(R.string.update_failure_due_to_file_check_failed));
        } else if (!str2.equals(a0.a(str))) {
            d(k0.c(R.string.update_failure_due_to_file_check_failed));
        } else if (!H) {
            c(str);
        }
    }

    @Override // com.ifengyu.intercom.update.dolphin.l.a
    public void a(int i, ProgressCircle.STATE state) {
        Object obj;
        String str;
        this.r = state;
        if (z.c()) {
            z.d("UpdateMcuActivity", "progress:" + i + "--state-" + state);
        }
        this.q.setProgress(i, state);
        a(state);
        if (state != ProgressCircle.STATE.UPDATING && state == ProgressCircle.STATE.FAILURE) {
            z.a("UpdateMcuActivity", "update faied,report state");
            HashMap hashMap = new HashMap();
            str = "UpdateMcuActivity";
            hashMap.put("userId", d0.N());
            hashMap.put("email", d0.L());
            int l = d0.l();
            obj = "email";
            hashMap.put("fromVersionCode", String.valueOf(l));
            hashMap.put("fromVersionName", com.ifengyu.intercom.lite.utils.l.a(l));
            hashMap.put("toVersionCode", String.valueOf(this.D));
            hashMap.put("toVersionName", com.ifengyu.intercom.lite.utils.l.a(this.D));
            hashMap.put("upgradeProgress", String.valueOf(i));
            hashMap.put("mobileManufacturer", Build.MANUFACTURER);
            hashMap.put("mobileBrand", Build.BRAND);
            hashMap.put("mobileModel", Build.MODEL);
            hashMap.put("mobileRelease", Build.VERSION.RELEASE);
            MobclickAgent.onEventObject(MiTalkiApp.b(), "Dolphin_Firmware_Upgrade_Failure", hashMap);
        } else {
            str = "UpdateMcuActivity";
            obj = "email";
        }
        this.y = state == ProgressCircle.STATE.UPDATING;
        if (i == 100 && state == ProgressCircle.STATE.SUCCESS) {
            HashMap<String, String> a2 = UpdateManager.d().a();
            if (a2 != null && "en_us".equals(a2.get("lang")) && !d0.U()) {
                com.ifengyu.intercom.g.a.b(d0.N(), d0.h(), (com.ifengyu.intercom.g.d.b) null);
            }
            if ((this.A.equals("update_mcu") || this.A.equals("update_mcu_ble") || this.A.equals("update_diff_language")) && this.D > 1) {
                z.a(str, "server mcu version code:" + this.D);
                HashMap hashMap2 = new HashMap();
                hashMap2.put("userId", d0.N());
                hashMap2.put(obj, d0.L());
                int l2 = d0.l();
                hashMap2.put("fromVersionCode", String.valueOf(l2));
                hashMap2.put("fromVersionName", com.ifengyu.intercom.lite.utils.l.a(l2));
                hashMap2.put("toVersionCode", String.valueOf(this.D));
                hashMap2.put("toVersionName", com.ifengyu.intercom.lite.utils.l.a(this.D));
                hashMap2.put("upgradeProgress", String.valueOf(i));
                hashMap2.put("mobileManufacturer", Build.MANUFACTURER);
                hashMap2.put("mobileBrand", Build.BRAND);
                hashMap2.put("mobileModel", Build.MODEL);
                hashMap2.put("mobileRelease", Build.VERSION.RELEASE);
                MobclickAgent.onEventObject(MiTalkiApp.b(), "Dolphin_Firmware_Upgrade_Success", hashMap2);
                d0.b(this.D);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ProgressCircle.STATE state) {
        int i = e.f7131a[state.ordinal()];
        if (i == 1) {
            this.u.setVisibility(0);
            this.v.setVisibility(8);
            this.t.setVisibility(8);
            this.w.setVisibility(8);
        } else if (i == 2) {
            this.u.setVisibility(8);
            this.v.setVisibility(8);
            this.t.setVisibility(8);
            this.w.setVisibility(8);
        } else if (i == 3) {
            j();
            this.u.setVisibility(8);
            this.v.setVisibility(8);
            this.t.setVisibility(0);
            this.w.setVisibility(0);
            this.w.setText(getText(R.string.update_failure));
        } else if (i == 4) {
            this.C.setVisibility(8);
            this.u.setVisibility(8);
            this.v.setVisibility(0);
            this.t.setVisibility(8);
            this.w.setVisibility(0);
            this.w.setText(getText(R.string.update_success));
        }
    }
}
