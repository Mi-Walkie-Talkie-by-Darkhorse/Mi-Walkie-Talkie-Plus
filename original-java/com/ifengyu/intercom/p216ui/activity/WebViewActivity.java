package com.ifengyu.intercom.p216ui.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.webkit.CookieManager;
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
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.APIUtils;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.view.ProductDeviceSelectorDialog;
import com.ifengyu.library.account.UserCache;
import com.tencent.open.SocialConstants;
import com.xiaomi.mipush.sdk.Constants;
import java.nio.charset.StandardCharsets;

/* renamed from: com.ifengyu.intercom.ui.activity.WebViewActivity */
/* loaded from: classes2.dex */
public class WebViewActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private WebView f14893j;

    /* renamed from: k */
    private WebSettings f14894k;

    /* renamed from: l */
    private ProgressBar f14895l;

    /* renamed from: m */
    private TextView f14896m;

    /* renamed from: n */
    private String f14897n;

    /* renamed from: o */
    private boolean f14898o;

    /* renamed from: p */
    private int f14899p;

    /* renamed from: q */
    private FrameLayout f14900q;

    /* renamed from: r */
    private View f14901r;

    /* renamed from: s */
    private String f14902s;

    /* renamed from: t */
    private int f14903t;

    /* renamed from: u */
    private String f14904u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.WebViewActivity$a */
    /* loaded from: classes2.dex */
    public class C4374a implements ProductDeviceSelectorDialog.InterfaceC4963a {
        C4374a() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.ProductDeviceSelectorDialog.InterfaceC4963a
        /* renamed from: a */
        public void mo8734a() {
            if (MethodsUtils.m11297c()) {
                WebViewActivity.this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/en/productshark.html";
            } else {
                WebViewActivity.this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/productshark.html";
            }
            WebViewActivity.this.f14893j.loadUrl(WebViewActivity.this.f14897n);
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.ProductDeviceSelectorDialog.InterfaceC4963a
        /* renamed from: b */
        public void mo8733b() {
            if (MethodsUtils.m11297c()) {
                WebViewActivity.this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/en/productseal.html";
            } else {
                WebViewActivity.this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/productseal.html";
            }
            WebViewActivity.this.f14893j.loadUrl(WebViewActivity.this.f14897n);
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.ProductDeviceSelectorDialog.InterfaceC4963a
        /* renamed from: c */
        public void mo8732c() {
            if (MethodsUtils.m11297c()) {
                WebViewActivity.this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/en/product.html";
            } else {
                WebViewActivity.this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/product.html";
            }
            WebViewActivity.this.f14893j.loadUrl(WebViewActivity.this.f14897n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.WebViewActivity$b */
    /* loaded from: classes2.dex */
    public class C4375b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ int f14906a;

        C4375b(int i) {
            this.f14906a = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WebViewActivity.this.f14895l.setProgress((int) (this.f14906a + ((100 - this.f14906a) * valueAnimator.getAnimatedFraction())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.WebViewActivity$c */
    /* loaded from: classes2.dex */
    public class C4376c extends AnimatorListenerAdapter {
        C4376c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            WebViewActivity.this.f14895l.setProgress(0);
            WebViewActivity.this.f14895l.setVisibility(8);
            WebViewActivity.this.f14898o = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.ifengyu.intercom.ui.activity.WebViewActivity$d */
    /* loaded from: classes2.dex */
    public class C4377d extends WebChromeClient {
        private C4377d() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            WebViewActivity webViewActivity = WebViewActivity.this;
            webViewActivity.f14899p = webViewActivity.f14895l.getProgress();
            if (i < 100 || WebViewActivity.this.f14898o) {
                WebViewActivity.this.m10403V(i);
            } else {
                WebViewActivity.this.f14898o = true;
                WebViewActivity.this.f14895l.setProgress(i);
                WebViewActivity webViewActivity2 = WebViewActivity.this;
                webViewActivity2.m10404U(webViewActivity2.f14895l.getProgress());
            }
            super.onProgressChanged(webView, i);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            C4161y.m11054a("WebViewActivity", "onReceivedTitle:" + str);
            if (WebViewActivity.this.f14896m != null) {
                if (TextUtils.isEmpty(str) || str.startsWith("http")) {
                    WebViewActivity.this.f14896m.setText(WebViewActivity.this.f14904u);
                } else {
                    WebViewActivity.this.f14896m.setText(str);
                }
            }
        }

        /* synthetic */ C4377d(WebViewActivity webViewActivity, C4374a c4374a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.ifengyu.intercom.ui.activity.WebViewActivity$e */
    /* loaded from: classes2.dex */
    public class C4378e extends WebViewClient {
        private C4378e() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            C4161y.m11054a("WebViewActivity", "onPageFinished:");
            if (WebViewActivity.this.f14893j != null) {
                WebViewActivity.this.f14893j.setVisibility(0);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            C4161y.m11054a("WebViewActivity", "onPageStarted url:" + str);
            if (WebViewActivity.this.f14895l != null) {
                WebViewActivity.this.f14895l.setVisibility(0);
                WebViewActivity.this.f14895l.setAlpha(1.0f);
            }
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            C4161y.m11054a("WebViewActivity", "Deprecated onReceivedError:\nerrorCode:" + i + ", desc:" + str);
            if (WebViewActivity.this.f14901r != null) {
                WebViewActivity.this.f14901r.setVisibility(0);
            }
            if (WebViewActivity.this.f14893j != null) {
                WebViewActivity.this.f14893j.setVisibility(8);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            C4161y.m11054a("WebViewActivity", "onReceivedHttpError:" + webResourceResponse.getEncoding());
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            C4161y.m11054a("WebViewActivity", "onReceivedSslError:" + sslError);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            C4161y.m11054a("WebViewActivity", "shouldOverrideUrlLoading url:" + str);
            webView.loadUrl(str);
            return true;
        }

        /* synthetic */ C4378e(WebViewActivity webViewActivity, C4374a c4374a) {
            this();
        }
    }

    /* renamed from: S */
    private void m10406S() {
        if ("com.ifengyu.intercom.action.PRODUCT_MANUAL".equals(this.f14902s)) {
            finish();
            return;
        }
        WebView webView = this.f14893j;
        if (webView != null && webView.canGoBack()) {
            this.f14893j.goBack();
        } else {
            finish();
        }
    }

    /* renamed from: T */
    private void m10405T() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.title_bar_right);
        imageView.setImageResource(R.drawable.product_icon_swich);
        imageView.setOnClickListener(this);
        Intent intent = getIntent();
        this.f14902s = intent.getAction();
        Bundle extras = intent.getExtras();
        this.f14895l = (ProgressBar) findViewById(R.id.pb);
        TextView textView = (TextView) findViewById(R.id.title_bar_title);
        this.f14896m = textView;
        textView.setTypeface(AppConstants.f13907a);
        this.f14895l.setMax(100);
        this.f14893j.setScrollBarSize(0);
        this.f14893j.setHapticFeedbackEnabled(false);
        this.f14893j.setHorizontalScrollBarEnabled(false);
        this.f14893j.setVerticalScrollBarEnabled(false);
        this.f14893j.setScrollContainer(false);
        this.f14893j.setWebChromeClient(new C4377d(this, null));
        this.f14893j.setWebViewClient(new C4378e(this, null));
        WebView.setWebContentsDebuggingEnabled(true);
        WebSettings settings = this.f14893j.getSettings();
        this.f14894k = settings;
        settings.setDefaultTextEncodingName("utf-8");
        this.f14894k.setUseWideViewPort(true);
        this.f14894k.setLoadWithOverviewMode(true);
        this.f14894k.setSupportZoom(true);
        this.f14894k.setBuiltInZoomControls(true);
        this.f14894k.setDisplayZoomControls(false);
        this.f14894k.setDomStorageEnabled(true);
        this.f14894k.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        if (MethodsUtils.m11274z(getApplicationContext())) {
            this.f14894k.setCacheMode(-1);
        } else {
            this.f14894k.setCacheMode(1);
        }
        this.f14894k.setAllowFileAccessFromFileURLs(true);
        if (APIUtils.m11095a()) {
            this.f14894k.setMixedContentMode(0);
        }
        this.f14904u = "";
        if ("com.ifengyu.intercom.action.PRODUCT_MANUAL".equals(this.f14902s)) {
            this.f14904u = getString(R.string.setting_product_instructions);
            imageView.setVisibility(0);
            String string = extras.getString("type", "dolphin");
            if (MethodsUtils.m11297c()) {
                if (string.equals("seal")) {
                    this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/en/productseal.html";
                } else if (string.equals("shark")) {
                    this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/en/productshark.html";
                } else {
                    this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/en/product.html";
                }
            } else if (string.equals("seal")) {
                this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/productseal.html";
            } else if (string.equals("shark")) {
                this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/productshark.html";
            } else {
                this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/product.html";
            }
        } else if ("com.ifengyu.intercom.action.USE_HELP".equals(this.f14902s)) {
            this.f14904u = getString(R.string.setting_use_help);
            if (MethodsUtils.m11297c()) {
                this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/en/helper.html";
            } else {
                this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/helper2.html";
            }
        } else if ("com.ifengyu.intercom.action.CONNECT_HELP".equals(this.f14902s)) {
            this.f14904u = getString(R.string.connect_helper);
            if (MethodsUtils.m11297c()) {
                this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/en/c_h.html";
            } else {
                this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/c_h.html";
            }
        } else if ("com.ifengyu.intercom.action.EXAM_IFNO_QUERY".equals(this.f14902s)) {
            this.f14904u = getString(R.string.setting_info_query);
            this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/exam.html";
        } else if ("com.ifengyu.intercom.action.MESSAGE_CENTER".equals(this.f14902s)) {
            this.f14904u = getString(R.string.setting_message_center);
            this.f14897n = "https://cms.ifengyu.com/m/";
            this.f14894k.setCacheMode(-1);
        } else if ("com.ifengyu.intercom.action.NEW_MAN_GUIDE".equals(this.f14902s)) {
            this.f14904u = getString(R.string.beginner_guide);
            this.f14897n = "https://cms.ifengyu.com/m/list/42?isShowComment=0";
        } else if ("com.ifengyu.intercom.action.SINGLE_ARTICLE".equals(this.f14902s)) {
            this.f14904u = getString(R.string.connect_article_detail);
            this.f14903t = intent.getExtras().getInt("cms_single_article_id");
            this.f14897n = "https://cms.ifengyu.com/m/p/" + this.f14903t;
            this.f14894k.setCacheMode(-1);
        } else if ("com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER".equals(this.f14902s)) {
            this.f14904u = getString(R.string.user_power_center);
            if (MethodsUtils.m11297c()) {
                this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/en/userPower/powerList.html";
            } else {
                this.f14897n = "https://m.ifengyu.com/resourcesDev/resources/userPower/powerList.html";
            }
            this.f14894k.setCacheMode(-1);
        }
        if (extras != null) {
            String string2 = extras.getString(SocialConstants.PARAM_URL, "");
            C4161y.m11054a("WebViewActivity", SocialConstants.PARAM_URL + string2);
            if (!TextUtils.isEmpty(string2)) {
                this.f14904u = getString(R.string.setting_message_center);
                this.f14897n = string2;
                this.f14894k.setCacheMode(-1);
            }
        }
        m10402W();
        this.f14896m.setText(this.f14904u);
        this.f14893j.loadUrl(this.f14897n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U */
    public void m10404U(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f14895l, "alpha", 1.0f, BitmapDescriptorFactory.HUE_RED);
        ofFloat.setDuration(1500L);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.addUpdateListener(new C4375b(i));
        ofFloat.addListener(new C4376c());
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public void m10403V(int i) {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this.f14895l, "progress", this.f14899p, i);
        ofInt.setDuration(300L);
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.start();
    }

    /* renamed from: W */
    private void m10402W() {
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.removeAllCookie();
        String m11243P = MiTalkClientUtil.m11243P();
        String m11241Q = MiTalkClientUtil.m11241Q();
        if (TextUtils.isEmpty(m11243P) || TextUtils.isEmpty(m11241Q)) {
            return;
        }
        String concat = m11243P.concat(Constants.COLON_SEPARATOR).concat(m11241Q);
        if ("com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER".equals(this.f14902s)) {
            String str = this.f14897n;
            cookieManager.setCookie(str, "accessToken=" + UserCache.getUserInfo().tokens.accessToken);
            return;
        }
        String str2 = new String(Base64.encode(concat.getBytes(StandardCharsets.ISO_8859_1), 2), StandardCharsets.ISO_8859_1);
        String str3 = this.f14897n;
        cookieManager.setCookie(str3, "_AUTH=" + str2);
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m10406S();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /* 2131297422 */:
                m10406S();
                return;
            case R.id.title_bar_right /* 2131297423 */:
                int i = 0;
                if (!this.f14897n.equals("https://m.ifengyu.com/resourcesDev/resources/product.html") && !this.f14897n.equals("https://m.ifengyu.com/resourcesDev/resources/en/product.html")) {
                    if (this.f14897n.equals("https://m.ifengyu.com/resourcesDev/resources/productseal.html") || this.f14897n.equals("https://m.ifengyu.com/resourcesDev/resources/en/productseal.html")) {
                        i = 1;
                    } else if (this.f14897n.equals("https://m.ifengyu.com/resourcesDev/resources/productshark.html") || this.f14897n.equals("https://m.ifengyu.com/resourcesDev/resources/en/productshark.html")) {
                        i = 2;
                    }
                }
                ProductDeviceSelectorDialog productDeviceSelectorDialog = new ProductDeviceSelectorDialog(this, i);
                productDeviceSelectorDialog.setOnclickListener(new C4374a());
                productDeviceSelectorDialog.show();
                return;
            case R.id.webview_reload_btn /* 2131297610 */:
                this.f14893j.reload();
                this.f14893j.setVisibility(8);
                this.f14901r.setVisibility(8);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(getApplicationContext()).inflate(R.layout.activity_webview, (ViewGroup) null);
        this.f14900q = (FrameLayout) inflate.findViewById(R.id.web_content);
        WebView webView = new WebView(getApplicationContext());
        this.f14893j = webView;
        webView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        View inflate2 = View.inflate(this, R.layout.webview_load_fail, null);
        this.f14901r = inflate2;
        inflate2.findViewById(R.id.webview_reload_btn).setOnClickListener(this);
        this.f14901r.setVisibility(8);
        this.f14900q.addView(this.f14893j, 0);
        this.f14900q.addView(this.f14901r, 1);
        setContentView(inflate);
        m10405T();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        WebView webView = this.f14893j;
        if (webView != null) {
            webView.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            this.f14893j.removeAllViews();
            this.f14893j.clearHistory();
            ViewGroup viewGroup = (ViewGroup) this.f14893j.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.f14893j);
            }
            this.f14893j.destroy();
            this.f14893j = null;
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f14894k.setJavaScriptEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f14894k.setJavaScriptEnabled(true);
    }
}
