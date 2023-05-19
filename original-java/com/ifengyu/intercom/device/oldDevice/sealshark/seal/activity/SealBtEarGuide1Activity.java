package com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.sealshark.SealSharkMcuUpdateActivity;
import com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBtEarGuide1Activity;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.utils.UIUtils;
import io.reactivex.functions.Consumer;

/* loaded from: classes2.dex */
public class SealBtEarGuide1Activity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private Runnable f13240j;

    /* renamed from: k */
    private String f13241k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBtEarGuide1Activity$a */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnClickListenerC3675a implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3675a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SealBtEarGuide1Activity.this.m12887K();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBtEarGuide1Activity$b */
    /* loaded from: classes2.dex */
    public class RunnableC3676b implements Runnable {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBtEarGuide1Activity$b$a */
        /* loaded from: classes2.dex */
        class RunnableC3677a implements Runnable {
            RunnableC3677a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealBtEarGuide1Activity.this.m10283n();
            }
        }

        RunnableC3676b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealBtEarGuide1Activity sealBtEarGuide1Activity = SealBtEarGuide1Activity.this;
            sealBtEarGuide1Activity.m10275v(sealBtEarGuide1Activity.getString(R.string.request_time_out));
            SealBtEarGuide1Activity.this.m10277t(R.drawable.load_fail);
            UIUtils.m8599s(new RunnableC3677a(), 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBtEarGuide1Activity$c */
    /* loaded from: classes2.dex */
    public class C3678c extends ErrorConsumer {
        C3678c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m12884d() {
            SealBtEarGuide1Activity.this.m10283n();
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
            UIUtils.m8596v(SealBtEarGuide1Activity.this.f13240j);
            SealBtEarGuide1Activity.this.m10275v(NewHttpHelper.m8714a(newApiException.m8703a()));
            SealBtEarGuide1Activity.this.m10277t(R.drawable.load_fail);
            UIUtils.m8599s(new Runnable() { // from class: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.a
                @Override // java.lang.Runnable
                public final void run() {
                    SealBtEarGuide1Activity.C3678c.this.m12884d();
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public /* synthetic */ void m12888J(VersionInfo versionInfo) throws Exception {
        String str = this.f15055a;
        C4161y.m11049f(str, "getVersionCode:" + versionInfo.getVersionCode());
        UIUtils.m8596v(this.f13240j);
        m10283n();
        versionInfo.getVersionCode();
        int m11265E = MiTalkClientUtil.m11265E();
        Intent intent = new Intent(this, SealSharkMcuUpdateActivity.class);
        intent.putExtra("mcu_update_device_type", "seal");
        if (m11265E <= 0 || !versionInfo.isHasNewVersion()) {
            return;
        }
        intent.putExtra("device_mac_address", this.f13241k);
        intent.putExtra("mcu_have_update", true);
        intent.putExtra("mcu_update_info", versionInfo);
        intent.setAction("mcu_update_action_from_setting");
        startActivity(intent);
        finish();
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: L */
    private void m12886L() {
        AppServiceClient.m11355a().m11387T("seal", MiTalkClientUtil.m11265E(), MiTalkClientUtil.m11267D(), "zh_cn").compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SealBtEarGuide1Activity.this.m12888J((VersionInfo) obj);
            }
        }, new C3678c());
    }

    /* renamed from: G */
    public void m12891G() {
        if (MiTalkClientUtil.m11265E() >= 851986 || MiTalkClientUtil.m11231V()) {
            return;
        }
        CommonDialog commonDialog = new CommonDialog(this);
        commonDialog.m9025l(UIUtils.m8603o(R.string.support_use_ji_feng_btear));
        commonDialog.m9024m(R.string.common_cancel, null);
        commonDialog.m9020q(R.string.upgrade_immediately, new DialogInterface$OnClickListenerC3675a());
        commonDialog.m9032e();
        commonDialog.m9016u();
        MiTalkClientUtil.m11180v0(true);
    }

    /* renamed from: H */
    public void m12890H() {
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.conn_btn).setOnClickListener(this);
    }

    /* renamed from: K */
    public void m12887K() {
        if (!MethodsUtils.m11274z(this)) {
            UIUtils.m8593y(R.string.net_work_error_pls_retry);
        } else if (!BleCoreClient.m12373n().m12372o(this.f13241k)) {
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        } else {
            m10287D(false, true, getString(R.string.check_ing), R.drawable.load_spinner);
            RunnableC3676b runnableC3676b = new RunnableC3676b();
            this.f13240j = runnableC3676b;
            UIUtils.m8599s(runnableC3676b, 8000L);
            m12886L();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.conn_btn) {
            if (id != R.id.title_bar_left) {
                return;
            }
            finish();
            return;
        }
        Intent intent = new Intent(this, SealBtEarGuide2Activity.class);
        intent.putExtra("device_mac_address", this.f13241k);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_bt_ear_guide1);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f13241k = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        m12890H();
        m12891G();
    }
}
