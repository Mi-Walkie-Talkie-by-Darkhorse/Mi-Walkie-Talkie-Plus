package com.ifengyu.intercom.lite.http.entity;

/* loaded from: classes2.dex */
public class WrapFirmwareInfo {
    private FirmwareInfo lite;
    private FirmwareInfo seal;
    private FirmwareInfo shark;

    public FirmwareInfo getLite() {
        return this.lite;
    }

    public FirmwareInfo getSeal() {
        return this.seal;
    }

    public FirmwareInfo getShark() {
        return this.shark;
    }

    public void setLite(FirmwareInfo firmwareInfo) {
        this.lite = firmwareInfo;
    }

    public void setSeal(FirmwareInfo firmwareInfo) {
        this.seal = firmwareInfo;
    }

    public void setShark(FirmwareInfo firmwareInfo) {
        this.shark = firmwareInfo;
    }

    public String toString() {
        return "WrapFirmwareInfo{lite=" + this.lite + ", shark=" + this.shark + ", seal=" + this.seal + '}';
    }
}
