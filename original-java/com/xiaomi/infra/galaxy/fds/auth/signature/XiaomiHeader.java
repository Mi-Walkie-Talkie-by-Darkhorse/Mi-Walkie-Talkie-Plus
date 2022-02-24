package com.xiaomi.infra.galaxy.fds.auth.signature;

/* loaded from: classes2.dex */
public enum XiaomiHeader {
    DATE("x-xiaomi-date"),
    REQUEST_ID("x-xiaomi-request-id"),
    ACL("x-xiaomi-acl"),
    ACL_META("x-xiaomi-meta-acl"),
    CONTENT_LENGTH("x-xiaomi-meta-content-length"),
    MD5_ATTACHED_STREAM("x-xiaomi-meta-md5-attached-stream");
    
    private final String name;

    XiaomiHeader(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }
}
