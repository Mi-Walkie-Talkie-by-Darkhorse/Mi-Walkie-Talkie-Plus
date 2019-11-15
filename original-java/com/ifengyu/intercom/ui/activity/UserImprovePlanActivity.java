package com.ifengyu.intercom.ui.activity;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class UserImprovePlanActivity extends BaseActivity implements OnClickListener {
    ImageView a;
    TextView b;
    WebView c;
    TextView d;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_improve_plan);
        this.a = (ImageView) c(R.id.title_bar_left);
        this.b = (TextView) c(R.id.title_bar_title);
        this.c = (WebView) c(R.id.webView);
        if (v.a()) {
            this.c.loadUrl("file:///android_asset/improveplan/improvement_plan_en.html");
        } else {
            this.c.loadUrl("file:///android_asset/improveplan/improvement_plan.html");
        }
        this.d = (TextView) c(R.id.add_or_exit_user_improve);
        a(w.ab());
        this.b.setText(getString(R.string.user_improve_plan));
        this.a.setOnClickListener(this);
        this.d.setOnClickListener(this);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.add_or_exit_user_improve /*2131755242*/:
                if (c()) {
                    a(false);
                    w.n(false);
                } else {
                    a(true);
                    w.n(true);
                }
                if (w.ab()) {
                    MiStatInterface.setUploadPolicy(4, 60000);
                    MiStatInterface.enableExceptionCatcher(true);
                    return;
                }
                MiStatInterface.setUploadPolicy(5, 60000);
                MiStatInterface.enableExceptionCatcher(false);
                return;
            default:
                return;
        }
    }

    public void onBackPressed() {
        super.onBackPressed();
    }

    private void a(boolean z) {
        if (z) {
            this.d.setText(getString(R.string.exit_user_improve_plan));
            this.d.setBackgroundColor(Color.parseColor("#FFFB5E5E"));
            return;
        }
        this.d.setText(getString(R.string.join_user_improve_plan));
        this.d.setBackgroundColor(Color.parseColor("#FF2B8DFF"));
    }

    private boolean c() {
        return this.d.getText().equals(getString(R.string.exit_user_improve_plan));
    }
}
