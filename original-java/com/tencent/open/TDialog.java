package com.tencent.open;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.Constants;
import com.tencent.open.a.f;
import com.tencent.open.b.g;
import com.tencent.open.c.b;
import com.tencent.open.utils.i;
import com.tencent.tauth.AuthActivity;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class TDialog extends b {
    static final LayoutParams c = new LayoutParams(-1, -1);
    static Toast d = null;
    private static WeakReference<ProgressDialog> f;
    /* access modifiers changed from: private */
    public WeakReference<Context> e;
    private String g;
    /* access modifiers changed from: private */
    public OnTimeListener h;
    private IUiListener i;
    private FrameLayout j;
    /* access modifiers changed from: private */
    public b k;
    /* access modifiers changed from: private */
    public Handler l;
    private boolean m = false;
    private QQToken n = null;

    /* compiled from: ProGuard */
    private class FbWebViewClient extends WebViewClient {
        private FbWebViewClient() {
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            f.a("openSDK_LOG.TDialog", "Redirect URL: " + str);
            if (str.startsWith(com.tencent.open.utils.f.a().a((Context) TDialog.this.e.get(), "auth://tauth.qq.com/"))) {
                TDialog.this.h.onComplete(i.c(str));
                if (TDialog.this.isShowing()) {
                    TDialog.this.dismiss();
                }
                return true;
            } else if (str.startsWith(Constants.CANCEL_URI)) {
                TDialog.this.h.onCancel();
                if (TDialog.this.isShowing()) {
                    TDialog.this.dismiss();
                }
                return true;
            } else if (str.startsWith(Constants.CLOSE_URI)) {
                if (TDialog.this.isShowing()) {
                    TDialog.this.dismiss();
                }
                return true;
            } else if (str.startsWith(Constants.DOWNLOAD_URI)) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(str.substring(Constants.DOWNLOAD_URI.length()))));
                    intent.addFlags(268435456);
                    if (!(TDialog.this.e == null || TDialog.this.e.get() == null)) {
                        ((Context) TDialog.this.e.get()).startActivity(intent);
                    }
                } catch (Exception e) {
                    ThrowableExtension.printStackTrace(e);
                }
                return true;
            } else if (str.startsWith("auth://progress")) {
                return true;
            } else {
                return false;
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            TDialog.this.h.onError(new UiError(i, str, str2));
            if (!(TDialog.this.e == null || TDialog.this.e.get() == null)) {
                Toast.makeText((Context) TDialog.this.e.get(), "网络连接异常或系统错误", 0).show();
            }
            TDialog.this.dismiss();
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            f.a("openSDK_LOG.TDialog", "Webview loading URL: " + str);
            super.onPageStarted(webView, str, bitmap);
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            TDialog.this.k.setVisibility(0);
        }
    }

    /* compiled from: ProGuard */
    private class JsListener extends a.b {
        private JsListener() {
        }

        public void onAddShare(String str) {
            f.b("openSDK_LOG.TDialog", "JsListener onAddShare");
            onComplete(str);
        }

        public void onInvite(String str) {
            onComplete(str);
        }

        public void onCancelAddShare(String str) {
            f.e("openSDK_LOG.TDialog", "JsListener onCancelAddShare" + str);
            onCancel("cancel");
        }

        public void onCancelLogin() {
            onCancel("");
        }

        public void onCancelInvite() {
            f.e("openSDK_LOG.TDialog", "JsListener onCancelInvite");
            onCancel("");
        }

        public void onComplete(String str) {
            TDialog.this.l.obtainMessage(1, str).sendToTarget();
            f.e("openSDK_LOG.TDialog", "JsListener onComplete" + str);
            TDialog.this.dismiss();
        }

        public void onCancel(String str) {
            f.e("openSDK_LOG.TDialog", "JsListener onCancel --msg = " + str);
            TDialog.this.l.obtainMessage(2, str).sendToTarget();
            TDialog.this.dismiss();
        }

        public void showMsg(String str) {
            TDialog.this.l.obtainMessage(3, str).sendToTarget();
        }

        public void onLoad(String str) {
            TDialog.this.l.obtainMessage(4, str).sendToTarget();
        }
    }

    /* compiled from: ProGuard */
    private static class OnTimeListener implements IUiListener {
        String a;
        String b;
        private WeakReference<Context> c;
        private String d;
        private IUiListener e;

        public OnTimeListener(Context context, String str, String str2, String str3, IUiListener iUiListener) {
            this.c = new WeakReference<>(context);
            this.d = str;
            this.a = str2;
            this.b = str3;
            this.e = iUiListener;
        }

        /* access modifiers changed from: private */
        public void a(String str) {
            try {
                onComplete(i.d(str));
            } catch (JSONException e2) {
                ThrowableExtension.printStackTrace(e2);
                onError(new UiError(-4, Constants.MSG_JSON_ERROR, str));
            }
        }

        public void onComplete(Object obj) {
            JSONObject jSONObject = (JSONObject) obj;
            g.a().a(this.d + "_H5", SystemClock.elapsedRealtime(), 0, 0, jSONObject.optInt("ret", -6), this.a, false);
            if (this.e != null) {
                this.e.onComplete(jSONObject);
                this.e = null;
            }
        }

        public void onError(UiError uiError) {
            g.a().a(this.d + "_H5", SystemClock.elapsedRealtime(), 0, 0, uiError.errorCode, uiError.errorMessage != null ? uiError.errorMessage + this.a : this.a, false);
            if (this.e != null) {
                this.e.onError(uiError);
                this.e = null;
            }
        }

        public void onCancel() {
            if (this.e != null) {
                this.e.onCancel();
                this.e = null;
            }
        }
    }

    /* compiled from: ProGuard */
    private class THandler extends Handler {
        private OnTimeListener b;

        public THandler(OnTimeListener onTimeListener, Looper looper) {
            super(looper);
            this.b = onTimeListener;
        }

        public void handleMessage(Message message) {
            f.b("openSDK_LOG.TDialog", "--handleMessage--msg.WHAT = " + message.what);
            switch (message.what) {
                case 1:
                    this.b.a((String) message.obj);
                    return;
                case 2:
                    this.b.onCancel();
                    return;
                case 3:
                    if (TDialog.this.e != null && TDialog.this.e.get() != null) {
                        TDialog.c((Context) TDialog.this.e.get(), (String) message.obj);
                        return;
                    }
                    return;
                case 5:
                    if (TDialog.this.e != null && TDialog.this.e.get() != null) {
                        TDialog.d((Context) TDialog.this.e.get(), (String) message.obj);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public TDialog(Context context, String str, String str2, IUiListener iUiListener, QQToken qQToken) {
        super(context, 16973840);
        this.e = new WeakReference<>(context);
        this.g = str2;
        this.h = new OnTimeListener(context, str, str2, qQToken.getAppId(), iUiListener);
        this.l = new THandler(this.h, context.getMainLooper());
        this.i = iUiListener;
        this.n = qQToken;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        a();
        b();
    }

    public void onBackPressed() {
        if (this.h != null) {
            this.h.onCancel();
        }
        super.onBackPressed();
    }

    private void a() {
        new TextView((Context) this.e.get()).setText("test");
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        this.k = new b((Context) this.e.get());
        this.k.setLayoutParams(layoutParams);
        this.j = new FrameLayout((Context) this.e.get());
        layoutParams.gravity = 17;
        this.j.setLayoutParams(layoutParams);
        this.j.addView(this.k);
        setContentView(this.j);
    }

    /* access modifiers changed from: protected */
    public void a(String str) {
        f.b("openSDK_LOG.TDialog", "--onConsoleMessage--");
        try {
            this.a.a((WebView) this.k, str);
        } catch (Exception e2) {
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void b() {
        this.k.setVerticalScrollBarEnabled(false);
        this.k.setHorizontalScrollBarEnabled(false);
        this.k.setWebViewClient(new FbWebViewClient());
        this.k.setWebChromeClient(this.b);
        this.k.clearFormData();
        WebSettings settings = this.k.getSettings();
        if (settings != null) {
            settings.setSavePassword(false);
            settings.setSaveFormData(false);
            settings.setCacheMode(-1);
            settings.setNeedInitialFocus(false);
            settings.setBuiltInZoomControls(true);
            settings.setSupportZoom(true);
            settings.setRenderPriority(RenderPriority.HIGH);
            settings.setJavaScriptEnabled(true);
            if (!(this.e == null || this.e.get() == null)) {
                settings.setDatabaseEnabled(true);
                settings.setDatabasePath(((Context) this.e.get()).getApplicationContext().getDir("databases", 0).getPath());
            }
            settings.setDomStorageEnabled(true);
            this.a.a((a.b) new JsListener(), "sdk_js_if");
            this.k.loadUrl(this.g);
            this.k.setLayoutParams(c);
            this.k.setVisibility(4);
            this.k.getSettings().setSavePassword(false);
        }
    }

    /* access modifiers changed from: private */
    public static void c(Context context, String str) {
        try {
            JSONObject d2 = i.d(str);
            int i2 = d2.getInt("type");
            String string = d2.getString("msg");
            if (i2 == 0) {
                if (d == null) {
                    d = Toast.makeText(context, string, 0);
                } else {
                    d.setView(d.getView());
                    d.setText(string);
                    d.setDuration(0);
                }
                d.show();
            } else if (i2 == 1) {
                if (d == null) {
                    d = Toast.makeText(context, string, 1);
                } else {
                    d.setView(d.getView());
                    d.setText(string);
                    d.setDuration(1);
                }
                d.show();
            }
        } catch (JSONException e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }

    /* access modifiers changed from: private */
    public static void d(Context context, String str) {
        if (context != null && str != null) {
            try {
                JSONObject d2 = i.d(str);
                int i2 = d2.getInt(AuthActivity.ACTION_KEY);
                String string = d2.getString("msg");
                if (i2 == 1) {
                    if (f == null || f.get() == null) {
                        ProgressDialog progressDialog = new ProgressDialog(context);
                        progressDialog.setMessage(string);
                        f = new WeakReference<>(progressDialog);
                        progressDialog.show();
                        return;
                    }
                    ((ProgressDialog) f.get()).setMessage(string);
                    if (!((ProgressDialog) f.get()).isShowing()) {
                        ((ProgressDialog) f.get()).show();
                    }
                } else if (i2 == 0 && f != null && f.get() != null && ((ProgressDialog) f.get()).isShowing()) {
                    ((ProgressDialog) f.get()).dismiss();
                    f = null;
                }
            } catch (JSONException e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }
}
