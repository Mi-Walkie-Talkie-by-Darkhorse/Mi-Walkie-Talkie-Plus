package com.xiaomi.infra.galaxy.fds.result;

/* loaded from: classes2.dex */
public class NotificationResult {
    private String bucketName;
    private long contentLength;
    private String method;
    private String objectName;
    private long updateTime;

    /* loaded from: classes2.dex */
    public enum NotificationMethod {
        PUT,
        POST,
        DELETE
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public long getContentLength() {
        return this.contentLength;
    }

    public String getMethod() {
        return this.method;
    }

    public String getObjectName() {
        return this.objectName;
    }

    public long getUpdateTime() {
        return this.updateTime;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setContentLength(long j) {
        this.contentLength = j;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public void setObjectName(String str) {
        this.objectName = str;
    }

    public void setUpdateTime(long j) {
        this.updateTime = j;
    }
}
