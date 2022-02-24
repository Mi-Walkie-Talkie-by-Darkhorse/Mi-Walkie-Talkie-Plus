package com.xiaomi.infra.galaxy.fds.bean;

/* loaded from: classes2.dex */
public class GranteeBean {
    private String displayName;
    private String id;

    public GranteeBean() {
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getId() {
        return this.id;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public GranteeBean(String str) {
        this.id = str;
    }

    public GranteeBean(String str, String str2) {
        this.id = str;
        this.displayName = str2;
    }
}
