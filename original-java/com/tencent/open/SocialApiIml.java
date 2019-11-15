package com.tencent.open;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.auth.c;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.Constants;
import com.tencent.connect.common.UIListenerManager;
import com.tencent.open.a.f;
import com.tencent.open.c.b;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.d;
import com.tencent.open.utils.e;
import com.tencent.open.utils.g;
import com.tencent.open.utils.i;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class SocialApiIml extends BaseApi {
    /* access modifiers changed from: private */
    public Activity c;

    /* compiled from: ProGuard */
    private class a implements IUiListener {
        private IUiListener b;
        private String c;
        private String d;
        private Bundle e;
        private Activity f;

        a(Activity activity, IUiListener iUiListener, String str, String str2, Bundle bundle) {
            this.b = iUiListener;
            this.c = str;
            this.d = str2;
            this.e = bundle;
        }

        public void onComplete(Object obj) {
            String str;
            String str2 = null;
            try {
                str = ((JSONObject) obj).getString(SocialConstants.PARAM_ENCRY_EOKEN);
            } catch (JSONException e2) {
                ThrowableExtension.printStackTrace(e2);
                f.b("openSDK_LOG.SocialApiIml", "OpenApi, EncrytokenListener() onComplete error", e2);
                str = str2;
            }
            this.e.putString("encrytoken", str);
            SocialApiIml.this.a((Context) SocialApiIml.this.c, this.c, this.e, this.d, this.b);
            if (TextUtils.isEmpty(str)) {
                f.b("openSDK_LOG.SocialApiIml", "The token get from qq or qzone is empty. Write temp token to localstorage.");
                SocialApiIml.this.writeEncryToken(this.f);
            }
        }

        public void onError(UiError uiError) {
            f.b("openSDK_LOG.SocialApiIml", "OpenApi, EncryptTokenListener() onError" + uiError.errorMessage);
            this.b.onError(uiError);
        }

        public void onCancel() {
            this.b.onCancel();
        }
    }

    public SocialApiIml(QQToken qQToken) {
        super(qQToken);
    }

    public SocialApiIml(c cVar, QQToken qQToken) {
        super(cVar, qQToken);
    }

    public void gift(Activity activity, Bundle bundle, IUiListener iUiListener) {
        a(activity, SocialConstants.ACTION_GIFT, bundle, iUiListener);
    }

    public void ask(Activity activity, Bundle bundle, IUiListener iUiListener) {
        a(activity, SocialConstants.ACTION_ASK, bundle, iUiListener);
    }

    private void a(Activity activity, String str, Bundle bundle, IUiListener iUiListener) {
        this.c = activity;
        Intent c2 = c(SocialConstants.ACTIVITY_FRIEND_CHOOSER);
        if (c2 == null) {
            f.c("openSDK_LOG.SocialApiIml", "--askgift--friend chooser not found");
            c2 = c(SocialConstants.ACTIVITY_ASK_GIFT);
        }
        bundle.putAll(b());
        if (SocialConstants.ACTION_ASK.equals(str)) {
            bundle.putString("type", SocialConstants.TYPE_REQUEST);
        } else if (SocialConstants.ACTION_GIFT.equals(str)) {
            bundle.putString("type", SocialConstants.TYPE_FREEGIFT);
        }
        a(activity, c2, str, bundle, com.tencent.open.utils.f.a().a(d.a(), "http://qzs.qq.com/open/mobile/request/sdk_request.html?"), iUiListener, false);
    }

    public void invite(Activity activity, Bundle bundle, IUiListener iUiListener) {
        this.c = activity;
        Intent c2 = c(SocialConstants.ACTIVITY_FRIEND_CHOOSER);
        if (c2 == null) {
            f.c("openSDK_LOG.SocialApiIml", "--invite--friend chooser not found");
            c2 = c(SocialConstants.ACTIVITY_INVITE);
        }
        bundle.putAll(b());
        Activity activity2 = activity;
        a(activity2, c2, SocialConstants.ACTION_INVITE, bundle, com.tencent.open.utils.f.a().a(d.a(), "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"), iUiListener, false);
    }

    public void story(Activity activity, Bundle bundle, IUiListener iUiListener) {
        this.c = activity;
        Intent c2 = c(SocialConstants.ACTIVITY_STORY);
        bundle.putAll(b());
        Activity activity2 = activity;
        a(activity2, c2, SocialConstants.ACTION_STORY, bundle, com.tencent.open.utils.f.a().a(d.a(), "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"), iUiListener, false);
    }

    private void a(Activity activity, Intent intent, String str, Bundle bundle, String str2, IUiListener iUiListener, boolean z) {
        boolean z2 = false;
        f.c("openSDK_LOG.SocialApiIml", "-->handleIntent action = " + str + ", activityIntent = null ? " + (intent == null));
        if (intent != null) {
            a(activity, intent, str, bundle, iUiListener);
            return;
        }
        e a2 = e.a(d.a(), this.b.getAppId());
        if (z || a2.b("C_LoginH5")) {
            z2 = true;
        }
        if (z2) {
            a(activity, str, bundle, str2, iUiListener);
        } else {
            a(activity, bundle, iUiListener);
        }
    }

    private void a(Activity activity, Intent intent, String str, Bundle bundle, IUiListener iUiListener) {
        f.c("openSDK_LOG.SocialApiIml", "-->handleIntentWithAgent action = " + str);
        intent.putExtra(Constants.KEY_ACTION, str);
        intent.putExtra(Constants.KEY_PARAMS, bundle);
        UIListenerManager.getInstance().setListenerWithRequestcode(Constants.REQUEST_SOCIAL_API, iUiListener);
        a(activity, intent, (int) Constants.REQUEST_SOCIAL_API);
    }

    private void a(Activity activity, String str, Bundle bundle, String str2, IUiListener iUiListener) {
        f.c("openSDK_LOG.SocialApiIml", "-->handleIntentWithH5 action = " + str);
        Intent b = b("com.tencent.open.agent.AgentActivity");
        a aVar = new a(activity, iUiListener, str, str2, bundle);
        Intent b2 = b("com.tencent.open.agent.EncryTokenActivity");
        if (b2 == null || b == null || b.getComponent() == null || b2.getComponent() == null || !b.getComponent().getPackageName().equals(b2.getComponent().getPackageName())) {
            f.c("openSDK_LOG.SocialApiIml", "-->handleIntentWithH5--token activity not found");
            String f = i.f("tencent&sdk&qazxc***14969%%" + this.b.getAccessToken() + this.b.getAppId() + this.b.getOpenId() + "qzone3.4");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(SocialConstants.PARAM_ENCRY_EOKEN, f);
            } catch (JSONException e) {
                ThrowableExtension.printStackTrace(e);
            }
            aVar.onComplete(jSONObject);
            return;
        }
        b2.putExtra("oauth_consumer_key", this.b.getAppId());
        b2.putExtra("openid", this.b.getOpenId());
        b2.putExtra("access_token", this.b.getAccessToken());
        b2.putExtra(Constants.KEY_ACTION, SocialConstants.ACTION_CHECK_TOKEN);
        if (a(b2)) {
            f.c("openSDK_LOG.SocialApiIml", "-->handleIntentWithH5--found token activity");
            UIListenerManager.getInstance().setListenerWithRequestcode(Constants.REQUEST_SOCIAL_H5, aVar);
            a(activity, b2, (int) Constants.REQUEST_SOCIAL_H5);
        }
    }

    /* access modifiers changed from: private */
    public void a(Context context, String str, Bundle bundle, String str2, IUiListener iUiListener) {
        f.a("openSDK_LOG.SocialApiIml", "OpenUi, showDialog --start");
        CookieSyncManager.createInstance(context);
        bundle.putString("oauth_consumer_key", this.b.getAppId());
        if (this.b.isSessionValid()) {
            bundle.putString("access_token", this.b.getAccessToken());
        }
        String openId = this.b.getOpenId();
        if (openId != null) {
            bundle.putString("openid", openId);
        }
        try {
            bundle.putString(Constants.PARAM_PLATFORM_ID, d.a().getSharedPreferences(Constants.PREFERENCE_PF, 0).getString(Constants.PARAM_PLATFORM_ID, Constants.DEFAULT_PF));
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            bundle.putString(Constants.PARAM_PLATFORM_ID, Constants.DEFAULT_PF);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(HttpUtils.encodeUrl(bundle));
        String sb2 = sb.toString();
        f.b("openSDK_LOG.SocialApiIml", "OpenUi, showDialog TDialog");
        if (SocialConstants.ACTION_CHALLENGE.equals(str) || SocialConstants.ACTION_BRAG.equals(str)) {
            f.b("openSDK_LOG.SocialApiIml", "OpenUi, showDialog PKDialog");
            new c(this.c, str, sb2, iUiListener, this.b).show();
            return;
        }
        new TDialog(this.c, str, sb2, iUiListener, this.b).show();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void writeEncryToken(Context context) {
        String str;
        String str2 = "tencent&sdk&qazxc***14969%%";
        String accessToken = this.b.getAccessToken();
        String appId = this.b.getAppId();
        String openId = this.b.getOpenId();
        String str3 = "qzone3.4";
        if (accessToken == null || accessToken.length() <= 0 || appId == null || appId.length() <= 0 || openId == null || openId.length() <= 0) {
            str = null;
        } else {
            str = i.f(str2 + accessToken + appId + openId + str3);
        }
        b bVar = new b(context);
        WebSettings settings = bVar.getSettings();
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setDatabaseEnabled(true);
        String str4 = "<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = 'qq.com';localStorage[\"" + this.b.getOpenId() + "_" + this.b.getAppId() + "\"]=\"" + str + "\";</script></head><body></body></html>";
        String a2 = com.tencent.open.utils.f.a().a(context, "http://qzs.qq.com");
        bVar.loadDataWithBaseURL(a2, str4, "text/html", "utf-8", a2);
    }

    /* access modifiers changed from: protected */
    public Intent b(String str) {
        Intent intent = new Intent();
        intent.setClassName(Constants.PACKAGE_QZONE, str);
        Intent intent2 = new Intent();
        intent2.setClassName("com.tencent.mobileqq", str);
        Intent intent3 = new Intent();
        intent3.setClassName(Constants.PACKAGE_QQ_PAD, str);
        if (i.d(d.a()) && g.a(d.a(), intent3)) {
            return intent3;
        }
        if (g.a(d.a(), intent2) && g.c(d.a(), "4.7") >= 0) {
            return intent2;
        }
        if (!g.a(d.a(), intent) || g.a(g.a(d.a(), Constants.PACKAGE_QZONE), "4.2") < 0) {
            return null;
        }
        if (!g.a(d.a(), intent.getComponent().getPackageName(), Constants.SIGNATRUE_QZONE)) {
            return null;
        }
        return intent;
    }
}
