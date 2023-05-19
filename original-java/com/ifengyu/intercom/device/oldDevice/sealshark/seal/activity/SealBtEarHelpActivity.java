package com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;

/* loaded from: classes2.dex */
public class SealBtEarHelpActivity extends BaseActivity1 implements View.OnClickListener {
    /* renamed from: F */
    public void m12882F() {
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.connect_help);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.title_bar_left) {
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_bt_ear_help);
        m12882F();
    }
}
