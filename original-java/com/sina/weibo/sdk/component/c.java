package com.sina.weibo.sdk.component;

import android.graphics.Bitmap;
import android.net.http.a;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;

/* compiled from: WeiboWebViewClient */
interface c {
    void a(WebView webView, int i, String str, String str2);

    void a(WebView webView, SslErrorHandler sslErrorHandler, a aVar);

    void a(WebView webView, String str, Bitmap bitmap);

    boolean a(WebView webView, String str);

    void b(WebView webView, String str);
}
