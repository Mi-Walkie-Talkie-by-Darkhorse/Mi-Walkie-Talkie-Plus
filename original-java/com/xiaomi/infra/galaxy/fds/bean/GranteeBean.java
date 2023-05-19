package com.xiaomi.infra.galaxy.fds.bean;

/* loaded from: classes2.dex */
public class GranteeBean {
    private String displayName;

    /* renamed from: id */
    private String f20846id;

    public GranteeBean() {
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getId() {
        return this.f20846id;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public void setId(String str) {
        this.f20846id = str;
    }

    public GranteeBean(String str) {
        this.f20846id = str;
    }

    public GranteeBean(String str, String str2) {
        this.f20846id = str;
        this.displayName = str2;
    }
}
