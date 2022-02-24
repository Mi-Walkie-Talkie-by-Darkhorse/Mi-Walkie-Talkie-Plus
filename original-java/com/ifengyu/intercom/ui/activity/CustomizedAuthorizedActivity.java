package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.core.content.b;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.util.k;
import com.qmuiteam.qmui.util.l;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.xiaomi.account.openauth.AuthorizeActivityBase;

/* loaded from: classes2.dex */
public class CustomizedAuthorizedActivity extends AuthorizeActivityBase {

    /* renamed from: a  reason: collision with root package name */
    private ProgressBar f6055a;

    /* renamed from: b  reason: collision with root package name */
    private QMUIAlphaImageButton f6056b;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.web_container)
    FrameLayout mWebContainer;

    private void a() {
        this.mTopBar.f(R.string.login_with_xiaomi);
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomizedAuthorizedActivity.this.a(view);
            }
        });
        QMUIAlphaImageButton b2 = this.mTopBar.b(R.drawable.login_icon_refresh_gray, l.a());
        this.f6056b = b2;
        b2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomizedAuthorizedActivity.this.b(view);
            }
        });
    }

    public /* synthetic */ void b(View view) {
        refreshWebView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        k.b((Activity) this);
        k.a((Activity) this);
        setContentView(R.layout.activity_customized_authorized);
        ButterKnife.bind(this);
        a();
        b();
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onHideErrorUI() {
        this.f6056b.setVisibility(8);
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onHideProgress() {
        this.f6055a.setVisibility(8);
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onShowErrorUI() {
        this.f6056b.setVisibility(0);
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onShowProgress() {
        this.f6055a.setVisibility(0);
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onUpdateProgress(int i) {
        this.f6055a.setProgress(i);
    }

    private void b() {
        if (getWebView() != null) {
            this.mWebContainer.addView(getWebView(), -1, -1);
        }
        ProgressBar progressBar = new ProgressBar(this, null, 16842872);
        this.f6055a = progressBar;
        progressBar.setProgressDrawable(b.c(this, R.drawable.login_progress_bar_states));
        this.mWebContainer.addView(this.f6055a, -1, m.a(4.0f));
    }

    public /* synthetic */ void a(View view) {
        onBackPressed();
    }
}
