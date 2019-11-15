package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.widget.LinearLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.z;
import com.ifengyu.intercom.ui.baseui.BaseActivity;

public class PermissionActivity extends BaseActivity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c();
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        z.a(this);
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (!z.a(this, i, strArr, iArr)) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        }
    }

    private void c() {
        setContentView((int) R.layout.introduction_splash);
        ((LinearLayout) findViewById(R.id.splash_countdown_skip)).setVisibility(8);
    }
}
