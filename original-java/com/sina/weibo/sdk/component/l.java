package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.sina.weibo.sdk.a.b;
import com.sina.weibo.sdk.component.k.a;
import com.sina.weibo.sdk.utils.i;

/* compiled from: WidgetWeiboWebViewClient */
class l extends j {
    private Activity b;
    private k c;
    private b d;
    private a e;

    public l(Activity activity, k kVar) {
        this.b = activity;
        this.c = kVar;
        this.e = kVar.c();
        this.d = kVar.a();
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
        boolean startsWith = str.startsWith("sinaweibo://browser/close");
        if (!str.startsWith("sinaweibo://browser/close") && !str.startsWith("sinaweibo://browser/datatransfer")) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        Bundle b2 = i.b(str);
        if (!b2.isEmpty() && this.d != null) {
            this.d.a(b2);
        }
        if (this.e != null) {
            this.e.a(str);
        }
        if (startsWith) {
            WeiboSdkBrowser.a(this.b, this.c.b(), this.c.h());
        }
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

    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, android.net.http.a aVar) {
        if (this.a != null) {
            this.a.a(webView, sslErrorHandler, aVar);
        }
        super.onReceivedSslError(webView, sslErrorHandler, aVar);
    }
}
