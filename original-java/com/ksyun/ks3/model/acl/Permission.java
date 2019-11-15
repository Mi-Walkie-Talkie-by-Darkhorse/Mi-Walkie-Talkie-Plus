package com.ksyun.ks3.model.acl;

public enum Permission {
    FullControl("FULL_CONTROL", "x-kss-grant-full-control"),
    Read("READ", "x-kss-grant-read"),
    Write("WRITE", "x-kss-grant-write");
    
    private String d;
    private String e;

    private Permission(String str, String str2) {
        this.d = str;
        this.e = str2;
    }

    public String toString() {
        return this.d;
    }
}
