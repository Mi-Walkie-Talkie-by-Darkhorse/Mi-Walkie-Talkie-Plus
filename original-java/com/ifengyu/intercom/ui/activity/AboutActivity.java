package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.log.LogCollectService;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class AboutActivity extends BaseActivity implements OnClickListener {
    private static final String q = AboutActivity.class.getSimpleName();
    ImageView a;
    TextView b;
    ImageView c;
    TextView d;
    private long r = 0;
    private int s = 0;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_about);
        this.a = (ImageView) c(R.id.title_bar_left);
        this.b = (TextView) c(R.id.title_bar_title);
        this.c = (ImageView) c(R.id.about_icon);
        this.d = (TextView) c(R.id.about_app_versionName);
        this.b.setText(getString(R.string.about));
        this.a.setOnClickListener(this);
        this.c.setOnClickListener(this);
        findViewById(R.id.user_protocol).setOnClickListener(this);
        findViewById(R.id.user_improve_plan_layout).setOnClickListener(this);
        findViewById(R.id.user_power_center_layout).setOnClickListener(this);
        try {
            this.d.setText(getString(R.string.about_app_version) + ":" + getPackageManager().getPackageInfo(getPackageName(), 0).versionName);
        } catch (NameNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, q);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.user_protocol /*2131755153*/:
                Intent intent = new Intent(this, WebViewActivity.class);
                intent.setAction("com.ifengyu.intercom.action.AGREEMENT_AND_PRIVACY");
                startActivity(intent);
                return;
            case R.id.user_improve_plan_layout /*2131755154*/:
                a(UserImprovePlanActivity.class);
                return;
            case R.id.user_power_center_layout /*2131755157*/:
                Intent intent2 = new Intent(this, WebViewActivity.class);
                intent2.setAction("com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER");
                startActivity(intent2);
                return;
            case R.id.about_icon /*2131755160*/:
                long currentTimeMillis = System.currentTimeMillis();
                if (this.r <= 0 || currentTimeMillis - this.r >= 300) {
                    this.r = 0;
                    this.s = 0;
                } else {
                    this.s++;
                    if (this.s == 5) {
                        if (v.a((Context) this, "com.ifengyu.intercom.log.LogCollectService")) {
                            v.a((CharSequence) getString(R.string.toast_log_service_close), false);
                            stopService(new Intent(this, LogCollectService.class));
                        } else {
                            v.a((CharSequence) getString(R.string.toast_log_service_start), false);
                            startService(new Intent(this, LogCollectService.class));
                        }
                        this.r = 0;
                        this.s = 0;
                    }
                }
                this.r = currentTimeMillis;
                return;
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            default:
                return;
        }
    }
}
