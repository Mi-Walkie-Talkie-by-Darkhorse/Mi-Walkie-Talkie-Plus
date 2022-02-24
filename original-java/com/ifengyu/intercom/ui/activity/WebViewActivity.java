package com.ifengyu.intercom.ui.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.i;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.view.b;
import com.tencent.open.SocialConstants;
import com.xiaomi.mipush.sdk.Constants;
import java.io.UnsupportedEncodingException;
import org.bouncycastle.i18n.LocalizedMessage;

/* loaded from: classes2.dex */
public class WebViewActivity extends BaseActivity implements View.OnClickListener {
    private int A;
    private String B;
    private WebView q;
    private WebSettings r;
    private ProgressBar s;
    private TextView t;
    private String u;
    private boolean v;
    private int w;
    private FrameLayout x;
    private View y;
    private String z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements b.a {
        a() {
        }

        @Override // com.ifengyu.intercom.ui.widget.view.b.a
        public void a() {
            if (c0.a()) {
                WebViewActivity.this.u = "https://m.ifengyu.com/resources/en/productshark.html";
            } else {
                WebViewActivity.this.u = "https://m.ifengyu.com/resources/productshark.html";
            }
            WebViewActivity.this.q.loadUrl(WebViewActivity.this.u);
        }

        @Override // com.ifengyu.intercom.ui.widget.view.b.a
        public void b() {
            if (c0.a()) {
                WebViewActivity.this.u = "https://m.ifengyu.com/resources/en/productseal.html";
            } else {
                WebViewActivity.this.u = "https://m.ifengyu.com/resources/productseal.html";
            }
            WebViewActivity.this.q.loadUrl(WebViewActivity.this.u);
        }

        @Override // com.ifengyu.intercom.ui.widget.view.b.a
        public void c() {
            if (c0.a()) {
                WebViewActivity.this.u = "https://m.ifengyu.com/resources/en/product.html";
            } else {
                WebViewActivity.this.u = "https://m.ifengyu.com/resources/product.html";
            }
            WebViewActivity.this.q.loadUrl(WebViewActivity.this.u);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f6204a;

        b(int i) {
            this.f6204a = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WebViewActivity.this.s.setProgress((int) (this.f6204a + ((100 - this.f6204a) * valueAnimator.getAnimatedFraction())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            WebViewActivity.this.s.setProgress(0);
            WebViewActivity.this.s.setVisibility(8);
            WebViewActivity.this.v = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d extends WebChromeClient {
        private d() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            WebViewActivity webViewActivity = WebViewActivity.this;
            webViewActivity.w = webViewActivity.s.getProgress();
            if (i < 100 || WebViewActivity.this.v) {
                WebViewActivity.this.f(i);
            } else {
                WebViewActivity.this.v = true;
                WebViewActivity.this.s.setProgress(i);
                WebViewActivity webViewActivity2 = WebViewActivity.this;
                webViewActivity2.e(webViewActivity2.s.getProgress());
            }
            super.onProgressChanged(webView, i);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            z.a("WebViewActivity", "onReceivedTitle:" + str);
            if (WebViewActivity.this.t == null) {
                return;
            }
            if (TextUtils.isEmpty(str) || str.startsWith("http")) {
                WebViewActivity.this.t.setText(WebViewActivity.this.B);
            } else {
                WebViewActivity.this.t.setText(str);
            }
        }

        /* synthetic */ d(WebViewActivity webViewActivity, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e extends WebViewClient {
        private e() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            z.a("WebViewActivity", "onPageFinished:");
            if (WebViewActivity.this.q != null) {
                WebViewActivity.this.q.setVisibility(0);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            z.a("WebViewActivity", "onPageStarted url:" + str);
            if (WebViewActivity.this.s != null) {
                WebViewActivity.this.s.setVisibility(0);
                WebViewActivity.this.s.setAlpha(1.0f);
            }
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            z.a("WebViewActivity", "Deprecated onReceivedError:\nerrorCode:" + i + ", desc:" + str);
            if (WebViewActivity.this.y != null) {
                WebViewActivity.this.y.setVisibility(0);
            }
            if (WebViewActivity.this.q != null) {
                WebViewActivity.this.q.setVisibility(8);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            z.a("WebViewActivity", "onReceivedHttpError:" + webResourceResponse.getEncoding());
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            z.a("WebViewActivity", "onReceivedSslError:" + sslError);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            z.a("WebViewActivity", "shouldOverrideUrlLoading url:" + str);
            webView.loadUrl(str);
            return true;
        }

        /* synthetic */ e(WebViewActivity webViewActivity, a aVar) {
            this();
        }
    }

    private void w() {
        if ("com.ifengyu.intercom.action.PRODUCT_MANUAL".equals(this.z)) {
            finish();
            return;
        }
        WebView webView = this.q;
        if (webView == null || !webView.canGoBack()) {
            finish();
        } else {
            this.q.goBack();
        }
    }

    private void x() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.title_bar_right);
        imageView.setImageResource(R.drawable.product_icon_swich);
        imageView.setOnClickListener(this);
        Intent intent = getIntent();
        this.z = intent.getAction();
        Bundle extras = intent.getExtras();
        this.s = (ProgressBar) findViewById(R.id.pb);
        TextView textView = (TextView) findViewById(R.id.title_bar_title);
        this.t = textView;
        textView.setTypeface(p.f5325c);
        this.s.setMax(100);
        this.q.setScrollBarSize(0);
        this.q.setHapticFeedbackEnabled(false);
        this.q.setHorizontalScrollBarEnabled(false);
        this.q.setVerticalScrollBarEnabled(false);
        this.q.setScrollContainer(false);
        this.q.setWebChromeClient(new d(this, null));
        this.q.setWebViewClient(new e(this, null));
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        WebSettings settings = this.q.getSettings();
        this.r = settings;
        settings.setDefaultTextEncodingName("utf-8");
        this.r.setUseWideViewPort(true);
        this.r.setLoadWithOverviewMode(true);
        this.r.setSupportZoom(true);
        this.r.setBuiltInZoomControls(true);
        this.r.setDisplayZoomControls(false);
        this.r.setDomStorageEnabled(true);
        this.r.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        if (c0.b(getApplicationContext())) {
            this.r.setCacheMode(-1);
        } else {
            this.r.setCacheMode(1);
        }
        this.r.setAllowFileAccessFromFileURLs(true);
        if (i.a()) {
            this.r.setMixedContentMode(0);
        }
        this.B = "";
        if ("com.ifengyu.intercom.action.PRODUCT_MANUAL".equals(this.z)) {
            this.B = getString(R.string.setting_product_instructions);
            imageView.setVisibility(0);
            String string = extras.getString("type", "dolphin");
            if (c0.a()) {
                if (string.equals("seal")) {
                    this.u = "https://m.ifengyu.com/resources/en/productseal.html";
                } else if (string.equals("shark")) {
                    this.u = "https://m.ifengyu.com/resources/en/productshark.html";
                } else {
                    this.u = "https://m.ifengyu.com/resources/en/product.html";
                }
            } else if (string.equals("seal")) {
                this.u = "https://m.ifengyu.com/resources/productseal.html";
            } else if (string.equals("shark")) {
                this.u = "https://m.ifengyu.com/resources/productshark.html";
            } else {
                this.u = "https://m.ifengyu.com/resources/product.html";
            }
        } else if ("com.ifengyu.intercom.action.USE_HELP".equals(this.z)) {
            this.B = getString(R.string.setting_use_help);
            if (c0.a()) {
                this.u = "https://m.ifengyu.com/resources/en/helper.html";
            } else {
                this.u = "https://m.ifengyu.com/resources/helper2.html";
            }
        } else if ("com.ifengyu.intercom.action.CONNECT_HELP".equals(this.z)) {
            this.B = getString(R.string.connect_helper);
            if (c0.a()) {
                this.u = "https://m.ifengyu.com/resources/en/c_h.html";
            } else {
                this.u = "https://m.ifengyu.com/resources/c_h.html";
            }
        } else if ("com.ifengyu.intercom.action.EXAM_IFNO_QUERY".equals(this.z)) {
            this.B = getString(R.string.setting_info_query);
            this.u = "https://m.ifengyu.com/resources/exam.html";
        } else if ("com.ifengyu.intercom.action.MESSAGE_CENTER".equals(this.z)) {
            this.B = getString(R.string.setting_message_center);
            this.u = "https://cms.ifengyu.com/m/";
            this.r.setCacheMode(-1);
        } else if ("com.ifengyu.intercom.action.NEW_MAN_GUIDE".equals(this.z)) {
            this.B = getString(R.string.beginner_guide);
            this.u = "https://cms.ifengyu.com/m/list/42?isShowComment=0";
        } else if ("com.ifengyu.intercom.action.SINGLE_ARTICLE".equals(this.z)) {
            this.B = getString(R.string.connect_article_detail);
            this.A = intent.getExtras().getInt("cms_single_article_id");
            this.u = "https://cms.ifengyu.com/m/p/" + this.A;
            this.r.setCacheMode(-1);
        } else if ("com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER".equals(this.z)) {
            this.B = getString(R.string.user_power_center);
            if (c0.a()) {
                this.u = "https://m.ifengyu.com/resources/en/userPower/powerList.html";
            } else {
                this.u = "https://m.ifengyu.com/resources/userPower/powerList.html";
            }
            this.r.setCacheMode(-1);
        }
        if (extras != null) {
            String string2 = extras.getString(SocialConstants.PARAM_URL, "");
            z.a("WebViewActivity", SocialConstants.PARAM_URL + string2);
            if (!TextUtils.isEmpty(string2)) {
                this.B = getString(R.string.setting_message_center);
                this.u = string2;
                this.r.setCacheMode(-1);
            }
        }
        y();
        this.t.setText(this.B);
        this.q.loadUrl(this.u);
    }

    private void y() {
        try {
            CookieManager instance = CookieManager.getInstance();
            instance.setAcceptCookie(true);
            instance.removeAllCookie();
            String N = d0.N();
            String O = d0.O();
            if (!TextUtils.isEmpty(N) && !TextUtils.isEmpty(O)) {
                String concat = N.concat(Constants.COLON_SEPARATOR).concat(O);
                if ("com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER".equals(this.z)) {
                    String str = this.u;
                    instance.setCookie(str, "AUTH=" + concat);
                } else {
                    String str2 = new String(Base64.encode(concat.getBytes(LocalizedMessage.DEFAULT_ENCODING), 2), LocalizedMessage.DEFAULT_ENCODING);
                    String str3 = this.u;
                    instance.setCookie(str3, "_AUTH=" + str2);
                }
                if (Build.VERSION.SDK_INT < 21) {
                    CookieSyncManager.createInstance(this).sync();
                }
            }
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        w();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /* 2131297305 */:
                w();
                return;
            case R.id.title_bar_right /* 2131297306 */:
                int i = 0;
                if (!this.u.equals("https://m.ifengyu.com/resources/product.html") && !this.u.equals("https://m.ifengyu.com/resources/en/product.html")) {
                    if (this.u.equals("https://m.ifengyu.com/resources/productseal.html") || this.u.equals("https://m.ifengyu.com/resources/en/productseal.html")) {
                        i = 1;
                    } else if (this.u.equals("https://m.ifengyu.com/resources/productshark.html") || this.u.equals("https://m.ifengyu.com/resources/en/productshark.html")) {
                        i = 2;
                    }
                }
                com.ifengyu.intercom.ui.widget.view.b bVar = new com.ifengyu.intercom.ui.widget.view.b(this, i);
                bVar.setOnclickListener(new a());
                bVar.show();
                return;
            case R.id.webview_reload_btn /* 2131297494 */:
                this.q.reload();
                this.q.setVisibility(8);
                this.y.setVisibility(8);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(getApplicationContext()).inflate(R.layout.activity_webview, (ViewGroup) null);
        this.x = (FrameLayout) inflate.findViewById(R.id.web_content);
        WebView webView = new WebView(getApplicationContext());
        this.q = webView;
        webView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        View inflate2 = View.inflate(this, R.layout.webview_load_fail, null);
        this.y = inflate2;
        inflate2.findViewById(R.id.webview_reload_btn).setOnClickListener(this);
        this.y.setVisibility(8);
        this.x.addView(this.q, 0);
        this.x.addView(this.y, 1);
        setContentView(inflate);
        x();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        WebView webView = this.q;
        if (webView != null) {
            webView.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            this.q.removeAllViews();
            this.q.clearHistory();
            ViewGroup viewGroup = (ViewGroup) this.q.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.q);
            }
            this.q.destroy();
            this.q = null;
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.r.setJavaScriptEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.r.setJavaScriptEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.s, "alpha", 1.0f, 0.0f);
        ofFloat.setDuration(1500L);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.addUpdateListener(new b(i));
        ofFloat.addListener(new c());
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(int i) {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this.s, "progress", this.w, i);
        ofInt.setDuration(300L);
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.start();
    }
}
