package com.xiaomi.infra.galaxy.fds.android.model;

/* loaded from: classes2.dex */
public class InitMultipartUploadResult {
    private String bucketName;
    private String objectName;
    private String uploadId;

    public String getBucketName() {
        return this.bucketName;
    }

    public String getObjectName() {
        return this.objectName;
    }

    public String getUploadId() {
        return this.uploadId;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setObjectName(String str) {
        this.objectName = str;
    }

    public void setUploadId(String str) {
        this.uploadId = str;
    }
}
