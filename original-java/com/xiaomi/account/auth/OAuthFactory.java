package com.xiaomi.account.auth;

import android.content.Context;
import android.text.TextUtils;

public class OAuthFactory {
    public static XiaomiOAuth createOAuth(Context context, OAuthConfig oAuthConfig) {
        Context applicationContext = context.getApplicationContext();
        checkOauthParams(oAuthConfig);
        if (oAuthConfig.platform == 1 || oAuthConfig.notUseMiui || !isMiui(applicationContext)) {
            return new WebViewOauth(applicationContext, oAuthConfig.appId, oAuthConfig.redirectUrl);
        }
        MiuiOauth miuiOauth = new MiuiOauth(applicationContext, oAuthConfig.appId, oAuthConfig.redirectUrl);
        miuiOauth.setAuthorizeActivityClazz(oAuthConfig.authorizeActivityClazz);
        return miuiOauth;
    }

    private static boolean isMiui(Context context) {
        return MiuiOauth.isSupportService(context);
    }

    private static void checkOauthParams(OAuthConfig oAuthConfig) {
        if (TextUtils.isEmpty(oAuthConfig.appId)) {
            throw new IllegalArgumentException("client id is error!!!");
        } else if (TextUtils.isEmpty(oAuthConfig.redirectUrl)) {
            throw new IllegalArgumentException("redirect url is empty!!!");
        }
    }
}
