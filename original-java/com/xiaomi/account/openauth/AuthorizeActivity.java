package com.xiaomi.account.openauth;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;

public class AuthorizeActivity extends AuthorizeActivityBase {
    @Deprecated
    public static int RESULT_CANCEL = AuthorizeActivityBase.RESULT_CANCEL;
    @Deprecated
    public static int RESULT_FAIL = AuthorizeActivityBase.RESULT_FAIL;
    @Deprecated
    public static int RESULT_SUCCESS = AuthorizeActivityBase.RESULT_SUCCESS;
    private ProgressBar mProgressBar;
    private MenuItem mRefreshItem;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!isFinishing() && !super.isMiddleActivityMode()) {
            WebView webView = super.getWebView();
            RelativeLayout relativeLayout = new RelativeLayout(this);
            relativeLayout.setLayoutParams(new LayoutParams(-1, -1));
            relativeLayout.addView(webView, new LayoutParams(-1, -1));
            this.mProgressBar = new ProgressBar(this, null, 16842872);
            relativeLayout.addView(this.mProgressBar, new LayoutParams(-1, -2));
            setContentView(relativeLayout);
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        if (!isFinishing() && !super.isMiddleActivityMode()) {
            this.mRefreshItem = menu.add("refresh");
            this.mRefreshItem.setIcon(17301629);
            this.mRefreshItem.setShowAsActionFlags(2);
            this.mRefreshItem.setOnMenuItemClickListener(new OnMenuItemClickListener() {
                public boolean onMenuItemClick(MenuItem menuItem) {
                    AuthorizeActivity.this.refreshWebView();
                    return true;
                }
            });
            this.mRefreshItem.setVisible(false);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void onShowErrorUI() {
        if (this.mRefreshItem != null) {
            this.mRefreshItem.setVisible(true);
        }
    }

    /* access modifiers changed from: protected */
    public void onHideErrorUI() {
        if (this.mRefreshItem != null) {
            this.mRefreshItem.setVisible(false);
        }
    }

    /* access modifiers changed from: protected */
    public void onUpdateProgress(int i) {
        if (this.mProgressBar != null) {
            this.mProgressBar.setProgress(i);
        }
    }

    /* access modifiers changed from: protected */
    public void onHideProgress() {
        if (this.mProgressBar != null) {
            this.mProgressBar.setVisibility(8);
        }
    }

    /* access modifiers changed from: protected */
    public void onShowProgress() {
        if (this.mProgressBar != null) {
            this.mProgressBar.setVisibility(0);
        }
    }
}
