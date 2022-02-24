package com.xiaomi.infra.galaxy.fds.android.model;

/* loaded from: classes2.dex */
public class UploadPartResult {
    private String etag;
    private int partNumber;
    private long partSize;

    public UploadPartResult() {
    }

    public String getEtag() {
        return this.etag;
    }

    public int getPartNumber() {
        return this.partNumber;
    }

    public long getPartSize() {
        return this.partSize;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setPartNumber(int i) {
        this.partNumber = i;
    }

    public void setPartSize(long j) {
        this.partSize = j;
    }

    public UploadPartResult(int i, long j, String str) {
        this.partNumber = i;
        this.etag = str;
        this.partSize = j;
    }
}
