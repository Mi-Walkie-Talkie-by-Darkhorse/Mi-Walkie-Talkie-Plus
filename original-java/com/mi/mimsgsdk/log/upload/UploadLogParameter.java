package com.mi.mimsgsdk.log.upload;

import android.text.TextUtils;
import com.mi.mimsgsdk.proto.Utils.UploadLogPush;

public class UploadLogParameter {
    private String feedbackMessage = "byPush";
    private int limit;
    private long maxLength;
    private boolean stillUploadWithoutWifi = false;
    private String subPath;

    public static UploadLogParameter parseFrom(UploadLogPush uploadLogPush) {
        UploadLogParameter uploadLogParameter = new UploadLogParameter();
        if (uploadLogPush.hasStillUploadWithoutWifi()) {
            uploadLogParameter.setStillUploadWithoutWifi(uploadLogPush.getStillUploadWithoutWifi());
        }
        if (uploadLogPush.hasSbuPath()) {
            uploadLogParameter.setSubPath(uploadLogPush.getSbuPath());
        }
        if (uploadLogPush.hasMaxLength()) {
            uploadLogParameter.setMaxLength(uploadLogPush.getMaxLength());
        }
        if (uploadLogPush.hasMaxSubDirCount()) {
            uploadLogParameter.setLimit(uploadLogPush.getMaxSubDirCount());
        }
        return uploadLogParameter;
    }

    public void setStillUploadWithoutWifi(boolean z) {
        this.stillUploadWithoutWifi = z;
    }

    public void setSubPath(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        this.subPath = str;
    }

    public void setMaxLength(long j) {
        this.maxLength = j;
    }

    public void setLimit(int i) {
        if (i < 1) {
            i = 1;
        }
        this.limit = i;
    }

    public void setFeedbackMessage(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        this.feedbackMessage = str;
    }

    public boolean isStillUploadWithoutWifi() {
        return this.stillUploadWithoutWifi;
    }

    public String getSubPath() {
        return this.subPath;
    }

    public long getMaxLength() {
        return this.maxLength;
    }

    public int getLimit() {
        return this.limit;
    }

    public String getFeedbackMessage() {
        return this.feedbackMessage;
    }

    public String toString() {
        return "UploadLogParameter [stillUploadWithoutWifi=" + this.stillUploadWithoutWifi + ", subPath=" + this.subPath + ", maxLength=" + this.maxLength + ", limit=" + this.limit + ", feedbackMessageString=" + this.feedbackMessage + "]";
    }
}
