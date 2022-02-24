package com.ifengyu.intercom.ui.activity;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.log.LogCollectService;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.xiaomi.mipush.sdk.Constants;

/* loaded from: classes2.dex */
public class AboutActivity extends BaseActivity implements View.OnClickListener {
    private static final String w = AboutActivity.class.getSimpleName();
    ImageView q;
    TextView r;
    ImageView s;
    TextView t;
    private long u = 0;
    private int v = 0;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.about_icon) {
            long currentTimeMillis = System.currentTimeMillis();
            long j = this.u;
            if (j <= 0 || currentTimeMillis - j >= 300) {
                this.u = 0L;
                this.v = 0;
            } else {
                int i = this.v + 1;
                this.v = i;
                if (i == 5) {
                    if (c0.b(this, "com.ifengyu.intercom.log.LogCollectService")) {
                        c0.a((CharSequence) getString(R.string.toast_log_service_close), false);
                        stopService(new Intent(this, LogCollectService.class));
                    } else {
                        c0.a((CharSequence) getString(R.string.toast_log_service_start), false);
                        startService(new Intent(this, LogCollectService.class));
                    }
                    this.u = 0L;
                    this.v = 0;
                }
            }
            this.u = currentTimeMillis;
        } else if (id != R.id.title_bar_left) {
            switch (id) {
                case R.id.user_improve_plan_layout /* 2131297468 */:
                    a(UserImprovePlanActivity.class);
                    return;
                case R.id.user_power_center_layout /* 2131297469 */:
                    Intent intent = new Intent(this, WebViewActivity.class);
                    intent.setAction("com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER");
                    startActivity(intent);
                    return;
                case R.id.user_protocol /* 2131297470 */:
                    UserProtocolActivity.b(this, 0);
                    return;
                default:
                    return;
            }
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_about);
        this.q = (ImageView) a(R.id.title_bar_left);
        this.r = (TextView) a(R.id.title_bar_title);
        this.s = (ImageView) a(R.id.about_icon);
        this.t = (TextView) a(R.id.about_app_versionName);
        this.r.setText(getString(R.string.about));
        this.q.setOnClickListener(this);
        this.s.setOnClickListener(this);
        findViewById(R.id.user_protocol).setOnClickListener(this);
        findViewById(R.id.user_improve_plan_layout).setOnClickListener(this);
        findViewById(R.id.user_power_center_layout).setOnClickListener(this);
        try {
            String str = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
            TextView textView = this.t;
            textView.setText(getString(R.string.about_app_version) + Constants.COLON_SEPARATOR + str);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
