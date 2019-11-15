package com.ifengyu.intercom.ui.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.c;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.network.d;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.KeyStore;
import java.security.SecureRandom;
import java.security.cert.CertificateFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient.Builder;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.platform.Platform;
import org.apache.http.HttpHost;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class WebViewActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public WebView a;
    private WebSettings b;
    /* access modifiers changed from: private */
    public ProgressBar c;
    /* access modifiers changed from: private */
    public TextView d;
    /* access modifiers changed from: private */
    public String q;
    /* access modifiers changed from: private */
    public boolean r;
    /* access modifiers changed from: private */
    public int s;
    private FrameLayout t;
    /* access modifiers changed from: private */
    public View u;
    private String v;
    private int w;
    /* access modifiers changed from: private */
    public String x;

    private class a extends WebChromeClient {
        private a() {
        }

        public void onProgressChanged(WebView webView, int i) {
            WebViewActivity.this.s = WebViewActivity.this.c.getProgress();
            if (i < 100 || WebViewActivity.this.r) {
                WebViewActivity.this.a(i);
            } else {
                WebViewActivity.this.r = true;
                WebViewActivity.this.c.setProgress(i);
                WebViewActivity.this.b(WebViewActivity.this.c.getProgress());
            }
            super.onProgressChanged(webView, i);
        }

        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            s.b("WebViewActivity", "onReceivedTitle:" + str);
            if (WebViewActivity.this.d == null) {
                return;
            }
            if (TextUtils.isEmpty(str) || str.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                WebViewActivity.this.d.setText(WebViewActivity.this.x);
            } else {
                WebViewActivity.this.d.setText(str);
            }
        }
    }

    private class b extends WebViewClient {
        private b() {
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            s.b("WebViewActivity", "shouldOverrideUrlLoading url:" + str);
            webView.loadUrl(str);
            return true;
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            s.b("WebViewActivity", "onPageStarted url:" + str);
            if (WebViewActivity.this.c != null) {
                WebViewActivity.this.c.setVisibility(0);
                WebViewActivity.this.c.setAlpha(1.0f);
            }
            super.onPageStarted(webView, str, bitmap);
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            s.b("WebViewActivity", "onPageFinished:");
            if (WebViewActivity.this.a != null) {
                WebViewActivity.this.a.setVisibility(0);
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            s.b("WebViewActivity", "Deprecated onReceivedError:\nerrorCode:" + i + ", desc:" + str);
            if (WebViewActivity.this.u != null) {
                WebViewActivity.this.u.setVisibility(0);
            }
            if (WebViewActivity.this.a != null) {
                WebViewActivity.this.a.setVisibility(8);
            }
        }

        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, android.net.http.a aVar) {
            s.b("WebViewActivity", "onReceivedSslError:" + aVar);
            WebViewActivity.this.a(sslErrorHandler, webView.getUrl());
        }

        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            s.b("WebViewActivity", "onReceivedHttpError:" + webResourceResponse.getEncoding());
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(getApplicationContext()).inflate(R.layout.activity_webview, null);
        this.t = (FrameLayout) inflate.findViewById(R.id.web_content);
        this.a = new WebView(getApplicationContext());
        this.a.setLayoutParams(new LayoutParams(-1, -1));
        this.u = View.inflate(this, R.layout.webview_load_fail, null);
        this.u.findViewById(R.id.webview_reload_btn).setOnClickListener(this);
        this.u.setVisibility(8);
        this.t.addView(this.a, 0);
        this.t.addView(this.u, 1);
        setContentView(inflate);
        c();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "WebViewActivity");
        this.b.setJavaScriptEnabled(true);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
        this.b.setJavaScriptEnabled(false);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        if (this.a != null) {
            this.a.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            this.a.removeAllViews();
            this.a.clearHistory();
            ViewGroup viewGroup = (ViewGroup) this.a.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.a);
            }
            this.a.destroy();
            this.a = null;
        }
        super.onDestroy();
    }

    private void c() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.title_bar_right);
        imageView.setImageResource(R.drawable.product_icon_swich);
        imageView.setOnClickListener(this);
        Intent intent = getIntent();
        this.v = intent.getAction();
        Bundle extras = intent.getExtras();
        this.c = (ProgressBar) findViewById(R.id.pb);
        this.d = (TextView) findViewById(R.id.title_bar_title);
        this.d.setTypeface(l.d);
        this.c.setMax(100);
        this.a.setScrollBarSize(0);
        this.a.setHapticFeedbackEnabled(false);
        this.a.setHorizontalScrollBarEnabled(false);
        this.a.setVerticalScrollBarEnabled(false);
        this.a.setScrollContainer(false);
        this.a.setWebChromeClient(new a());
        this.a.setWebViewClient(new b());
        if (VERSION.SDK_INT >= 19) {
            WebView webView = this.a;
            WebView.setWebContentsDebuggingEnabled(true);
        }
        this.b = this.a.getSettings();
        this.b.setDefaultTextEncodingName("utf-8");
        this.b.setUseWideViewPort(true);
        this.b.setLoadWithOverviewMode(true);
        this.b.setSupportZoom(true);
        this.b.setBuiltInZoomControls(true);
        this.b.setDisplayZoomControls(false);
        this.b.setDomStorageEnabled(true);
        this.b.setLayoutAlgorithm(LayoutAlgorithm.SINGLE_COLUMN);
        if (v.a(getApplicationContext())) {
            this.b.setCacheMode(-1);
        } else {
            this.b.setCacheMode(1);
        }
        this.b.setAllowFileAccessFromFileURLs(true);
        if (c.a()) {
            this.b.setMixedContentMode(0);
        }
        this.x = "";
        if ("com.ifengyu.intercom.action.PRODUCT_MANUAL".equals(this.v)) {
            this.x = getString(R.string.setting_product_instructions);
            imageView.setVisibility(0);
            String string = extras.getString("type", "dolphin");
            if (v.a()) {
                if (string.equals("seal")) {
                    this.q = "https://m.ifengyu.com/resources/en/productseal.html";
                } else if (string.equals("shark")) {
                    this.q = "https://m.ifengyu.com/resources/en/productshark.html";
                } else {
                    this.q = "https://m.ifengyu.com/resources/en/product.html";
                }
            } else if (string.equals("seal")) {
                this.q = "https://m.ifengyu.com/resources/productseal.html";
            } else if (string.equals("shark")) {
                this.q = "https://m.ifengyu.com/resources/productshark.html";
            } else {
                this.q = "https://m.ifengyu.com/resources/product.html";
            }
        } else if ("com.ifengyu.intercom.action.USE_HELP".equals(this.v)) {
            this.x = getString(R.string.setting_use_help);
            if (v.a()) {
                this.q = "https://m.ifengyu.com/resources/en/helper.html";
            } else {
                this.q = "https://m.ifengyu.com/resources/helper2.html";
            }
        } else if ("com.ifengyu.intercom.action.AGREEMENT_AND_PRIVACY".equals(this.v)) {
            this.x = getString(R.string.user_protocol);
            if (v.a()) {
                this.q = "https://m.ifengyu.com/resources/en/a_p.html";
            } else {
                this.q = "https://m.ifengyu.com/resources/a_p.html";
            }
        } else if ("com.ifengyu.intercom.action.CONNECT_HELP".equals(this.v)) {
            this.x = getString(R.string.connect_helper);
            if (v.a()) {
                this.q = "https://m.ifengyu.com/resources/en/c_h.html";
            } else {
                this.q = "https://m.ifengyu.com/resources/c_h.html";
            }
        } else if ("com.ifengyu.intercom.action.EXAM_IFNO_QUERY".equals(this.v)) {
            this.x = getString(R.string.setting_info_query);
            this.q = "https://m.ifengyu.com/resources/exam.html";
        } else if ("com.ifengyu.intercom.action.MESSAGE_CENTER".equals(this.v)) {
            this.x = getString(R.string.setting_message_center);
            this.q = d.g;
            this.b.setCacheMode(-1);
        } else if ("com.ifengyu.intercom.action.NEW_MAN_GUIDE".equals(this.v)) {
            this.x = getString(R.string.beginner_guide);
            this.q = d.h;
        } else if ("com.ifengyu.intercom.action.SINGLE_ARTICLE".equals(this.v)) {
            this.x = getString(R.string.connect_article_detail);
            this.w = intent.getExtras().getInt("cms_single_article_id");
            this.q = d.f + this.w;
            this.b.setCacheMode(-1);
        } else if ("com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER".equals(this.v)) {
            this.x = getString(R.string.user_power_center);
            if (v.a()) {
                this.q = "https://m.ifengyu.com/resources/en/userPower/powerList.html";
            } else {
                this.q = "https://m.ifengyu.com/resources/userPower/powerList.html";
            }
            this.b.setCacheMode(-1);
        }
        if (extras != null) {
            String string2 = extras.getString("url", "");
            s.b("WebViewActivity", "url" + string2);
            if (!TextUtils.isEmpty(string2)) {
                this.x = getString(R.string.setting_message_center);
                this.q = string2;
                this.b.setCacheMode(-1);
            }
        }
        d();
        this.d.setText(this.x);
        this.a.loadUrl(this.q);
    }

    private void d() {
        try {
            CookieManager instance = CookieManager.getInstance();
            instance.setAcceptCookie(true);
            instance.removeAllCookie();
            String K = w.K();
            String L = w.L();
            if (!TextUtils.isEmpty(K) && !TextUtils.isEmpty(L)) {
                String concat = K.concat(":").concat(L);
                if ("com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER".equals(this.v)) {
                    instance.setCookie(this.q, "AUTH=" + concat);
                } else {
                    instance.setCookie(this.q, "_AUTH=" + new String(Base64.encode(concat.getBytes("ISO-8859-1"), 2), "ISO-8859-1"));
                }
                if (VERSION.SDK_INT < 21) {
                    CookieSyncManager.createInstance(this).sync();
                }
            }
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    public void onBackPressed() {
        e();
    }

    private void e() {
        if ("com.ifengyu.intercom.action.PRODUCT_MANUAL".equals(this.v)) {
            finish();
        } else if (this.a == null || !this.a.canGoBack()) {
            finish();
        } else {
            this.a.goBack();
        }
    }

    public void onClick(View view) {
        int i = 0;
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                e();
                return;
            case R.id.title_bar_right /*2131755355*/:
                if (!this.q.equals("https://m.ifengyu.com/resources/product.html") && !this.q.equals("https://m.ifengyu.com/resources/en/product.html")) {
                    if (this.q.equals("https://m.ifengyu.com/resources/productseal.html") || this.q.equals("https://m.ifengyu.com/resources/en/productseal.html")) {
                        i = 1;
                    } else if (this.q.equals("https://m.ifengyu.com/resources/productshark.html") || this.q.equals("https://m.ifengyu.com/resources/en/productshark.html")) {
                        i = 2;
                    }
                }
                com.ifengyu.intercom.ui.widget.view.c cVar = new com.ifengyu.intercom.ui.widget.view.c(this, i);
                cVar.setOnclickListener(new com.ifengyu.intercom.ui.widget.view.c.a() {
                    public void a() {
                        if (v.a()) {
                            WebViewActivity.this.q = "https://m.ifengyu.com/resources/en/product.html";
                        } else {
                            WebViewActivity.this.q = "https://m.ifengyu.com/resources/product.html";
                        }
                        WebViewActivity.this.a.loadUrl(WebViewActivity.this.q);
                    }

                    public void b() {
                        if (v.a()) {
                            WebViewActivity.this.q = "https://m.ifengyu.com/resources/en/productseal.html";
                        } else {
                            WebViewActivity.this.q = "https://m.ifengyu.com/resources/productseal.html";
                        }
                        WebViewActivity.this.a.loadUrl(WebViewActivity.this.q);
                    }

                    public void c() {
                        if (v.a()) {
                            WebViewActivity.this.q = "https://m.ifengyu.com/resources/en/productshark.html";
                        } else {
                            WebViewActivity.this.q = "https://m.ifengyu.com/resources/productshark.html";
                        }
                        WebViewActivity.this.a.loadUrl(WebViewActivity.this.q);
                    }
                });
                cVar.show();
                return;
            case R.id.webview_reload_btn /*2131755877*/:
                this.a.reload();
                this.a.setVisibility(8);
                this.u.setVisibility(8);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void a(final SslErrorHandler sslErrorHandler, String str) {
        Builder builder;
        try {
            builder = a(new Builder(), MiTalkiApp.a().getAssets().open("Certificate.cer"));
        } catch (IOException e) {
            builder = new Builder();
        }
        builder.build().newCall(new Request.Builder().url(str).build()).enqueue(new Callback() {
            public void onFailure(Call call, IOException iOException) {
                WebViewActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        if (WebViewActivity.this.u != null) {
                            WebViewActivity.this.u.setVisibility(0);
                        }
                    }
                });
            }

            public void onResponse(Call call, Response response) throws IOException {
                sslErrorHandler.proceed();
            }
        });
    }

    private Builder a(Builder builder, InputStream... inputStreamArr) {
        int i = 0;
        try {
            CertificateFactory instance = CertificateFactory.getInstance("X.509");
            KeyStore instance2 = KeyStore.getInstance("PKCS12", BouncyCastleProvider.PROVIDER_NAME);
            instance2.load(null);
            int length = inputStreamArr.length;
            int i2 = 0;
            while (i < length) {
                InputStream inputStream = inputStreamArr[i];
                int i3 = i2 + 1;
                instance2.setCertificateEntry(Integer.toString(i2), instance.generateCertificate(inputStream));
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                    }
                }
                i++;
                i2 = i3;
            }
            SSLContext instance3 = SSLContext.getInstance("TLS");
            TrustManagerFactory instance4 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            instance4.init(instance2);
            instance3.init(null, instance4.getTrustManagers(), new SecureRandom());
            SSLSocketFactory socketFactory = instance3.getSocketFactory();
            builder.sslSocketFactory(socketFactory, Platform.get().trustManager(socketFactory));
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
        return builder;
    }

    /* access modifiers changed from: private */
    public void a(int i) {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this.c, "progress", new int[]{this.s, i});
        ofInt.setDuration(300);
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.start();
    }

    /* access modifiers changed from: private */
    public void b(final int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.c, "alpha", new float[]{1.0f, 0.0f});
        ofFloat.setDuration(1500);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                WebViewActivity.this.c.setProgress((int) ((valueAnimator.getAnimatedFraction() * ((float) (100 - i))) + ((float) i)));
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                WebViewActivity.this.c.setProgress(0);
                WebViewActivity.this.c.setVisibility(8);
                WebViewActivity.this.r = false;
            }
        });
        ofFloat.start();
    }
}
