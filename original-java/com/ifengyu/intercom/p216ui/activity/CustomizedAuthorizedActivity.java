package com.ifengyu.intercom.p216ui.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.xiaomi.account.openauth.AuthorizeActivityBase;

/* renamed from: com.ifengyu.intercom.ui.activity.CustomizedAuthorizedActivity */
/* loaded from: classes2.dex */
public class CustomizedAuthorizedActivity extends AuthorizeActivityBase {

    /* renamed from: a */
    private ProgressBar f14773a;

    /* renamed from: b */
    private QMUIAlphaImageButton f14774b;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.web_container)
    FrameLayout mWebContainer;

    /* renamed from: a */
    private void m10556a() {
        this.mTopBar.m7338p(R.string.login_with_xiaomi);
        this.mTopBar.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomizedAuthorizedActivity.this.m10553d(view);
            }
        });
        QMUIAlphaImageButton m7340n = this.mTopBar.m7340n(R.drawable.login_icon_refresh_gray, QMUIViewHelper.m7473b());
        this.f14774b = m7340n;
        m7340n.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomizedAuthorizedActivity.this.m10551f(view);
            }
        });
    }

    /* renamed from: b */
    private void m10555b() {
        if (getWebView() != null) {
            this.mWebContainer.addView(getWebView(), -1, -1);
        }
        ProgressBar progressBar = new ProgressBar(this, null, 16842872);
        this.f14773a = progressBar;
        progressBar.setProgressDrawable(ContextCompat.m23927d(this, R.drawable.login_progress_bar_states));
        this.mWebContainer.addView(this.f14773a, -1, UIUtils.m8616b(4.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m10553d(View view) {
        onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m10551f(View view) {
        refreshWebView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        QMUIStatusBarHelper.m7477q(this);
        QMUIStatusBarHelper.m7481m(this);
        setContentView(R.layout.activity_customized_authorized);
        ButterKnife.bind(this);
        m10556a();
        m10555b();
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onHideErrorUI() {
        this.f14774b.setVisibility(8);
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onHideProgress() {
        this.f14773a.setVisibility(8);
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onShowErrorUI() {
        this.f14774b.setVisibility(0);
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onShowProgress() {
        this.f14773a.setVisibility(0);
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onUpdateProgress(int i) {
        this.f14773a.setProgress(i);
    }
}
