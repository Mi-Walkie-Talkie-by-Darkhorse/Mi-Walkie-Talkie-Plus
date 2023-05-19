package com.xiaomi.infra.galaxy.fds.result;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
/* loaded from: classes2.dex */
public class StorageAccessTokenResult {
    private long expireTime;
    private String token;

    public StorageAccessTokenResult() {
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public String getToken() {
        return this.token;
    }

    public void setExpireTime(long j) {
        this.expireTime = j;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public StorageAccessTokenResult(String str, long j) {
        this.token = str;
        this.expireTime = j;
    }
}
