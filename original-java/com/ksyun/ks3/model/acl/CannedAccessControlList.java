package com.ksyun.ks3.model.acl;

import com.mi.mimsgsdk.upload.Ks3FileUploader;

public enum CannedAccessControlList {
    Private("private"),
    PublicRead(Ks3FileUploader.AccessControl_PublicRead),
    PublicReadWrite(Ks3FileUploader.AccessControl_PublicReadWrite);
    
    private final String d;

    private CannedAccessControlList(String str) {
        this.d = str;
    }

    public String toString() {
        return this.d;
    }
}
