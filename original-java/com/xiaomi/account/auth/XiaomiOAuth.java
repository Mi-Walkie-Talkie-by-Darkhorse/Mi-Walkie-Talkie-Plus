package com.xiaomi.account.auth;

import android.app.Activity;
import com.xiaomi.account.openauth.XiaomiOAuthResults;

/* loaded from: classes2.dex */
public interface XiaomiOAuth {
    XiaomiOAuthResults startOAuth(Activity activity, OAuthConfig oAuthConfig) throws Exception;
}
