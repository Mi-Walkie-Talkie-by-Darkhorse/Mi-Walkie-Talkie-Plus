package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.a;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.sina.weibo.sdk.exception.WeiboAuthException;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.utils.i;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;

/* compiled from: AuthWeiboWebViewClient */
class b extends j {
    private Activity b;
    private a c;
    private com.sina.weibo.sdk.a.b d;
    private boolean e = false;

    public b(Activity activity, a aVar) {
        this.b = activity;
        this.c = aVar;
        this.d = this.c.b();
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.a != null) {
            this.a.a(webView, str, bitmap);
        }
        if (!str.startsWith(this.c.a().a()) || this.e) {
            super.onPageStarted(webView, str, bitmap);
            return;
        }
        this.e = true;
        a(str);
        webView.stopLoading();
        WeiboSdkBrowser.a(this.b, this.c.c(), (String) null);
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (this.a != null) {
            this.a.a(webView, str);
        }
        if (str.startsWith("sms:")) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.putExtra("address", str.replace("sms:", ""));
            intent.setType("vnd.android-dir/mms-sms");
            this.b.startActivity(intent);
            return true;
        } else if (!str.startsWith("sinaweibo://browser/close")) {
            return super.shouldOverrideUrlLoading(webView, str);
        } else {
            if (this.d != null) {
                this.d.a();
            }
            WeiboSdkBrowser.a(this.b, this.c.c(), (String) null);
            return true;
        }
    }

    public void onPageFinished(WebView webView, String str) {
        if (this.a != null) {
            this.a.b(webView, str);
        }
        super.onPageFinished(webView, str);
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        if (this.a != null) {
            this.a.a(webView, i, str, str2);
        }
        super.onReceivedError(webView, i, str, str2);
    }

    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, a aVar) {
        if (this.a != null) {
            this.a.a(webView, sslErrorHandler, aVar);
        }
        super.onReceivedSslError(webView, sslErrorHandler, aVar);
    }

    private void a(String str) {
        Bundle a = i.a(str);
        String string = a.getString(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2);
        String string2 = a.getString("error_code");
        String string3 = a.getString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION_2);
        if (string == null && string2 == null) {
            if (this.d != null) {
                this.d.a(a);
            }
        } else if (this.d != null) {
            this.d.a((WeiboException) new WeiboAuthException(string2, string, string3));
        }
    }
}
