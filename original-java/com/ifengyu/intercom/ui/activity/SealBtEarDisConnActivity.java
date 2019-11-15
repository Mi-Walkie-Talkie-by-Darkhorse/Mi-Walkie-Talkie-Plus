package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.eventbus.a;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.squareup.otto.Subscribe;

public class SealBtEarDisConnActivity extends BaseActivity implements OnClickListener {
    private TextView a;
    private String b;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_seal_bt_ear_disconn);
        this.b = getIntent().getExtras().getString("bt_ear_had_conn_to");
        c();
    }

    public void c() {
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.title_bar_bottom_line).setVisibility(8);
        this.a = (TextView) findViewById(R.id.bt_ear_name);
        this.a.setText(this.b);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.dis_conn_btn).setOnClickListener(this);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.dis_conn_btn /*2131755310*/:
                if (k.a().b()) {
                    aa.h();
                    return;
                } else {
                    v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                }
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        a.a().a((Object) this);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        a.a().b((Object) this);
    }

    @Subscribe
    public void receiveBtEarDisConnectStateResp(final SEAL_BtEarConnectState sEAL_BtEarConnectState) {
        s.c(this.e, "receiveBtEarDisConnectStateResp");
        runOnUiThread(new Runnable() {
            public void run() {
                if (sEAL_BtEarConnectState.getOption() == SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT && sEAL_BtEarConnectState.getResult() == SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK) {
                    v.a((CharSequence) "断开成功", false);
                    SealBtEarDisConnActivity.this.finish();
                }
            }
        });
    }
}
