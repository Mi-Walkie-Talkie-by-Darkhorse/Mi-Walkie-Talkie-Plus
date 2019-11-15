package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;
import com.ifengyu.library.helper.QMUIStatusBarHelper;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class CustomizedAuthorizedActivity extends AuthorizeActivityBase implements OnClickListener {
    ImageView a;
    TextView b;
    ImageView c;
    private ProgressBar d;
    private WebView e;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        QMUIStatusBarHelper.a(this);
        QMUIStatusBarHelper.b(this);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this).inflate(R.layout.activity_customized_authorized, null);
        View view = new View(this);
        view.setBackgroundColor(ad.d(R.color.line_3));
        linearLayout.addView(view, new LayoutParams(-1, (int) v.a(0.5f)));
        FrameLayout frameLayout = new FrameLayout(this);
        linearLayout.addView(frameLayout, -1, -1);
        this.e = super.getWebView();
        if (this.e != null) {
            frameLayout.addView(this.e, -1, -1);
        }
        this.d = new ProgressBar(this, null, 16842872);
        this.d.setProgressDrawable(ContextCompat.getDrawable(this, R.drawable.login_progress_bar_states));
        frameLayout.addView(this.d, -1, (int) v.a(4.0f));
        setContentView(linearLayout);
        a();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, getClass().getSimpleName());
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    private void a() {
        if (VERSION.SDK_INT >= 19) {
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.title_bar);
            if (viewGroup != null) {
                viewGroup.setPadding(0, a.a(), 0, 0);
            }
        }
        this.a = (ImageView) findViewById(R.id.title_bar_left);
        this.a.setImageResource(R.drawable.icon_back);
        this.b = (TextView) findViewById(R.id.title_bar_title);
        this.b.setTextColor(ContextCompat.getColor(getApplicationContext(), R.color.login_authorization_title));
        this.c = (ImageView) findViewById(R.id.title_bar_right);
        this.c.setVisibility(0);
        this.c.setImageResource(R.drawable.loading_icon_refresh_gray);
        this.a.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.b.setText(R.string.authorized_login);
    }

    /* access modifiers changed from: protected */
    public void onShowProgress() {
        this.d.setVisibility(0);
    }

    /* access modifiers changed from: protected */
    public void onUpdateProgress(int i) {
        this.d.setProgress(i);
    }

    /* access modifiers changed from: protected */
    public void onHideProgress() {
        this.d.setVisibility(8);
    }

    /* access modifiers changed from: protected */
    public void onShowErrorUI() {
        this.c.setVisibility(0);
    }

    /* access modifiers changed from: protected */
    public void onHideErrorUI() {
        this.c.setVisibility(8);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                if (this.e.canGoBack()) {
                    this.e.goBack();
                    return;
                } else {
                    finish();
                    return;
                }
            case R.id.title_bar_right /*2131755355*/:
                refreshWebView();
                return;
            default:
                return;
        }
    }
}
