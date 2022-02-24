package com.xiaomi.account.openauth;

import android.app.ActionBar;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;

/* loaded from: classes2.dex */
public class AuthorizeActivity extends AuthorizeActivityBase {
    private ImageView mBackImageView;
    private ProgressBar mProgressBar;
    private MenuItem mRefreshItem;
    @Deprecated
    public static int RESULT_SUCCESS = AuthorizeActivityBase.RESULT_SUCCESS;
    @Deprecated
    public static int RESULT_FAIL = AuthorizeActivityBase.RESULT_FAIL;
    @Deprecated
    public static int RESULT_CANCEL = AuthorizeActivityBase.RESULT_CANCEL;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!isFinishing() && !super.isMiddleActivityMode()) {
            final WebView webView = super.getWebView();
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayOptions(16);
                actionBar.setCustomView(R.layout.actionbar_custom);
                ImageView imageView = (ImageView) actionBar.getCustomView().findViewById(R.id.back_iv);
                this.mBackImageView = imageView;
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.xiaomi.account.openauth.AuthorizeActivity.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (webView.canGoBack()) {
                            webView.goBack();
                        } else {
                            AuthorizeActivity.this.setResultAndFinish(AuthorizeActivity.RESULT_CANCEL, null);
                        }
                    }
                });
            }
            RelativeLayout relativeLayout = new RelativeLayout(this);
            relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            relativeLayout.addView(webView, new ViewGroup.LayoutParams(-1, -1));
            ProgressBar progressBar = new ProgressBar(this, null, 16842872);
            this.mProgressBar = progressBar;
            relativeLayout.addView(progressBar, new ViewGroup.LayoutParams(-1, -2));
            setContentView(relativeLayout);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (!isFinishing() && !super.isMiddleActivityMode()) {
            MenuItem add = menu.add("refresh");
            this.mRefreshItem = add;
            add.setIcon(17301629);
            this.mRefreshItem.setShowAsActionFlags(2);
            this.mRefreshItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.xiaomi.account.openauth.AuthorizeActivity.2
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public boolean onMenuItemClick(MenuItem menuItem) {
                    AuthorizeActivity.this.refreshWebView();
                    return true;
                }
            });
            this.mRefreshItem.setVisible(false);
        }
        return true;
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onHideErrorUI() {
        MenuItem menuItem = this.mRefreshItem;
        if (menuItem != null) {
            menuItem.setVisible(false);
        }
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onHideProgress() {
        ProgressBar progressBar = this.mProgressBar;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onShowErrorUI() {
        MenuItem menuItem = this.mRefreshItem;
        if (menuItem != null) {
            menuItem.setVisible(true);
        }
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onShowProgress() {
        ProgressBar progressBar = this.mProgressBar;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onUpdateProgress(int i) {
        ProgressBar progressBar = this.mProgressBar;
        if (progressBar != null) {
            progressBar.setProgress(i);
        }
    }
}
