package com.ifengyu.im.imservice.callback;

public abstract class Packetlistener implements IMListener {
    private long createTime;
    private long timeOut;

    public abstract void onFaild();

    public abstract void onSuccess(Object obj);

    public abstract void onTimeout();

    public Packetlistener(long j) {
        this.timeOut = j;
        this.createTime = System.currentTimeMillis();
    }

    public Packetlistener() {
        this.timeOut = 8000;
        this.createTime = System.currentTimeMillis();
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public long getTimeOut() {
        return this.timeOut;
    }

    public void setTimeOut(long j) {
        this.timeOut = j;
    }
}
