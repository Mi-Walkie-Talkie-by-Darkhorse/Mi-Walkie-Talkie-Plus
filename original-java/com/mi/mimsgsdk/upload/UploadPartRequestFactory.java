package com.mi.mimsgsdk.upload;

import com.ksyun.ks3.services.request.UploadPartRequest;
import java.io.File;
import java.io.Serializable;

public class UploadPartRequestFactory implements Serializable {
    private static final long serialVersionUID = 1;
    private String bucketName;
    private File file;
    private String key;
    private long offset = 0;
    public int partNumber = 1;
    private long partSize;
    private long remainingBytes;
    private String uploadId;
    private long uploadedSize;

    public UploadPartRequestFactory(String str, String str2, String str3, File file2, long j) {
        this.uploadId = str3;
        this.bucketName = str;
        this.key = str2;
        this.file = file2;
        this.remainingBytes = file2.length();
        this.partSize = j;
        this.partNumber = 1;
        this.uploadedSize = 0;
    }

    public void setHasUploadPart(int i) {
        this.partNumber = i + 1;
        this.uploadedSize = ((long) i) * this.partSize;
        this.remainingBytes = this.file.length() - this.uploadedSize;
        this.offset = this.uploadedSize;
    }

    public synchronized boolean hasMoreRequests() {
        return this.remainingBytes > 0;
    }

    public synchronized UploadPartRequest getNextUploadPartRequest() {
        UploadPartRequest uploadPartRequest;
        boolean z = this.remainingBytes - this.partSize <= 0;
        this.uploadedSize = this.file.length() - this.remainingBytes;
        String str = this.bucketName;
        String str2 = this.key;
        String str3 = this.uploadId;
        File file2 = this.file;
        long j = this.offset;
        int i = this.partNumber;
        this.partNumber = i + 1;
        uploadPartRequest = new UploadPartRequest(str, str2, str3, file2, j, i, this.partSize);
        this.offset += this.partSize;
        this.remainingBytes -= this.partSize;
        uploadPartRequest.a(z);
        return uploadPartRequest;
    }

    public synchronized long getUploadedSize() {
        return this.uploadedSize;
    }

    public synchronized File getFile() {
        return this.file;
    }

    public synchronized String getBucketName() {
        return this.bucketName;
    }

    public synchronized String getUploadId() {
        return this.uploadId;
    }

    public synchronized String getObjectKey() {
        return this.key;
    }
}
