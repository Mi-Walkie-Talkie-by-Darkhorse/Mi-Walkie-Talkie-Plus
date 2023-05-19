package com.xiaomi.infra.galaxy.fds.bean;

/* loaded from: classes2.dex */
public class OwnerBean {
    private String displayName;

    /* renamed from: id */
    private String f20847id;

    public OwnerBean() {
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getId() {
        return this.f20847id;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public void setId(String str) {
        this.f20847id = str;
    }

    public OwnerBean(String str) {
        this.f20847id = str;
    }

    public OwnerBean(String str, String str2) {
        this.f20847id = str;
        setDisplayName(str2);
    }
}
