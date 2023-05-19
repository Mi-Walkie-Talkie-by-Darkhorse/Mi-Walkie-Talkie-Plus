package com.xiaomi.account.openauth;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tencent.open.SocialConstants;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.XiaomiOAuthResponse;
import com.xiaomi.account.openauth.internal.HashedDeviceIdUtil;
import com.xiaomi.account.utils.LogEncryptUtils;
import com.xiaomi.account.utils.OAuthUrlPaser;
import com.xiaomi.account.utils.ParcelableAttackGuardian;
import com.xiaomi.accountsdk.diagnosis.DiagnosisLog;
import com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface;

/* loaded from: classes2.dex */
public abstract class AuthorizeActivityBase extends Activity {
    public static final String KEY_ACTIVATORTOKEN = "activatorToken";
    public static final String KEY_HASH = "hash";
    public static final String KEY_KEEP_COOKIES = "extra_keep_cookies ";
    private static final String KEY_MY_BUNDLE = "extra_my_bundle";
    private static final String KEY_MY_INTENT = "extra_my_intent";
    public static final String KEY_OPERATOR = "operator";
    public static final String KEY_OPERATORLINK = "operatorLink";
    public static final String KEY_REDIRECT_URI = "redirect_uri";
    public static final String KEY_RESPONSE = "extra_response";
    private static final String KEY_RESULT_CODE = "extra_result_code";
    public static final String KEY_SERVICETOKEN = "serviceToken";
    public static final String KEY_USERID = "userid";
    private static final int REQUEST_CODE = 1001;
    public static int RESULT_CANCEL = 0;
    public static int RESULT_FAIL = 1;
    public static int RESULT_SUCCESS = -1;
    private static final String TAG = "AuthorizeActivityBase";
    private static final String UTF8 = "UTF-8";
    private boolean mKeepCookies = false;
    private boolean mMiddleActivityMode = false;
    private XiaomiOAuthResponse mResponse;
    private WebSettings mSettings;
    private String mUrl;
    private WebView mWebView;

    /* loaded from: classes2.dex */
    class AuthorizeWebViewClient extends WebViewClient {
        private final String mRedirectUrlOf3rdPartyApp;
        private StringBuilder mStringBuilder = new StringBuilder();

        AuthorizeWebViewClient(String str) {
            this.mRedirectUrlOf3rdPartyApp = str;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            AuthorizeActivityBase.this.onHideProgress();
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            AuthorizeActivityBase.this.onShowProgress();
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            AuthorizeActivityBase.this.onShowErrorUI();
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            AuthorizeActivityBase.this.onShowErrorUI();
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (this.mRedirectUrlOf3rdPartyApp != null && !str.toLowerCase().startsWith(this.mRedirectUrlOf3rdPartyApp.toLowerCase())) {
                return super.shouldOverrideUrlLoading(webView, str);
            }
            StringBuilder sb = this.mStringBuilder;
            sb.append(str + "\n");
            DiagnosisLogInterface diagnosisLogInterface = DiagnosisLog.get();
            diagnosisLogInterface.log("WebViewOauth..WebView.url=" + str);
            Bundle parse = OAuthUrlPaser.parse(str);
            if (parse != null) {
                String generateEncryptMessageLine = LogEncryptUtils.generateEncryptMessageLine(this.mStringBuilder.toString());
                Log.i(AuthorizeActivityBase.TAG, "WebViewOauth sucess");
                parse.putString(XiaomiOAuthConstants.EXTRA_INFO, generateEncryptMessageLine);
                AuthorizeActivityBase.this.setResultAndFinish(AuthorizeActivityBase.RESULT_SUCCESS, parse);
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    @SuppressLint({"DefaultLocale"})
    private void appendPassportUserAgent() {
        String userAgentString = this.mSettings.getUserAgentString();
        if (TextUtils.isEmpty(userAgentString)) {
            return;
        }
        this.mSettings.setUserAgentString((userAgentString + " Passport/OAuthSDK/" + BuildConfig.VERSION_NAME) + " mi/OAuthSDK/VersionCode/90");
    }

    public static Intent asMiddleActivity(Context context, Intent intent, IXiaomiAuthResponse iXiaomiAuthResponse, Class<? extends AuthorizeActivityBase> cls) {
        Intent intent2 = new Intent(context, cls);
        intent2.putExtra(KEY_MY_INTENT, intent);
        intent2.putExtra("extra_response", new XiaomiOAuthResponse(iXiaomiAuthResponse));
        return intent2;
    }

    private void removeCookiesIfNeeded() {
        if (this.mKeepCookies) {
            return;
        }
        CookieSyncManager.createInstance(this);
        CookieManager.getInstance().removeAllCookie();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final WebView getWebView() {
        return this.mWebView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isMiddleActivityMode() {
        return this.mMiddleActivityMode;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1001) {
            setResultAndFinish(i2, intent != null ? intent.getExtras() : null);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mWebView.canGoBack()) {
            this.mWebView.goBack();
        } else {
            setResultAndFinish(RESULT_CANCEL, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!new ParcelableAttackGuardian().safeCheck(this)) {
            finish();
            return;
        }
        Intent intent = getIntent();
        Bundle bundleExtra = intent.getBundleExtra(KEY_MY_BUNDLE);
        if (bundleExtra != null) {
            setResultAndFinish(intent.getIntExtra(KEY_RESULT_CODE, -1), bundleExtra);
            return;
        }
        this.mResponse = (XiaomiOAuthResponse) intent.getParcelableExtra("extra_response");
        Intent intent2 = (Intent) intent.getParcelableExtra(KEY_MY_INTENT);
        if (intent2 != null) {
            startActivityForResult(intent2, 1001);
            this.mMiddleActivityMode = true;
            return;
        }
        this.mKeepCookies = intent.getBooleanExtra(KEY_KEEP_COOKIES, false);
        WebView webView = new WebView(this);
        this.mWebView = webView;
        WebSettings settings = webView.getSettings();
        this.mSettings = settings;
        settings.setJavaScriptEnabled(true);
        this.mSettings.setSavePassword(false);
        this.mSettings.setSaveFormData(false);
        this.mUrl = intent.getStringExtra(SocialConstants.PARAM_URL);
        if (bundle == null) {
            removeCookiesIfNeeded();
        }
        appendPassportUserAgent();
        String stringExtra = intent.getStringExtra(KEY_REDIRECT_URI);
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        this.mWebView.setWebViewClient(new AuthorizeWebViewClient(stringExtra));
        this.mWebView.setWebChromeClient(new WebChromeClient() { // from class: com.xiaomi.account.openauth.AuthorizeActivityBase.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView2, int i) {
                AuthorizeActivityBase.this.onUpdateProgress(i);
            }
        });
        CookieSyncManager.createInstance(getApplicationContext());
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        String stringExtra2 = intent.getStringExtra(KEY_USERID);
        String stringExtra3 = intent.getStringExtra(KEY_SERVICETOKEN);
        if (!TextUtils.isEmpty(stringExtra2) && !TextUtils.isEmpty(stringExtra3)) {
            String str = XiaomiOAuthConstants.OAUTH2_HOST;
            cookieManager.setCookie(str, stringExtra2);
            cookieManager.setCookie(str, stringExtra3);
        }
        String stringExtra4 = intent.getStringExtra(KEY_ACTIVATORTOKEN);
        String stringExtra5 = intent.getStringExtra(KEY_HASH);
        String stringExtra6 = intent.getStringExtra(KEY_OPERATOR);
        String stringExtra7 = intent.getStringExtra(KEY_OPERATORLINK);
        String hashedDeviceIdNoThrow = new HashedDeviceIdUtil(this).getHashedDeviceIdNoThrow();
        String str2 = XiaomiOAuthConstants.OAUTH2_HOST;
        cookieManager.setCookie(str2, stringExtra5);
        cookieManager.setCookie(str2, stringExtra4);
        cookieManager.setCookie(str2, stringExtra6);
        cookieManager.setCookie(str2, stringExtra7);
        cookieManager.setCookie(str2, "deviceId=" + hashedDeviceIdNoThrow);
        CookieSyncManager.getInstance().sync();
        refreshWebView(false);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.removeAllViews();
            this.mWebView.destroy();
            this.mWebView = null;
        }
        super.onDestroy();
    }

    protected abstract void onHideErrorUI();

    protected abstract void onHideProgress();

    protected abstract void onShowErrorUI();

    protected abstract void onShowProgress();

    protected abstract void onUpdateProgress(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void refreshWebView() {
        refreshWebView(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setResultAndFinish(int i, Bundle bundle) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        setResult(i, intent);
        XiaomiOAuthResponse xiaomiOAuthResponse = this.mResponse;
        if (xiaomiOAuthResponse != null) {
            if (i == 0) {
                xiaomiOAuthResponse.onCancel();
            } else {
                xiaomiOAuthResponse.onResult(bundle);
            }
        }
        removeCookiesIfNeeded();
        finish();
    }

    protected final void refreshWebView(boolean z) {
        this.mWebView.loadUrl(this.mUrl);
        if (z) {
            onHideErrorUI();
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.xiaomi.account.openauth.AuthorizeActivityBase.2
                @Override // java.lang.Runnable
                public void run() {
                    AuthorizeActivityBase.this.onHideErrorUI();
                }
            });
        }
    }

    public static Intent asMiddleActivity(Context context, int i, Bundle bundle, Class<? extends AuthorizeActivityBase> cls) {
        Intent intent = new Intent(context, cls);
        intent.putExtra(KEY_MY_BUNDLE, bundle);
        intent.putExtra(KEY_RESULT_CODE, i);
        return intent;
    }
}
