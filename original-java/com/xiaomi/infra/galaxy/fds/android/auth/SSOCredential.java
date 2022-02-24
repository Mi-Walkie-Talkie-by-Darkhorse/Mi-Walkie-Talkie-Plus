package com.xiaomi.infra.galaxy.fds.android.auth;

import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.infra.galaxy.fds.android.util.Args;
import org.apache.http.client.methods.HttpRequestBase;

/* loaded from: classes2.dex */
public class SSOCredential implements GalaxyFDSCredential {
    private final String APP_ID;
    private final String HEADER_VALUE;
    private final String SERVICE_TOKEN_PARAM;
    private final String appId;
    private final String serviceToken;

    @Deprecated
    public SSOCredential(String str) {
        this.HEADER_VALUE = "SSO";
        this.SERVICE_TOKEN_PARAM = AuthorizeActivityBase.KEY_SERVICETOKEN;
        this.APP_ID = "APP_ID";
        Args.notNull(str, "Service token");
        Args.notEmpty(str, "Service token");
        this.serviceToken = str;
        this.appId = null;
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.auth.GalaxyFDSCredential
    public void addHeader(HttpRequestBase httpRequestBase) {
        httpRequestBase.addHeader("Authorization", "SSO");
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.auth.GalaxyFDSCredential
    public String addParam(String str) {
        StringBuilder sb = new StringBuilder(str);
        if (str.indexOf(63) == -1) {
            sb.append('?');
        } else {
            sb.append('&');
        }
        sb.append(AuthorizeActivityBase.KEY_SERVICETOKEN);
        sb.append('=');
        sb.append(this.serviceToken);
        if (this.appId != null) {
            sb.append('&');
            sb.append("APP_ID");
            sb.append('=');
            sb.append(this.appId);
        }
        return sb.toString();
    }

    public SSOCredential(String str, String str2) {
        this.HEADER_VALUE = "SSO";
        this.SERVICE_TOKEN_PARAM = AuthorizeActivityBase.KEY_SERVICETOKEN;
        this.APP_ID = "APP_ID";
        Args.notNull(str, "Service token");
        Args.notEmpty(str, "Service token");
        Args.notNull(str2, "App id");
        Args.notEmpty(str2, "App id");
        this.serviceToken = str;
        this.appId = str2;
    }
}
