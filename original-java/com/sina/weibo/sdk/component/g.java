package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.a;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.sina.weibo.sdk.a.b;
import com.sina.weibo.sdk.utils.i;

/* compiled from: ShareWeiboWebViewClient */
class g extends j {
    private Activity b;
    private f c;
    private b d;

    public g(Activity activity, f fVar) {
        this.b = activity;
        this.c = fVar;
        this.d = fVar.c();
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.a != null) {
            this.a.a(webView, str, bitmap);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (this.a != null) {
            this.a.a(webView, str);
        }
        if (!str.startsWith("sinaweibo://browser/close")) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        Bundle b2 = i.b(str);
        if (!b2.isEmpty() && this.d != null) {
            this.d.a(b2);
        }
        String string = b2.getString("code");
        String string2 = b2.getString("msg");
        if (TextUtils.isEmpty(string)) {
            this.c.a(this.b);
        } else if (!"0".equals(string)) {
            this.c.a(this.b, string2);
        } else {
            this.c.b(this.b);
        }
        WeiboSdkBrowser.a(this.b, this.c.h(), (String) null);
        return true;
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
        this.c.a(this.b, str);
        WeiboSdkBrowser.a(this.b, this.c.h(), (String) null);
    }

    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, a aVar) {
        if (this.a != null) {
            this.a.a(webView, sslErrorHandler, aVar);
        }
        sslErrorHandler.cancel();
        this.c.a(this.b, "ReceivedSslError");
        WeiboSdkBrowser.a(this.b, this.c.h(), (String) null);
    }
}
