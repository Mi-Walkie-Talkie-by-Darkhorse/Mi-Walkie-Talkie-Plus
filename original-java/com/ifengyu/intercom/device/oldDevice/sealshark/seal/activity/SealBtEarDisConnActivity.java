package com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.library.utils.UIUtils;
import com.squareup.otto.Subscribe;

/* loaded from: classes2.dex */
public class SealBtEarDisConnActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private TextView f13235j;

    /* renamed from: k */
    private String f13236k;

    /* renamed from: l */
    private String f13237l;

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBtEarDisConnActivity$a */
    /* loaded from: classes2.dex */
    class RunnableC3674a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_BtEarConnectState f13238a;

        RunnableC3674a(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
            this.f13238a = sEAL_BtEarConnectState;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f13238a.getOption() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT && this.f13238a.getResult() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK) {
                UIUtils.m8592z("断开成功");
                SealBtEarDisConnActivity.this.finish();
            }
        }
    }

    /* renamed from: F */
    public void m12893F() {
        findViewById(R.id.title_bar_title).setVisibility(8);
        TextView textView = (TextView) findViewById(R.id.bt_ear_name);
        this.f13235j = textView;
        textView.setText(this.f13236k);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.dis_conn_btn).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.dis_conn_btn) {
            if (id != R.id.title_bar_left) {
                return;
            }
            finish();
        } else if (BleCoreClient.m12373n().m12372o(this.f13237l)) {
            BleCoreClient.m12373n().m12375l(this.f13237l).m12094o1();
        } else {
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_bt_ear_disconn);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f13237l = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f13236k = getIntent().getExtras().getString("bt_ear_had_conn_to");
        m12893F();
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
    public void receiveBtEarDisConnectStateResp(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
        C4161y.m11049f(this.f15055a, "receiveBtEarDisConnectStateResp");
        runOnUiThread(new RunnableC3674a(sEAL_BtEarConnectState));
    }
}
