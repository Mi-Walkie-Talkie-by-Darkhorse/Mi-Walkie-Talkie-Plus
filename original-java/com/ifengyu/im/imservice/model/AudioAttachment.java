package com.ifengyu.im.imservice.model;

import com.xiaomi.mipush.sdk.Constants;

public class AudioAttachment implements MsgAttachment {
    private String TAG = "AudioAttachment";
    public byte[] content;
    public long mDuration;
    public String mUrl;

    public void setDuration(long j) {
        this.mDuration = j;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void setContent(byte[] bArr) {
        this.content = bArr;
    }

    public byte[] getContent() {
        return this.content;
    }

    public String codeAttachment() {
        return "2," + getUrl() + Constants.ACCEPT_TIME_SEPARATOR_SP + getDuration();
    }

    public MsgAttachment buildAttachment(String... strArr) {
        if (strArr.length == 2) {
            setUrl(strArr[0]);
            setDuration(Long.parseLong(strArr[1]));
        }
        return this;
    }
}
