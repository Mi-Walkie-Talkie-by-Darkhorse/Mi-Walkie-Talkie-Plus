package com.xiaomi.infra.galaxy.fds.result;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
/* loaded from: classes2.dex */
public class ApplySecretResult {
    private String key;
    private String secret;

    public ApplySecretResult() {
    }

    public String getKey() {
        return this.key;
    }

    public String getSecret() {
        return this.secret;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setSecret(String str) {
        this.secret = str;
    }

    public ApplySecretResult(String str, String str2) {
        this.key = str;
        this.secret = str2;
    }
}
