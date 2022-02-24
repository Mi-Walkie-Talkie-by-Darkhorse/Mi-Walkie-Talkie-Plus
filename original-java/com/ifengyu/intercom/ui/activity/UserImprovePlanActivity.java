package com.ifengyu.intercom.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.ui.baseui.BaseActivity;

/* loaded from: classes2.dex */
public class UserImprovePlanActivity extends BaseActivity implements View.OnClickListener {
    ImageView q;
    TextView r;
    WebView s;
    TextView t;

    private void b(boolean z) {
        if (z) {
            this.t.setText(getString(R.string.exit_user_improve_plan));
            this.t.setBackgroundColor(Color.parseColor("#FFFB5E5E"));
            return;
        }
        this.t.setText(getString(R.string.join_user_improve_plan));
        this.t.setBackgroundColor(Color.parseColor("#FF2B8DFF"));
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, UserImprovePlanActivity.class));
    }

    private boolean w() {
        return this.t.getText().equals(getString(R.string.exit_user_improve_plan));
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.add_or_exit_user_improve) {
            if (id == R.id.title_bar_left) {
                finish();
            }
        } else if (w()) {
            b(false);
            d0.h(false);
        } else {
            b(true);
            d0.h(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_improve_plan);
        this.q = (ImageView) a(R.id.title_bar_left);
        this.r = (TextView) a(R.id.title_bar_title);
        this.s = (WebView) a(R.id.webView);
        if (c0.a()) {
            this.s.loadUrl("file:///android_asset/improveplan/improvement_plan_en.html");
        } else {
            this.s.loadUrl("file:///android_asset/improveplan/improvement_plan.html");
        }
        this.t = (TextView) a(R.id.add_or_exit_user_improve);
        b(d0.b0());
        this.r.setText(getString(R.string.user_improve_plan));
        this.q.setOnClickListener(this);
        this.t.setOnClickListener(this);
    }
}
