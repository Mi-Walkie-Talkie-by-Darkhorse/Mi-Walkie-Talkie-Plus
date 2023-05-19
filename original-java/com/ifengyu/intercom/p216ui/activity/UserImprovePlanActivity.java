package com.ifengyu.intercom.p216ui.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;

/* renamed from: com.ifengyu.intercom.ui.activity.UserImprovePlanActivity */
/* loaded from: classes2.dex */
public class UserImprovePlanActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    ImageView f14889j;

    /* renamed from: k */
    TextView f14890k;

    /* renamed from: l */
    WebView f14891l;

    /* renamed from: m */
    TextView f14892m;

    /* renamed from: F */
    private boolean m10428F() {
        return this.f14892m.getText().equals(getString(R.string.exit_user_improve_plan));
    }

    /* renamed from: G */
    private void m10427G(boolean z) {
        if (z) {
            this.f14892m.setText(getString(R.string.exit_user_improve_plan));
            this.f14892m.setBackgroundColor(Color.parseColor("#FFFB5E5E"));
            return;
        }
        this.f14892m.setText(getString(R.string.join_user_improve_plan));
        this.f14892m.setBackgroundColor(Color.parseColor("#FF2B8DFF"));
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, UserImprovePlanActivity.class));
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.add_or_exit_user_improve) {
            if (id != R.id.title_bar_left) {
                return;
            }
            finish();
        } else if (m10428F()) {
            m10427G(false);
            MiTalkClientUtil.m11178w0(false);
        } else {
            m10427G(true);
            MiTalkClientUtil.m11178w0(true);
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_improve_plan);
        this.f14889j = (ImageView) m10282o(R.id.title_bar_left);
        this.f14890k = (TextView) m10282o(R.id.title_bar_title);
        this.f14891l = (WebView) m10282o(R.id.webView);
        if (MethodsUtils.m11297c()) {
            this.f14891l.loadUrl("file:///android_asset/improveplan/improvement_plan_en.html");
        } else {
            this.f14891l.loadUrl("file:///android_asset/improveplan/improvement_plan.html");
        }
        this.f14892m = (TextView) m10282o(R.id.add_or_exit_user_improve);
        m10427G(MiTalkClientUtil.m11220b0());
        this.f14890k.setText(getString(R.string.user_improve_plan));
        this.f14889j.setOnClickListener(this);
        this.f14892m.setOnClickListener(this);
    }
}
