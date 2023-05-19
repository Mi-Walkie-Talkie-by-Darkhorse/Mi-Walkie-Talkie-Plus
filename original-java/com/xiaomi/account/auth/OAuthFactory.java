package com.xiaomi.account.auth;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public class OAuthFactory {
    private static void checkOauthParams(OAuthConfig oAuthConfig) {
        if (oAuthConfig.context != null) {
            if (!TextUtils.isEmpty(oAuthConfig.appId)) {
                if (TextUtils.isEmpty(oAuthConfig.redirectUrl)) {
                    throw new IllegalArgumentException("redirect url is empty!!!");
                }
                return;
            }
            throw new IllegalArgumentException("client id is error!!!");
        }
        throw new IllegalArgumentException("not set Context or Activity!!!");
    }

    public static XiaomiOAuth createOAuth(OAuthConfig oAuthConfig) {
        checkOauthParams(oAuthConfig);
        if (oAuthConfig.notUseMiui) {
            return new WebViewOauth(oAuthConfig.context, oAuthConfig.appId, oAuthConfig.redirectUrl);
        }
        return new MiuiOauth(oAuthConfig.context, oAuthConfig.appId, oAuthConfig.redirectUrl);
    }
}
