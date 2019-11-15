package com.mi.milinkforgame.sdk.session;

import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.config.ConfigManager;
import com.mi.milinkforgame.sdk.session.util.StreamUtil;

public class Request {
    private long createdTime;
    private PacketData data;
    private byte encodeType = 0;
    private boolean isInternal = false;
    private boolean isPing = false;
    private ResponseListener listener;
    private int mHandleSessionNO = 0;
    private int retryCount = 0;
    private long sentTime = 0;
    private int size = 0;
    private int timeOut = ConfigManager.getInstance().getRequestTimeout();
    private int validTime = 0;

    public Request(PacketData packetData, ResponseListener responseListener, boolean z, boolean z2, byte b) {
        this.data = packetData;
        this.listener = responseListener;
        this.isPing = z;
        this.createdTime = System.currentTimeMillis();
        this.isInternal = z2;
        this.encodeType = b;
        this.validTime = packetData.getValidTime();
    }

    public boolean isInternalRequest() {
        return this.isInternal;
    }

    public void setSentTime(long j) {
        this.sentTime = j;
    }

    public long getCreatedTime() {
        return this.createdTime;
    }

    public long getSentTime() {
        return this.sentTime;
    }

    public int getValidTime() {
        return this.validTime;
    }

    public int getSeqNo() {
        return this.data.getSeqNo();
    }

    public PacketData getData() {
        return this.data;
    }

    public void setHandleSessionNO(int i) {
        this.mHandleSessionNO = i;
    }

    public byte[] toBytes() {
        byte[] upBytes = StreamUtil.toUpBytes(String.format("[No:%d]", new Object[]{Integer.valueOf(this.mHandleSessionNO)}), this.data, this.isPing, this.encodeType);
        if (upBytes != null) {
            this.size = upBytes.length;
        }
        return upBytes;
    }

    public boolean isPingRequest() {
        return this.isPing;
    }

    public int getSize() {
        return this.size;
    }

    public void setTimeOut(int i) {
        if (i > 0) {
            this.timeOut = i;
        }
    }

    public int getTimeOut() {
        return this.timeOut;
    }

    public boolean isTimeout() {
        return System.currentTimeMillis() - this.sentTime > ((long) this.timeOut);
    }

    public ResponseListener getListener() {
        return this.listener;
    }

    public boolean requestShouldCached() {
        return this.data.needCached();
    }

    public int getRetryCount() {
        return this.retryCount;
    }

    public void addRetryCount() {
        this.retryCount++;
    }

    public boolean onDataSendFailed(int i, String str) {
        if (this.listener == null) {
            return false;
        }
        this.listener.onDataSendFailed(i, str);
        return true;
    }

    public boolean isValidNow() {
        return System.currentTimeMillis() - this.createdTime < ((long) this.validTime);
    }
}
