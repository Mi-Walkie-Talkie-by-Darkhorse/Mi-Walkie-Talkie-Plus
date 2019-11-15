package com.xiaomi.mistatistic.sdk;

import android.graphics.Bitmap;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xiaomi.mistatistic.sdk.controller.g;
import com.xiaomi.mistatistic.sdk.data.HttpEvent;
import java.util.HashMap;
import java.util.Map;

public class MIWebView extends WebView {

    class a extends WebViewClient {
        private WebViewClient b;
        private Map<String, Long> c = new HashMap();

        public a(WebViewClient webViewClient) {
            this.b = webViewClient;
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (this.b != null) {
                return this.b.shouldOverrideUrlLoading(webView, str);
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (this.b != null) {
                this.b.onPageStarted(webView, str, bitmap);
            } else {
                super.onPageStarted(webView, str, bitmap);
            }
            this.c.put(str, Long.valueOf(System.currentTimeMillis()));
        }

        public void onPageFinished(WebView webView, String str) {
            if (this.b != null) {
                this.b.onPageFinished(webView, str);
            } else {
                super.onPageFinished(webView, str);
            }
            Long l = (Long) this.c.get(str);
            if (l != null) {
                g.a().a(new HttpEvent(str, System.currentTimeMillis() - l.longValue()));
            }
        }

        public void onLoadResource(WebView webView, String str) {
            if (this.b != null) {
                this.b.onLoadResource(webView, str);
            } else {
                super.onLoadResource(webView, str);
            }
        }

        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            if (this.b != null) {
                return this.b.shouldInterceptRequest(webView, str);
            }
            return super.shouldInterceptRequest(webView, str);
        }

        public void onTooManyRedirects(WebView webView, Message message, Message message2) {
            if (this.b != null) {
                this.b.onTooManyRedirects(webView, message, message2);
            } else {
                super.onTooManyRedirects(webView, message, message2);
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            if (this.b != null) {
                this.b.onReceivedError(webView, i, str, str2);
            } else {
                super.onReceivedError(webView, i, str, str2);
            }
            Long l = (Long) this.c.get(str2);
            if (l != null) {
                g.a().a(new HttpEvent(str2, System.currentTimeMillis() - l.longValue(), (long) i));
            }
        }

        public void onFormResubmission(WebView webView, Message message, Message message2) {
            if (this.b != null) {
                this.b.onFormResubmission(webView, message, message2);
            } else {
                super.onFormResubmission(webView, message, message2);
            }
        }

        public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
            if (this.b != null) {
                this.b.doUpdateVisitedHistory(webView, str, z);
            } else {
                super.doUpdateVisitedHistory(webView, str, z);
            }
        }

        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, android.net.http.a aVar) {
            if (this.b != null) {
                this.b.onReceivedSslError(webView, sslErrorHandler, aVar);
            } else {
                super.onReceivedSslError(webView, sslErrorHandler, aVar);
            }
        }

        public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
            if (this.b != null) {
                this.b.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            } else {
                super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            }
        }

        public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
            if (this.b != null) {
                return this.b.shouldOverrideKeyEvent(webView, keyEvent);
            }
            return super.shouldOverrideKeyEvent(webView, keyEvent);
        }

        public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
            if (this.b != null) {
                this.b.onUnhandledKeyEvent(webView, keyEvent);
            } else {
                super.onUnhandledKeyEvent(webView, keyEvent);
            }
        }

        public void onScaleChanged(WebView webView, float f, float f2) {
            if (this.b != null) {
                this.b.onScaleChanged(webView, f, f2);
            } else {
                super.onScaleChanged(webView, f, f2);
            }
        }

        public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
            if (this.b != null) {
                this.b.onReceivedLoginRequest(webView, str, str2, str3);
            } else {
                super.onReceivedLoginRequest(webView, str, str2, str3);
            }
        }
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(new a(webViewClient));
    }
}
