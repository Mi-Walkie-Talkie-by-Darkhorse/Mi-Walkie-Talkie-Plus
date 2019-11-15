package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.a;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.sina.weibo.sdk.a.b;

/* compiled from: WeiboGameClient */
class i extends j {
    private Activity b;
    private e c;
    private b d = this.c.a();

    public i(Activity activity, e eVar) {
        this.b = activity;
        this.c = eVar;
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
        Bundle b2 = com.sina.weibo.sdk.utils.i.b(str);
        if (!b2.isEmpty() && this.d != null) {
            this.d.a(b2);
        }
        WeiboSdkBrowser.a(this.b, this.c.b(), (String) null);
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
        super.onReceivedError(webView, i, str, str2);
    }

    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, a aVar) {
        if (this.a != null) {
            this.a.a(webView, sslErrorHandler, aVar);
        }
        super.onReceivedSslError(webView, sslErrorHandler, aVar);
    }
}
