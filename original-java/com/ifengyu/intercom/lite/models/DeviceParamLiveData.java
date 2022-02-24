package com.ifengyu.intercom.lite.models;

import androidx.lifecycle.LiveData;
import com.ifengyu.intercom.protos.LiteProtos;

/* loaded from: classes2.dex */
public class DeviceParamLiveData extends LiveData<DeviceParamLiveData> {
    private int band;
    private boolean bootVoice;
    private int deviceId;
    private boolean keyVoice;
    private LiteProtos.LANGUAGE_TYPE langType;
    private String name;
    private boolean polite;
    private int sq;
    private int verHw;
    private int verSoft;
    private boolean vox;

    public int getBand() {
        return this.band;
    }

    public int getDeviceId() {
        return this.deviceId;
    }

    public LiteProtos.LANGUAGE_TYPE getLangType() {
        return this.langType;
    }

    public String getName() {
        return this.name;
    }

    public int getSq() {
        return this.sq;
    }

    public int getVerHw() {
        return this.verHw;
    }

    public int getVerSoft() {
        return this.verSoft;
    }

    public boolean isBootVoice() {
        return this.bootVoice;
    }

    public boolean isKeyVoice() {
        return this.keyVoice;
    }

    public boolean isPolite() {
        return this.polite;
    }

    public boolean isVox() {
        return this.vox;
    }

    public void setBand(int i) {
        this.band = i;
        postValue(this);
    }

    public void setBootVoice(boolean z) {
        this.bootVoice = z;
        postValue(this);
    }

    public void setDeviceId(int i) {
        this.deviceId = i;
        postValue(this);
    }

    public void setFrom(LiteProtos.DevInfo devInfo) {
        if (devInfo.hasSq()) {
            this.sq = devInfo.getSq();
        }
        boolean z = true;
        if (devInfo.hasVox()) {
            this.vox = devInfo.getVox() == LiteProtos.SWITCH.ON;
        }
        if (devInfo.hasBand()) {
            this.band = devInfo.getBand();
        }
        if (devInfo.hasPolite()) {
            this.polite = devInfo.getPolite() == LiteProtos.SWITCH.ON;
        }
        if (devInfo.hasLangType()) {
            this.langType = devInfo.getLangType();
        }
        if (devInfo.hasBootVoice()) {
            this.bootVoice = devInfo.getBootVoice() == LiteProtos.SWITCH.ON;
        }
        if (devInfo.hasKeyVoice()) {
            if (devInfo.getKeyVoice() != LiteProtos.SWITCH.ON) {
                z = false;
            }
            this.keyVoice = z;
        }
        if (devInfo.hasName()) {
            this.name = devInfo.getName().toStringUtf8();
        }
        if (devInfo.hasVerHw()) {
            this.verHw = devInfo.getVerHw();
        }
        if (devInfo.hasVerSoft()) {
            this.verSoft = devInfo.getVerSoft();
        }
        if (devInfo.hasDeviceId()) {
            this.deviceId = devInfo.getDeviceId();
        }
        postValue(this);
    }

    public void setKeyVoice(boolean z) {
        this.keyVoice = z;
        postValue(this);
    }

    public void setLangType(LiteProtos.LANGUAGE_TYPE language_type) {
        this.langType = language_type;
        postValue(this);
    }

    public void setName(String str) {
        this.name = str;
        postValue(this);
    }

    public void setPolite(boolean z) {
        this.polite = z;
        postValue(this);
    }

    public void setSq(int i) {
        this.sq = i;
        postValue(this);
    }

    public void setVerHw(int i) {
        this.verHw = i;
        postValue(this);
    }

    public void setVerSoft(int i) {
        this.verSoft = i;
        postValue(this);
    }

    public void setVox(boolean z) {
        this.vox = z;
        postValue(this);
    }

    public String toString() {
        return "DeviceParamLiveData{sq=" + this.sq + ", vox=" + this.vox + ", band=" + this.band + ", polite=" + this.polite + ", langType=" + this.langType + ", bootVoice=" + this.bootVoice + ", keyVoice=" + this.keyVoice + ", name='" + this.name + "', verHw=" + this.verHw + ", verSoft=" + this.verSoft + ", deviceId=" + this.deviceId + '}';
    }
}
