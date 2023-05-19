package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateMcuTask;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.httpold.download.OnDownloadListener;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p189l.p190a.p197d.VersionUtil;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MD5Util;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.DeviceUpdateLogInfoDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.McuContinueUpdateDialog;
import com.ifengyu.intercom.p216ui.widget.view.ProgressCircle;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.UIUtils;
import com.squareup.otto.Subscribe;
import com.umeng.analytics.MobclickAgent;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.mipush.sdk.Constants;
import java.util.HashMap;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class DolphinUpdateMcuActivity extends BaseActivity1 implements View.OnClickListener, DolphinUpdateMcuTask.InterfaceC3609a, OnDownloadListener {

    /* renamed from: B */
    public static boolean f12964B = false;

    /* renamed from: A */
    private String f12965A;

    /* renamed from: j */
    private ProgressCircle f12966j;

    /* renamed from: l */
    private View f12968l;

    /* renamed from: m */
    private View f12969m;

    /* renamed from: n */
    private View f12970n;

    /* renamed from: o */
    private View f12971o;

    /* renamed from: p */
    private TextView f12972p;

    /* renamed from: q */
    private DolphinUpdateMcuTask f12973q;

    /* renamed from: s */
    private int f12975s;

    /* renamed from: t */
    private String f12976t;

    /* renamed from: u */
    private String f12977u;

    /* renamed from: v */
    private TextView f12978v;

    /* renamed from: w */
    private int f12979w;

    /* renamed from: x */
    private Runnable f12980x;

    /* renamed from: y */
    private boolean f12981y;

    /* renamed from: z */
    private String f12982z;

    /* renamed from: k */
    private ProgressCircle.STATE f12967k = ProgressCircle.STATE.START;

    /* renamed from: r */
    private boolean f12974r = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateMcuActivity$a */
    /* loaded from: classes2.dex */
    public class RunnableC3595a implements Runnable {
        RunnableC3595a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinUpdateMcuActivity.this.f12981y = false;
            DolphinUpdateMcuActivity.this.f12974r = false;
            DolphinUpdateMcuActivity.this.f12967k = ProgressCircle.STATE.FAILURE;
            DolphinUpdateMcuActivity.this.f12966j.setProgress(DolphinUpdateMcuActivity.this.f12975s, DolphinUpdateMcuActivity.this.f12967k);
            DolphinUpdateMcuActivity dolphinUpdateMcuActivity = DolphinUpdateMcuActivity.this;
            dolphinUpdateMcuActivity.m13163b0(dolphinUpdateMcuActivity.f12967k);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateMcuActivity$b */
    /* loaded from: classes2.dex */
    class RunnableC3596b implements Runnable {

        /* renamed from: a */
        final /* synthetic */ MitalkProtos.ParamUpdate f12984a;

        RunnableC3596b(MitalkProtos.ParamUpdate paramUpdate) {
            this.f12984a = paramUpdate;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DolphinUpdateMcuActivity.this.f12980x != null) {
                UIUtils.m8596v(DolphinUpdateMcuActivity.this.f12980x);
                DolphinUpdateMcuActivity.this.f12980x = null;
            }
            if (!this.f12984a.hasLowPower() || this.f12984a.getLowPower() != MitalkProtos.POWERSTATE.PROHIBITEUPDATE) {
                DolphinUpdateMcuActivity.this.f12966j.setProgress(1, DolphinUpdateMcuActivity.this.f12967k);
                DolphinUpdateMcuActivity.this.m13162c0(this.f12984a.getVersionMCU(), this.f12984a.getVersionBLE());
                return;
            }
            DolphinUpdateMcuActivity.this.m10283n();
            DolphinUpdateMcuActivity.this.m13160e0(UIUtils.m8603o(R.string.update_failure_due_to_low_power));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateMcuActivity$c */
    /* loaded from: classes2.dex */
    public class RunnableC3597c implements Runnable {
        RunnableC3597c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", (Integer) 9);
            contentValues.put(Constants.VERSION, Integer.valueOf(MiTalkClientUtil.f14440a));
            contentValues.put("filePath", DolphinUpdateMcuActivity.this.f12977u);
            DolphinUpdateMcuActivity.this.f12973q.execute(contentValues);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateMcuActivity$d */
    /* loaded from: classes2.dex */
    public class C3598d extends ErrorConsumer {
        C3598d(DolphinUpdateMcuActivity dolphinUpdateMcuActivity) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("UpdateMcuActivity", "activateDevice fail");
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateMcuActivity$e */
    /* loaded from: classes2.dex */
    class C3599e implements McuContinueUpdateDialog.InterfaceC4929a {
        C3599e() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.McuContinueUpdateDialog.InterfaceC4929a
        /* renamed from: a */
        public void mo8929a() {
            if (DolphinUpdateMcuActivity.this.f12967k == ProgressCircle.STATE.START) {
                DolphinUpdateMcuActivity.this.m13166Y();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateMcuActivity$f */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3600f {

        /* renamed from: a */
        static final /* synthetic */ int[] f12988a;

        static {
            int[] iArr = new int[ProgressCircle.STATE.values().length];
            f12988a = iArr;
            try {
                iArr[ProgressCircle.STATE.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12988a[ProgressCircle.STATE.UPDATING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12988a[ProgressCircle.STATE.FAILURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12988a[ProgressCircle.STATE.SUCCESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: U */
    private void m13170U(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("deviceId", str);
        hashMap.put("active", 2);
        AppServiceClient.m11355a().m11390Q(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(C3604d.f12993a, new C3598d(this));
    }

    /* renamed from: V */
    private void m13169V() {
        if (MethodsUtils.m11308B(this)) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, (int) MethodsUtils.m11292h(200.0f));
            layoutParams.setMargins(0, (int) MethodsUtils.m11292h(200.0f), 0, 0);
            ((RelativeLayout) findViewById(R.id.update_anim)).setLayoutParams(layoutParams);
        }
    }

    /* renamed from: W */
    private void m13168W() {
        if (this.f12974r) {
            CommonDialog commonDialog = new CommonDialog(this);
            commonDialog.m9025l(UIUtils.m8603o(R.string.firmware_upgrading));
            commonDialog.m9022o(R.string.sure, null);
            commonDialog.m9032e();
            commonDialog.m9016u();
            return;
        }
        finish();
    }

    /* renamed from: X */
    private void m13167X() {
        HashMap<String, String> m13108g;
        String str = UIUtils.m8603o(R.string.version_v) + m13108g.get("versionName");
        String str2 = DolphinUpdateManager.m13109f().m13108g().get(XiaomiOAuthConstants.EXTRA_INFO);
        if (this.f12976t.equals("update_type_all_is_newest") && this.f12982z != null) {
            str = UIUtils.m8603o(R.string.version) + this.f12982z;
        }
        new DeviceUpdateLogInfoDialog(this, str, str2).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y */
    public void m13166Y() {
        this.f12975s = 0;
        ProgressCircle.STATE state = ProgressCircle.STATE.UPDATING;
        this.f12967k = state;
        this.f12966j.setProgress(0, state);
        m13163b0(this.f12967k);
        BleCoreClient.m12373n().m12378i(this.f12965A).m12317p1();
        this.f12981y = true;
        this.f12974r = true;
        RunnableC3595a runnableC3595a = new RunnableC3595a();
        this.f12980x = runnableC3595a;
        UIUtils.m8599s(runnableC3595a, 3000L);
    }

    /* renamed from: Z */
    private boolean m13165Z() {
        return MethodsUtils.m11297c() ? !MiTalkClientUtil.m11209h().equals("mcu_language_type_english") : MethodsUtils.m11296d() && !MiTalkClientUtil.m11209h().equals("mcu_language_type_chinese");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b0 */
    public void m13163b0(ProgressCircle.STATE state) {
        int i = C3600f.f12988a[state.ordinal()];
        if (i == 1) {
            this.f12970n.setVisibility(0);
            this.f12971o.setVisibility(8);
            this.f12969m.setVisibility(8);
            this.f12972p.setVisibility(8);
        } else if (i == 2) {
            this.f12970n.setVisibility(8);
            this.f12971o.setVisibility(8);
            this.f12969m.setVisibility(8);
            this.f12972p.setVisibility(8);
        } else if (i == 3) {
            m10283n();
            this.f12970n.setVisibility(8);
            this.f12971o.setVisibility(8);
            this.f12969m.setVisibility(0);
            this.f12972p.setVisibility(0);
            this.f12972p.setText(getText(R.string.update_failure));
        } else if (i != 4) {
        } else {
            this.f12978v.setVisibility(8);
            this.f12970n.setVisibility(8);
            this.f12971o.setVisibility(0);
            this.f12969m.setVisibility(8);
            this.f12972p.setVisibility(0);
            this.f12972p.setText(getText(R.string.update_success));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c0 */
    public void m13162c0(int i, int i2) {
        C4161y.m11054a("UpdateMcuActivity", "versionMCU:" + i + " versionBLE:" + i2);
        if (this.f12976t.equals("update_type_mcu_ble") || this.f12976t.equals("update_type_mcu") || this.f12976t.equals("update_diff_language")) {
            DolphinUpdateManager.m13109f().m13110e(i, i2, null);
        }
    }

    /* renamed from: d0 */
    private void m13161d0(String str) {
        this.f12977u = str;
        f12964B = true;
        this.f12966j.setProgress(this.f12975s, this.f12967k);
        if (this.f12967k == ProgressCircle.STATE.UPDATING) {
            runOnUiThread(new RunnableC3597c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e0 */
    public void m13160e0(String str) {
        this.f12974r = false;
        ProgressCircle.STATE state = ProgressCircle.STATE.FAILURE;
        this.f12967k = state;
        this.f12966j.setProgress(this.f12975s, state);
        this.f12970n.setVisibility(8);
        this.f12971o.setVisibility(8);
        this.f12969m.setVisibility(0);
        this.f12972p.setVisibility(0);
        this.f12972p.setText(str);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateMcuTask.InterfaceC3609a
    /* renamed from: a */
    public void mo13091a(int i, ProgressCircle.STATE state) {
        String str;
        Object obj;
        this.f12967k = state;
        if (C4161y.m11046i()) {
            C4161y.m11043l("UpdateMcuActivity", "progress:" + i + "--state-" + state);
        }
        this.f12966j.setProgress(i, state);
        m13163b0(state);
        ProgressCircle.STATE state2 = ProgressCircle.STATE.UPDATING;
        if (state != state2 && state == ProgressCircle.STATE.FAILURE) {
            C4161y.m11054a("UpdateMcuActivity", "update faied,report state");
            HashMap hashMap = new HashMap();
            str = "UpdateMcuActivity";
            hashMap.put("userId", MiTalkClientUtil.m11243P());
            hashMap.put("email", MiTalkClientUtil.m11247N());
            int m11203k = MiTalkClientUtil.m11203k();
            obj = "email";
            hashMap.put("fromVersionCode", String.valueOf(m11203k));
            hashMap.put("fromVersionName", VersionUtil.m11802a(m11203k));
            hashMap.put("toVersionCode", String.valueOf(this.f12979w));
            hashMap.put("toVersionName", VersionUtil.m11802a(this.f12979w));
            hashMap.put("upgradeProgress", String.valueOf(i));
            hashMap.put("mobileManufacturer", Build.MANUFACTURER);
            hashMap.put("mobileBrand", Build.BRAND);
            hashMap.put("mobileModel", Build.MODEL);
            hashMap.put("mobileRelease", Build.VERSION.RELEASE);
            MobclickAgent.onEventObject(MiTalkiApp.m14296h(), "Dolphin_Firmware_Upgrade_Failure", hashMap);
        } else {
            str = "UpdateMcuActivity";
            obj = "email";
        }
        this.f12974r = state == state2;
        if (i == 100 && state == ProgressCircle.STATE.SUCCESS) {
            HashMap<String, String> m13108g = DolphinUpdateManager.m13109f().m13108g();
            if (m13108g != null && "en_us".equals(m13108g.get("lang")) && !BleCoreClient.m12373n().m12378i(this.f12965A).m12361D0()) {
                m13170U(MiTalkClientUtil.m11211g());
            }
            if ((this.f12976t.equals("update_type_mcu") || this.f12976t.equals("update_type_mcu_ble") || this.f12976t.equals("update_diff_language")) && this.f12979w > 1) {
                C4161y.m11054a(str, "server mcu version code:" + this.f12979w);
                HashMap hashMap2 = new HashMap();
                hashMap2.put("userId", MiTalkClientUtil.m11243P());
                hashMap2.put(obj, MiTalkClientUtil.m11247N());
                int m11203k2 = MiTalkClientUtil.m11203k();
                hashMap2.put("fromVersionCode", String.valueOf(m11203k2));
                hashMap2.put("fromVersionName", VersionUtil.m11802a(m11203k2));
                hashMap2.put("toVersionCode", String.valueOf(this.f12979w));
                hashMap2.put("toVersionName", VersionUtil.m11802a(this.f12979w));
                hashMap2.put("upgradeProgress", String.valueOf(i));
                hashMap2.put("mobileManufacturer", Build.MANUFACTURER);
                hashMap2.put("mobileBrand", Build.BRAND);
                hashMap2.put("mobileModel", Build.MODEL);
                hashMap2.put("mobileRelease", Build.VERSION.RELEASE);
                MobclickAgent.onEventObject(MiTalkiApp.m14296h(), "Dolphin_Firmware_Upgrade_Success", hashMap2);
                MiTalkClientUtil.m11212f0(this.f12979w);
            }
        }
    }

    @Override // com.ifengyu.intercom.httpold.download.OnDownloadListener
    /* renamed from: b */
    public void mo12392b(String str, String str2) {
        String m11041a = MD5Util.m11041a(str);
        if (!TextUtils.isEmpty(str2) && str2.equals(m11041a)) {
            if (f12964B) {
                return;
            }
            m13161d0(str);
            return;
        }
        m13160e0(UIUtils.m8603o(R.string.update_failure_due_to_file_check_failed));
    }

    @Override // com.ifengyu.intercom.httpold.download.OnDownloadListener
    /* renamed from: j */
    public void mo12391j() {
        this.f12974r = false;
        UIUtils.m8593y(R.string.net_work_error_pls_retry);
        ProgressCircle.STATE state = ProgressCircle.STATE.FAILURE;
        this.f12967k = state;
        m13163b0(state);
        this.f12966j.setProgress(this.f12975s, this.f12967k);
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m13168W();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.right_update_info_iv /* 2131297213 */:
                m13167X();
                return;
            case R.id.title_bar_left /* 2131297422 */:
                m13168W();
                return;
            case R.id.update_cancel_click /* 2131297563 */:
            case R.id.update_sure_click /* 2131297571 */:
                this.f12967k = ProgressCircle.STATE.START;
                finish();
                return;
            case R.id.update_restart_click /* 2131297568 */:
                this.f12974r = true;
                if (this.f12967k == ProgressCircle.STATE.FAILURE) {
                    if (this.f12976t.equals("update_type_mcu") || this.f12976t.equals("update_type_mcu_ble")) {
                        this.f12973q = new DolphinUpdateMcuTask(MiTalkiApp.m14296h(), this, true, this.f12965A);
                    }
                    m13166Y();
                    return;
                }
                return;
            case R.id.update_start_click /* 2131297569 */:
                if (!MethodsUtils.m11274z(this)) {
                    UIUtils.m8593y(R.string.net_work_error_pls_retry);
                    return;
                } else if (m13165Z()) {
                    McuContinueUpdateDialog mcuContinueUpdateDialog = new McuContinueUpdateDialog(this);
                    mcuContinueUpdateDialog.m8930h(new C3599e());
                    mcuContinueUpdateDialog.show();
                    return;
                } else {
                    this.f12974r = true;
                    if (this.f12967k == ProgressCircle.STATE.START) {
                        m13166Y();
                        return;
                    }
                    return;
                }
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_update_ble);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f12965A = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        MiBus.getInstance().m6411j(this);
        View view = (View) m10282o(R.id.right_update_info_iv);
        this.f12968l = view;
        view.setOnClickListener(this);
        this.f12969m = (View) m10282o(R.id.update_failure_layout);
        this.f12971o = (View) m10282o(R.id.update_sure_click);
        this.f12970n = (View) m10282o(R.id.update_start_click);
        this.f12966j = (ProgressCircle) m10282o(R.id.update_progress);
        this.f12972p = (TextView) m10282o(R.id.update_state);
        this.f12978v = (TextView) findViewById(R.id.update_version);
        m13169V();
        MiTalkClientUtil.m11205j();
        this.f12976t = getIntent().getStringExtra("key_update_type");
        this.f12979w = getIntent().getIntExtra("key_mcu_server_version_code", 1);
        if (!this.f12976t.equals("update_type_mcu_ble") && !this.f12976t.equals("update_type_mcu") && !this.f12976t.equals("update_diff_language")) {
            if (this.f12976t.equals("update_type_all_is_newest")) {
                findViewById(R.id.update_ble_text).setVisibility(8);
                this.f12978v.setVisibility(8);
                findViewById(R.id.title_bar_left).setOnClickListener(this);
                this.f12970n.setVisibility(8);
                this.f12971o.setVisibility(8);
                this.f12969m.setVisibility(8);
                this.f12972p.setVisibility(0);
                int m11203k = MiTalkClientUtil.m11203k();
                StringBuilder sb = new StringBuilder();
                if (m11203k > 0) {
                    sb.append("V");
                    sb.append((m11203k / 16777216) % 256);
                    sb.append(".");
                    sb.append((m11203k / 65536) % 256);
                    sb.append(".");
                    sb.append(m11203k % 65536);
                    this.f12982z = sb.toString();
                    sb.append("\n\n");
                }
                sb.append(getText(R.string.up_2_date));
                C4161y.m11054a("UpdateMcuActivity", sb.toString());
                this.f12972p.setText(sb.toString());
                this.f12966j.setVisibility(8);
                findViewById(R.id.update_dev_is_newsest).setVisibility(0);
                return;
            }
            return;
        }
        String str = DolphinUpdateManager.m13109f().m13108g().get("versionName");
        if (str != null && str.length() > 0 && !str.equals("null")) {
            TextView textView = this.f12978v;
            textView.setText(((Object) getResources().getText(R.string.update_check_new)) + " V" + str);
        } else {
            this.f12978v.setText(getResources().getText(R.string.update_check_new));
        }
        findViewById(R.id.update_cancel_click).setOnClickListener(this);
        findViewById(R.id.update_restart_click).setOnClickListener(this);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        this.f12971o.setOnClickListener(this);
        this.f12970n.setOnClickListener(this);
        ProgressCircle.STATE state = this.f12967k;
        ProgressCircle.STATE state2 = ProgressCircle.STATE.UPDATING;
        if (state != state2) {
            this.f12967k = ProgressCircle.STATE.START;
        }
        if (this.f12967k != state2 || this.f12973q == null) {
            this.f12973q = new DolphinUpdateMcuTask(MiTalkiApp.m14296h(), this, true, this.f12965A);
        }
        DolphinUpdateManager.m13109f().addDownloadListener(this);
        if ("com.ifengyu.intercom.ACTION_UPDATE_IMMEDIATELY".equals(getIntent().getAction())) {
            m13166Y();
        } else {
            m13163b0(this.f12967k);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        MiBus.getInstance().m6409l(this);
        ProgressCircle.STATE state = this.f12967k;
        if (state == ProgressCircle.STATE.FAILURE || state == ProgressCircle.STATE.SUCCESS) {
            this.f12967k = ProgressCircle.STATE.START;
            this.f12973q = null;
        }
        DolphinUpdateManager.m13109f().removeDownloadListener(this);
        DolphinUpdateMcuTask dolphinUpdateMcuTask = this.f12973q;
        if (dolphinUpdateMcuTask != null) {
            dolphinUpdateMcuTask.m13092d(null);
        }
    }

    @Subscribe
    public void receiveParamUpdateEvent(MitalkProtos.ParamUpdate paramUpdate) {
        if (this.f12981y) {
            this.f12981y = false;
            UIUtils.m8598t(new RunnableC3596b(paramUpdate));
        }
    }
}
