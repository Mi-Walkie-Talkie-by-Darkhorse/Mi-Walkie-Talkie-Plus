package com.google.zxing.pdf417;

public final class PDF417ResultMetadata {
    private String fileId;
    private boolean lastSegment;
    private int[] optionalData;
    private int segmentIndex;

    public int getSegmentIndex() {
        return this.segmentIndex;
    }

    public void setSegmentIndex(int i) {
        this.segmentIndex = i;
    }

    public String getFileId() {
        return this.fileId;
    }

    public void setFileId(String str) {
        this.fileId = str;
    }

    public int[] getOptionalData() {
        return this.optionalData;
    }

    public void setOptionalData(int[] iArr) {
        this.optionalData = iArr;
    }

    public boolean isLastSegment() {
        return this.lastSegment;
    }

    public void setLastSegment(boolean z) {
        this.lastSegment = z;
    }
}
