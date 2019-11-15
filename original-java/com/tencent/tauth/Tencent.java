package com.tencent.tauth;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.auth.c;
import com.tencent.connect.common.Constants;
import com.tencent.connect.common.UIListenerManager;
import com.tencent.connect.share.QQShare;
import com.tencent.connect.share.QzonePublish;
import com.tencent.connect.share.QzoneShare;
import com.tencent.open.SocialApi;
import com.tencent.open.a.f;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.HttpUtils.HttpStatusException;
import com.tencent.open.utils.HttpUtils.NetworkUnavailableException;
import com.tencent.open.utils.d;
import com.tencent.open.utils.e;
import com.tencent.open.utils.g;
import com.tencent.open.utils.i;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class Tencent {
    public static final int REQUEST_LOGIN = 10001;
    private static Tencent b;
    private final c a;

    private Tencent(String str, Context context) {
        this.a = c.a(str, context);
    }

    public static synchronized Tencent createInstance(String str, Context context) {
        Tencent tencent;
        synchronized (Tencent.class) {
            d.a(context.getApplicationContext());
            f.c("openSDK_LOG.Tencent", "createInstance()  -- start, appId = " + str);
            if (b == null) {
                b = new Tencent(str, context);
            } else if (!str.equals(b.getAppId())) {
                b.logout(context);
                b = new Tencent(str, context);
            }
            if (!a(context, str)) {
                tencent = null;
            } else {
                e.a(context, str);
                f.c("openSDK_LOG.Tencent", "createInstance()  -- end");
                tencent = b;
            }
        }
        return tencent;
    }

    private static boolean a(Context context, String str) {
        try {
            context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.tauth.AuthActivity"), 0);
            try {
                context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.connect.common.AssistActivity"), 0);
                return true;
            } catch (NameNotFoundException e) {
                f.e("openSDK_LOG.Tencent", "AndroidManifest.xml 没有检测到com.tencent.connect.common.AssistActivity\n" + ("没有在AndroidManifest.xml中检测到com.tencent.connect.common.AssistActivity,请加上com.tencent.connect.common.AssistActivity,详细信息请查看官网文档." + "\n配置示例如下: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"behind\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>"));
                return false;
            }
        } catch (NameNotFoundException e2) {
            f.e("openSDK_LOG.Tencent", "AndroidManifest.xml 没有检测到com.tencent.tauth.AuthActivity" + (("没有在AndroidManifest.xml中检测到com.tencent.tauth.AuthActivity,请加上com.tencent.tauth.AuthActivity,并配置<data android:scheme=\"tencent" + str + "\" />,详细信息请查看官网文档.") + "\n配置示例如下: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n    <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent" + str + "\" />\n" + "</intent-filter>\n" + "</activity>"));
            return false;
        }
    }

    public int login(Activity activity, String str, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "login() with activity, scope is " + str);
        return this.a.a(activity, str, iUiListener);
    }

    public int login(Fragment fragment, String str, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "login() with fragment, scope is " + str);
        return this.a.a(fragment, str, iUiListener, "");
    }

    public int loginServerSide(Activity activity, String str, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "loginServerSide() with activity, scope = " + str + ",server_side");
        return this.a.a(activity, str + ",server_side", iUiListener);
    }

    public int loginServerSide(Fragment fragment, String str, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "loginServerSide() with fragment, scope = " + str + ",server_side");
        return this.a.a(fragment, str + ",server_side", iUiListener, "");
    }

    public int loginWithOEM(Activity activity, String str, IUiListener iUiListener, String str2, String str3, String str4) {
        f.c("openSDK_LOG.Tencent", "loginWithOEM() with activity, scope = " + str);
        return this.a.a(activity, str, iUiListener, str2, str3, str4);
    }

    public void logout(Context context) {
        f.c("openSDK_LOG.Tencent", "logout()");
        this.a.b().setAccessToken(null, "0");
        this.a.b().setOpenId(null);
    }

    public int reAuth(Activity activity, String str, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "reAuth() with activity, scope = " + str);
        return this.a.b(activity, str, iUiListener);
    }

    public void reportDAU() {
        this.a.a();
    }

    public void checkLogin(IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "checkLogin()");
        this.a.a(iUiListener);
    }

    public int invite(Activity activity, Bundle bundle, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "invite()");
        new SocialApi(this.a.b()).invite(activity, bundle, iUiListener);
        return 0;
    }

    public int story(Activity activity, Bundle bundle, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "story()");
        new SocialApi(this.a.b()).story(activity, bundle, iUiListener);
        return 0;
    }

    public int gift(Activity activity, Bundle bundle, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "gift()");
        new SocialApi(this.a.b()).gift(activity, bundle, iUiListener);
        return 0;
    }

    public int ask(Activity activity, Bundle bundle, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "ask()");
        new SocialApi(this.a.b()).ask(activity, bundle, iUiListener);
        return 0;
    }

    public void requestAsync(String str, Bundle bundle, String str2, IRequestListener iRequestListener, Object obj) {
        f.c("openSDK_LOG.Tencent", "requestAsync()");
        HttpUtils.requestAsync(this.a.b(), d.a(), str, bundle, str2, iRequestListener);
    }

    public JSONObject request(String str, Bundle bundle, String str2) throws IOException, JSONException, NetworkUnavailableException, HttpStatusException {
        f.c("openSDK_LOG.Tencent", "request()");
        return HttpUtils.request(this.a.b(), d.a(), str, bundle, str2);
    }

    public void shareToQQ(Activity activity, Bundle bundle, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "shareToQQ()");
        new QQShare(activity, this.a.b()).shareToQQ(activity, bundle, iUiListener);
    }

    public void shareToQzone(Activity activity, Bundle bundle, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "shareToQzone()");
        new QzoneShare(activity, this.a.b()).shareToQzone(activity, bundle, iUiListener);
    }

    public void publishToQzone(Activity activity, Bundle bundle, IUiListener iUiListener) {
        f.c("openSDK_LOG.Tencent", "publishToQzone()");
        new QzonePublish(activity, this.a.b()).publishToQzone(activity, bundle, iUiListener);
    }

    public void releaseResource() {
    }

    public boolean onActivityResult(int i, int i2, Intent intent) {
        f.c("openSDK_LOG.Tencent", "onActivityResult() deprecated, will do nothing");
        return false;
    }

    public static boolean onActivityResultData(int i, int i2, Intent intent, IUiListener iUiListener) {
        boolean z;
        boolean z2 = true;
        String str = "openSDK_LOG.Tencent";
        StringBuilder append = new StringBuilder().append("onActivityResultData() reqcode = ").append(i).append(", resultcode = ").append(i2).append(", data = null ? ");
        if (intent == null) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder append2 = append.append(z).append(", listener = null ? ");
        if (iUiListener != null) {
            z2 = false;
        }
        f.c(str, append2.append(z2).toString());
        return UIListenerManager.getInstance().onActivityResult(i, i2, intent, iUiListener);
    }

    public boolean isSessionValid() {
        return this.a.c();
    }

    public String getAppId() {
        return this.a.b().getAppId();
    }

    public String getAccessToken() {
        return this.a.b().getAccessToken();
    }

    public long getExpiresIn() {
        return this.a.b().getExpireTimeInSecond();
    }

    public String getOpenId() {
        return this.a.b().getOpenId();
    }

    @Deprecated
    public void handleLoginData(Intent intent, IUiListener iUiListener) {
        boolean z;
        boolean z2 = true;
        String str = "openSDK_LOG.Tencent";
        StringBuilder append = new StringBuilder().append("handleLoginData() data = null ? ");
        if (intent == null) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder append2 = append.append(z).append(", listener = null ? ");
        if (iUiListener != null) {
            z2 = false;
        }
        f.c(str, append2.append(z2).toString());
        UIListenerManager.getInstance().handleDataToListener(intent, iUiListener);
    }

    public static void handleResultData(Intent intent, IUiListener iUiListener) {
        boolean z;
        boolean z2 = true;
        String str = "openSDK_LOG.Tencent";
        StringBuilder append = new StringBuilder().append("handleResultData() data = null ? ");
        if (intent == null) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder append2 = append.append(z).append(", listener = null ? ");
        if (iUiListener != null) {
            z2 = false;
        }
        f.c(str, append2.append(z2).toString());
        UIListenerManager.getInstance().handleDataToListener(intent, iUiListener);
    }

    public void setAccessToken(String str, String str2) {
        f.a("openSDK_LOG.Tencent", "setAccessToken(), expiresIn = " + str2 + "");
        this.a.a(str, str2);
    }

    public void setOpenId(String str) {
        f.a("openSDK_LOG.Tencent", "setOpenId() --start");
        this.a.a(d.a(), str);
        f.a("openSDK_LOG.Tencent", "setOpenId() --end");
    }

    public boolean isReady() {
        return isSessionValid() && getOpenId() != null;
    }

    public QQToken getQQToken() {
        return this.a.b();
    }

    public boolean isSupportSSOLogin(Activity activity) {
        if ((!i.d((Context) activity) || g.a((Context) activity, Constants.PACKAGE_QQ_PAD) == null) && g.c(activity, "4.1") < 0 && g.d(activity, "1.1") < 0) {
            return false;
        }
        return true;
    }
}
