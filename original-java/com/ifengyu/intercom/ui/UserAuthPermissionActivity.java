package com.ifengyu.intercom.ui;

import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.view.View;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.PrivacyInfoBean;
import com.ifengyu.intercom.g.d.h;
import com.ifengyu.intercom.g.e.f;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.ui.activity.UserImprovePlanActivity;
import com.ifengyu.intercom.ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.span.d;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;
import okhttp3.Call;

/* loaded from: classes2.dex */
public class UserAuthPermissionActivity extends BaseActivity {
    private QMUISpanTouchFixTextView q;
    private QMUISpanTouchFixTextView r;
    private AppCompatCheckBox s;
    private f t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends h {
        a() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            UserAuthPermissionActivity.this.t = null;
        }

        public void a(PrivacyInfoBean privacyInfoBean, int i) {
            d0.a("app", Integer.parseInt(privacyInfoBean.getVersion()));
            UserAuthPermissionActivity.this.t = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends d {
        b(View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.d
        public void a(View view) {
            UserAuthPermissionActivity.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends d {
        c(View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.d
        public void a(View view) {
            UserImprovePlanActivity.start(UserAuthPermissionActivity.this);
        }
    }

    private void A() {
        f fVar = this.t;
        if (fVar != null) {
            fVar.a();
        }
        d0.c(true);
        B();
    }

    private void B() {
        startActivity(new Intent(this, SplashActivity.class));
        overridePendingTransition(0, 0);
        finish();
    }

    private void init() {
        setContentView(R.layout.activity_user_auth_permission);
        this.q = (QMUISpanTouchFixTextView) findViewById(R.id.tvReadAndAgreeUserPrivacy);
        this.r = (QMUISpanTouchFixTextView) findViewById(R.id.tvJoinUserImprovePlan);
        this.s = (AppCompatCheckBox) findViewById(R.id.cbImprove);
        QMUIRoundButton qMUIRoundButton = (QMUIRoundButton) findViewById(R.id.btnAgree);
        QMUIRoundButton qMUIRoundButton2 = (QMUIRoundButton) findViewById(R.id.btnExit);
        qMUIRoundButton.setChangeAlphaWhenPress(true);
        qMUIRoundButton2.setChangeAlphaWhenPress(true);
        this.q.setMovementMethodDefault();
        this.q.setText(y());
        this.r.setMovementMethodDefault();
        this.r.setText(x());
        this.s.setOnCheckedChangeListener(h.f6464a);
        qMUIRoundButton.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserAuthPermissionActivity.this.a(view);
            }
        });
        qMUIRoundButton2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserAuthPermissionActivity.this.b(view);
            }
        });
        z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        UserProtocolActivity.a(this, 0);
    }

    private SpannableString x() {
        String b2 = m.b((int) R.string.user_improve_join_prefix);
        String b3 = m.b((int) R.string.lite_user_improve);
        String b4 = m.b((int) R.string.user_improve_join_suffix);
        SpannableString spannableString = new SpannableString(b2 + b3 + b4);
        c cVar = new c(this.r, 0, 0, 0, 0);
        cVar.a(m.a((int) R.color.lite_colorAccent));
        cVar.b(m.a((int) R.color.lite_colorAccent50));
        cVar.b(true);
        spannableString.setSpan(cVar, b2.length(), b2.length() + b3.length(), 17);
        return spannableString;
    }

    private SpannableString y() {
        String b2 = m.b((int) R.string.user_privacy_agree_prefix);
        String str = b2 + m.b((int) R.string.lite_user_protocol);
        SpannableString spannableString = new SpannableString(str);
        b bVar = new b(this.q, 0, 0, 0, 0);
        bVar.a(m.a((int) R.color.lite_colorAccent));
        bVar.b(m.a((int) R.color.lite_colorAccent50));
        bVar.b(true);
        spannableString.setSpan(bVar, b2.length(), str.length(), 17);
        return spannableString;
    }

    private void z() {
        this.t = com.ifengyu.intercom.g.a.b("app", new a());
    }

    public /* synthetic */ void b(View view) {
        d0.h(false);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!isTaskRoot() && intent != null) {
            String action = intent.getAction();
            if (intent.hasCategory("android.intent.category.LAUNCHER") && "android.intent.action.MAIN".equals(action)) {
                finish();
            }
        }
        if (d0.V()) {
            B();
        } else {
            init();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        AppCompatCheckBox appCompatCheckBox = this.s;
        if (appCompatCheckBox != null) {
            appCompatCheckBox.setChecked(d0.b0());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    public /* synthetic */ void a(View view) {
        A();
    }
}
