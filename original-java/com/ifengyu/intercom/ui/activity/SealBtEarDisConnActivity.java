package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.squareup.otto.Subscribe;

/* loaded from: classes2.dex */
public class SealBtEarDisConnActivity extends BaseActivity implements View.OnClickListener {
    private TextView q;
    private String r;

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_BtEarConnectState f6147a;

        a(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
            this.f6147a = sEAL_BtEarConnectState;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6147a.getOption() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT && this.f6147a.getResult() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK) {
                c0.a((CharSequence) "断开成功", false);
                SealBtEarDisConnActivity.this.finish();
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.dis_conn_btn) {
            if (id == R.id.title_bar_left) {
                finish();
            }
        } else if (j.b().a()) {
            g0.e();
        } else {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_bt_ear_disconn);
        this.r = getIntent().getExtras().getString("bt_ear_had_conn_to");
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
    public void receiveBtEarDisConnectStateResp(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
        z.c(this.f6370a, "receiveBtEarDisConnectStateResp");
        runOnUiThread(new a(sEAL_BtEarConnectState));
    }

    public void w() {
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.title_bar_bottom_line).setVisibility(8);
        TextView textView = (TextView) findViewById(R.id.bt_ear_name);
        this.q = textView;
        textView.setText(this.r);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.dis_conn_btn).setOnClickListener(this);
    }
}
