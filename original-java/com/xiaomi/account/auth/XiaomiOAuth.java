package com.xiaomi.account.auth;

import android.app.Activity;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;

public interface XiaomiOAuth {
    XiaomiOAuthFuture<XiaomiOAuthResults> fastOAuth(Activity activity, OAuthConfig oAuthConfig);

    XiaomiOAuthFuture<XiaomiOAuthResults> getCodeOrAccessToken(Activity activity, OAuthConfig oAuthConfig);
}
