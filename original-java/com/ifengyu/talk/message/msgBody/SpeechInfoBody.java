package com.ifengyu.talk.message.msgBody;

/* loaded from: classes2.dex */
public class SpeechInfoBody {
    private int duration;
    private long gid;
    private String internalUrl;
    private String name;
    private int payload;
    private long sid;
    private String speechUrl;
    private long startTime;
    private long stopTime;
    private long uid;

    public int getDuration() {
        return this.duration;
    }

    public long getGid() {
        return this.gid;
    }

    public String getInternalUrl() {
        return this.internalUrl;
    }

    public String getName() {
        return this.name;
    }

    public int getPayload() {
        return this.payload;
    }

    public long getSid() {
        return this.sid;
    }

    public String getSpeechUrl() {
        return this.speechUrl;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public long getStopTime() {
        return this.stopTime;
    }

    public long getUid() {
        return this.uid;
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public void setGid(long j) {
        this.gid = j;
    }

    public void setInternalUrl(String str) {
        this.internalUrl = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPayload(int i) {
        this.payload = i;
    }

    public void setSid(long j) {
        this.sid = j;
    }

    public void setSpeechUrl(String str) {
        this.speechUrl = str;
    }

    public void setStartTime(long j) {
        this.startTime = j;
    }

    public void setStopTime(long j) {
        this.stopTime = j;
    }

    public void setUid(long j) {
        this.uid = j;
    }
}
