package com.xiaomi.infra.galaxy.fds.auth.sso;

import com.xiaomi.account.openauth.AuthorizeActivityBase;

/* loaded from: classes2.dex */
public enum SSOParam {
    SERVICE_TOKEN(AuthorizeActivityBase.KEY_SERVICETOKEN),
    SID("sid"),
    APP_ID("appId");
    
    private final String name;

    SSOParam(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }
}
