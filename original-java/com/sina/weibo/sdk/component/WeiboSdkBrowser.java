package com.sina.weibo.sdk.component;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sina.weibo.sdk.component.view.LoadingBar;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.d;
import com.sina.weibo.sdk.net.f;
import com.sina.weibo.sdk.utils.c;
import com.sina.weibo.sdk.utils.e;
import com.sina.weibo.sdk.utils.i;
import org.apache.http.HttpHost;
import org.apache.http.protocol.HTTP;
import org.bouncycastle.crypto.tls.CipherSuite;

public class WeiboSdkBrowser extends Activity implements c {
    /* access modifiers changed from: private */
    public static final String a = WeiboSdkBrowser.class.getName();
    private String b;
    /* access modifiers changed from: private */
    public String c;
    /* access modifiers changed from: private */
    public boolean d;
    /* access modifiers changed from: private */
    public String e;
    /* access modifiers changed from: private */
    public boolean f;
    private TextView g;
    private TextView h;
    private WebView i;
    /* access modifiers changed from: private */
    public LoadingBar j;
    private LinearLayout k;
    private Button l;
    /* access modifiers changed from: private */
    public Boolean m = Boolean.valueOf(false);
    /* access modifiers changed from: private */
    public d n;
    private j o;

    private class a extends WebChromeClient {
        private a() {
        }

        /* synthetic */ a(WeiboSdkBrowser weiboSdkBrowser, a aVar) {
            this();
        }

        public void onProgressChanged(WebView webView, int i) {
            WeiboSdkBrowser.this.j.a(i);
            if (i == 100) {
                WeiboSdkBrowser.this.d = false;
                WeiboSdkBrowser.this.a();
            } else if (!WeiboSdkBrowser.this.d) {
                WeiboSdkBrowser.this.d = true;
                WeiboSdkBrowser.this.a();
            }
        }

        public void onReceivedTitle(WebView webView, String str) {
            if (!WeiboSdkBrowser.this.b(WeiboSdkBrowser.this.e) && !WeiboSdkBrowser.this.m.booleanValue()) {
                WeiboSdkBrowser.this.c = str;
                WeiboSdkBrowser.this.f();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!a(getIntent())) {
            finish();
            return;
        }
        g();
        d();
        if (a(this.n)) {
            c();
        } else {
            a(this.e);
        }
    }

    private boolean a(Intent intent) {
        Bundle extras = intent.getExtras();
        this.n = a(extras);
        if (this.n != null) {
            this.e = this.n.e();
            this.b = this.n.g();
        } else {
            String string = extras.getString("key_url");
            String string2 = extras.getString("key_specify_title");
            if (!TextUtils.isEmpty(string) && string.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                this.e = string;
                this.b = string2;
            }
        }
        if (TextUtils.isEmpty(this.e)) {
            return false;
        }
        c.a(a, "LOAD URL : " + this.e);
        return true;
    }

    /* access modifiers changed from: private */
    public void a(String str) {
        this.i.loadUrl(str);
    }

    private void c() {
        c.a(a, "Enter startShare()............");
        final f fVar = (f) this.n;
        if (fVar.a()) {
            c.a(a, "loadUrl hasImage............");
            new com.sina.weibo.sdk.net.a(this).a("http://service.weibo.com/share/mobilesdk_uppic.php", fVar.a(new f(fVar.b())), "POST", new d() {
                public void a(WeiboException weiboException) {
                    c.a(WeiboSdkBrowser.a, "post onWeiboException " + weiboException.getMessage());
                    fVar.a((Activity) WeiboSdkBrowser.this, weiboException.getMessage());
                    WeiboSdkBrowser.this.finish();
                }

                public void a(String str) {
                    c.a(WeiboSdkBrowser.a, "post onComplete : " + str);
                    com.sina.weibo.sdk.component.f.a a2 = com.sina.weibo.sdk.component.f.a.a(str);
                    if (a2 == null || a2.a() != 1 || TextUtils.isEmpty(a2.b())) {
                        fVar.a((Activity) WeiboSdkBrowser.this, "upload pic faild");
                        WeiboSdkBrowser.this.finish();
                        return;
                    }
                    WeiboSdkBrowser.this.a(fVar.c(a2.b()));
                }
            });
            return;
        }
        a(this.e);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void d() {
        this.i.getSettings().setJavaScriptEnabled(true);
        if (a(this.n)) {
            this.i.getSettings().setUserAgentString(i.b((Context) this));
        }
        this.i.getSettings().setSavePassword(false);
        this.i.setWebViewClient(this.o);
        this.i.setWebChromeClient(new a(this, null));
        this.i.requestFocus();
        this.i.setScrollBarStyle(0);
        if (VERSION.SDK_INT >= 11) {
            this.i.removeJavascriptInterface("searchBoxJavaBridge_");
        } else {
            a(this.i);
        }
    }

    private void e() {
        this.h.setText(this.b);
        this.g.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (WeiboSdkBrowser.this.n != null) {
                    WeiboSdkBrowser.this.n.a(WeiboSdkBrowser.this, 3);
                }
                WeiboSdkBrowser.this.finish();
            }
        });
    }

    /* access modifiers changed from: private */
    public void f() {
        String str = "";
        if (!TextUtils.isEmpty(this.c)) {
            str = this.c;
        } else if (!TextUtils.isEmpty(this.b)) {
            str = this.b;
        }
        this.h.setText(str);
    }

    private void g() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(-1);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(1);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LayoutParams(-1, -2));
        View h2 = h();
        TextView textView = new TextView(this);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, com.sina.weibo.sdk.utils.f.a((Context) this, 2)));
        textView.setBackgroundDrawable(com.sina.weibo.sdk.utils.f.b(this, "weibosdk_common_shadow_top.9.png"));
        this.j = new LoadingBar(this);
        this.j.setBackgroundColor(0);
        this.j.a(0);
        this.j.setLayoutParams(new LinearLayout.LayoutParams(-1, com.sina.weibo.sdk.utils.f.a((Context) this, 3)));
        linearLayout.addView(h2);
        linearLayout.addView(textView);
        linearLayout.addView(this.j);
        this.i = new WebView(this);
        this.i.setBackgroundColor(-1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(3, 1);
        this.i.setLayoutParams(layoutParams);
        this.k = new LinearLayout(this);
        this.k.setVisibility(8);
        this.k.setOrientation(1);
        this.k.setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(3, 1);
        this.k.setLayoutParams(layoutParams2);
        ImageView imageView = new ImageView(this);
        imageView.setImageDrawable(com.sina.weibo.sdk.utils.f.a((Context) this, "weibosdk_empty_failed.png"));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        int a2 = com.sina.weibo.sdk.utils.f.a((Context) this, 8);
        layoutParams3.bottomMargin = a2;
        layoutParams3.rightMargin = a2;
        layoutParams3.topMargin = a2;
        layoutParams3.leftMargin = a2;
        imageView.setLayoutParams(layoutParams3);
        this.k.addView(imageView);
        TextView textView2 = new TextView(this);
        textView2.setGravity(1);
        textView2.setTextColor(-4342339);
        textView2.setTextSize(2, 14.0f);
        textView2.setText(com.sina.weibo.sdk.utils.f.a(this, "A network error occurs, please tap the button to reload", "网络出错啦，请点击按钮重新加载", "網路出錯啦，請點擊按鈕重新載入"));
        textView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.k.addView(textView2);
        this.l = new Button(this);
        this.l.setGravity(17);
        this.l.setTextColor(-8882056);
        this.l.setTextSize(2, 16.0f);
        this.l.setText(com.sina.weibo.sdk.utils.f.a(this, "channel_data_error", "重新加载", "重新載入"));
        this.l.setBackgroundDrawable(com.sina.weibo.sdk.utils.f.a((Context) this, "weibosdk_common_button_alpha.9.png", "weibosdk_common_button_alpha_highlighted.9.png"));
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(com.sina.weibo.sdk.utils.f.a((Context) this, (int) CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA), com.sina.weibo.sdk.utils.f.a((Context) this, 46));
        layoutParams4.topMargin = com.sina.weibo.sdk.utils.f.a((Context) this, 10);
        this.l.setLayoutParams(layoutParams4);
        this.l.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                WeiboSdkBrowser.this.a(WeiboSdkBrowser.this.e);
                WeiboSdkBrowser.this.f = false;
            }
        });
        this.k.addView(this.l);
        relativeLayout.addView(linearLayout);
        relativeLayout.addView(this.i);
        relativeLayout.addView(this.k);
        setContentView(relativeLayout);
        e();
    }

    private View h() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new LayoutParams(-1, com.sina.weibo.sdk.utils.f.a((Context) this, 45)));
        relativeLayout.setBackgroundDrawable(com.sina.weibo.sdk.utils.f.b(this, "weibosdk_navigationbar_background.9.png"));
        this.g = new TextView(this);
        this.g.setClickable(true);
        this.g.setTextSize(2, 17.0f);
        this.g.setTextColor(com.sina.weibo.sdk.utils.f.a(-32256, 1728020992));
        this.g.setText(com.sina.weibo.sdk.utils.f.a(this, HTTP.CONN_CLOSE, "关闭", "关闭"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(5);
        layoutParams.addRule(15);
        layoutParams.leftMargin = com.sina.weibo.sdk.utils.f.a((Context) this, 10);
        layoutParams.rightMargin = com.sina.weibo.sdk.utils.f.a((Context) this, 10);
        this.g.setLayoutParams(layoutParams);
        relativeLayout.addView(this.g);
        this.h = new TextView(this);
        this.h.setTextSize(2, 18.0f);
        this.h.setTextColor(-11382190);
        this.h.setEllipsize(TruncateAt.END);
        this.h.setSingleLine(true);
        this.h.setGravity(17);
        this.h.setMaxWidth(com.sina.weibo.sdk.utils.f.a((Context) this, 160));
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        this.h.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.h);
        return relativeLayout;
    }

    /* access modifiers changed from: protected */
    public void a() {
        if (this.d) {
            j();
        } else {
            i();
        }
    }

    private void i() {
        f();
        this.j.setVisibility(8);
    }

    private void j() {
        this.h.setText(com.sina.weibo.sdk.utils.f.a(this, "Loading....", "加载中....", "載入中...."));
        this.j.setVisibility(0);
    }

    private void b(WebView webView, int i2, String str, String str2) {
        if (!str2.startsWith("sinaweibo")) {
            this.f = true;
            k();
        }
    }

    private void k() {
        this.k.setVisibility(0);
        this.i.setVisibility(8);
    }

    private void l() {
        this.k.setVisibility(8);
        this.i.setVisibility(0);
    }

    /* access modifiers changed from: private */
    public boolean b(String str) {
        if (!TextUtils.isEmpty(str) && "sinaweibo".equalsIgnoreCase(Uri.parse(str).getAuthority())) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        e.d(this);
        super.onDestroy();
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyUp(i2, keyEvent);
        }
        if (this.n != null) {
            this.n.a(this, 3);
        }
        finish();
        return true;
    }

    private d a(Bundle bundle) {
        this.m = Boolean.valueOf(false);
        BrowserLauncher browserLauncher = (BrowserLauncher) bundle.getSerializable("key_launcher");
        if (browserLauncher == BrowserLauncher.AUTH) {
            a aVar = new a(this);
            aVar.c(bundle);
            a(aVar);
            return aVar;
        } else if (browserLauncher == BrowserLauncher.SHARE) {
            f fVar = new f(this);
            fVar.c(bundle);
            a(fVar);
            return fVar;
        } else if (browserLauncher == BrowserLauncher.WIDGET) {
            k kVar = new k(this);
            kVar.c(bundle);
            a(kVar);
            return kVar;
        } else if (browserLauncher != BrowserLauncher.GAME) {
            return null;
        } else {
            this.m = Boolean.valueOf(true);
            e eVar = new e(this);
            eVar.c(bundle);
            a(eVar);
            return eVar;
        }
    }

    private boolean a(d dVar) {
        return dVar != null && dVar.f() == BrowserLauncher.SHARE;
    }

    private void a(a aVar) {
        this.o = new b(this, aVar);
        this.o.a(this);
    }

    private void a(f fVar) {
        g gVar = new g(this, fVar);
        gVar.a(this);
        this.o = gVar;
    }

    private void a(k kVar) {
        l lVar = new l(this, kVar);
        lVar.a(this);
        this.o = lVar;
    }

    private void a(e eVar) {
        i iVar = new i(this, eVar);
        iVar.a(this);
        this.o = iVar;
    }

    public void a(WebView webView, String str, Bitmap bitmap) {
        c.a(a, "onPageStarted URL: " + str);
        this.e = str;
        if (!b(str)) {
            this.c = "";
        }
    }

    public boolean a(WebView webView, String str) {
        c.b(a, "shouldOverrideUrlLoading URL: " + str);
        return false;
    }

    public void b(WebView webView, String str) {
        c.a(a, "onPageFinished URL: " + str);
        if (this.f) {
            k();
            return;
        }
        this.f = false;
        l();
    }

    public void a(WebView webView, int i2, String str, String str2) {
        c.a(a, "onReceivedError: errorCode = " + i2 + ", description = " + str + ", failingUrl = " + str2);
        b(webView, i2, str, str2);
    }

    public void a(WebView webView, SslErrorHandler sslErrorHandler, android.net.http.a aVar) {
        c.a(a, "onReceivedSslErrorCallBack.........");
    }

    public static void a(Activity activity, String str, String str2) {
        h a2 = h.a(activity.getApplicationContext());
        if (!TextUtils.isEmpty(str)) {
            a2.b(str);
            activity.finish();
        }
        if (!TextUtils.isEmpty(str2)) {
            a2.d(str2);
            activity.finish();
        }
    }

    public void a(WebView webView) {
        if (VERSION.SDK_INT < 11) {
            try {
                webView.getClass().getDeclaredMethod("removeJavascriptInterface", new Class[0]).invoke("searchBoxJavaBridge_", new Object[0]);
            } catch (Exception e2) {
                c.c(a, e2.toString());
            }
        }
    }
}
