package com.xiaomi.infra.galaxy.fds;

/* loaded from: classes2.dex */
public enum SubResource {
    ACL("acl"),
    QUOTA("quota"),
    UPLOADS("uploads"),
    PART_NUMBER("partNumber"),
    UPLOAD_ID("uploadId"),
    STORAGE_ACCESS_TOKEN("storageAccessToken"),
    METADATA("metadata");
    
    private final String name;

    SubResource(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }
}
