package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.baseui.BaseActivity;

public class SealBtEarHelpActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_seal_bt_ear_help);
        c();
    }

    public void c() {
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.connect_help);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            default:
                return;
        }
    }
}
