package com.ifengyu.intercom.device.mi3.models;

import androidx.lifecycle.LiveData;
import com.ifengyu.intercom.p214p.ProtobufUtil;
import com.ifengyu.intercom.protos.BleProtos;

/* loaded from: classes2.dex */
public class Mi3DeviceParamLiveData extends LiveData<Mi3DeviceParamLiveData> {
    private BleProtos.BandType band;
    private boolean bootVoice;
    private boolean callVoice;
    private int curChIndex;
    private BleProtos.ColorType deviceColor;
    private int deviceId;
    private BleProtos.DeviceMode deviceMode;
    private boolean keyVoice;
    private BleProtos.LanguageType langType;
    private String name;
    private boolean polite;
    private boolean shareLoc;

    /* renamed from: sq */
    private BleProtos.SqType f12424sq;
    private int verHw;
    private int verSoft;
    private BleProtos.VoxType vox;

    public BleProtos.BandType getBand() {
        return this.band;
    }

    public int getCurChIndex() {
        return this.curChIndex;
    }

    public BleProtos.ColorType getDeviceColor() {
        return this.deviceColor;
    }

    public int getDeviceId() {
        return this.deviceId;
    }

    public BleProtos.DeviceMode getDeviceMode() {
        return this.deviceMode;
    }

    public BleProtos.LanguageType getLangType() {
        return this.langType;
    }

    public String getName() {
        return this.name;
    }

    public BleProtos.SqType getSq() {
        return this.f12424sq;
    }

    public int getVerHw() {
        return this.verHw;
    }

    public int getVerSoft() {
        return this.verSoft;
    }

    public BleProtos.VoxType getVox() {
        return this.vox;
    }

    public boolean isBootVoice() {
        return this.bootVoice;
    }

    public boolean isCallVoice() {
        return this.callVoice;
    }

    public boolean isKeyVoice() {
        return this.keyVoice;
    }

    public boolean isPolite() {
        return this.polite;
    }

    public boolean isShareLoc() {
        return this.shareLoc;
    }

    public void setBand(BleProtos.BandType bandType) {
        this.band = bandType;
        postValue(this);
    }

    public void setBootVoice(boolean z) {
        this.bootVoice = z;
        postValue(this);
    }

    public void setCallVoice(boolean z) {
        this.callVoice = z;
    }

    public void setCurChIndex(int i) {
        this.curChIndex = i;
    }

    public void setDeviceMode(BleProtos.DeviceMode deviceMode) {
        this.deviceMode = deviceMode;
    }

    public void setFrom(BleProtos.DeviceInfo deviceInfo) {
        if (deviceInfo.hasTalkInfo()) {
            BleProtos.DeviceTalkInfo talkInfo = deviceInfo.getTalkInfo();
            if (talkInfo.hasSq()) {
                this.f12424sq = talkInfo.getSq();
            }
            if (talkInfo.hasVox()) {
                this.vox = talkInfo.getVox();
            }
            if (talkInfo.hasBand()) {
                this.band = talkInfo.getBand();
            }
            if (talkInfo.hasPolite()) {
                this.polite = talkInfo.getPolite() == BleProtos.Switch.ON;
            }
            if (talkInfo.hasCurChSeq()) {
                this.curChIndex = talkInfo.getCurChSeq();
            }
        }
        if (deviceInfo.hasConfigInfo()) {
            BleProtos.DeviceConfig configInfo = deviceInfo.getConfigInfo();
            if (configInfo.hasLangType()) {
                this.langType = configInfo.getLangType();
            }
            if (configInfo.hasPowerVoice()) {
                this.bootVoice = configInfo.getPowerVoice() == BleProtos.Switch.ON;
            }
            if (configInfo.hasKeyVoice()) {
                this.keyVoice = configInfo.getKeyVoice() == BleProtos.Switch.ON;
            }
            if (configInfo.hasName()) {
                this.name = ProtobufUtil.m11169a(configInfo.getName());
            }
            if (configInfo.hasShareLoc()) {
                this.shareLoc = configInfo.getShareLoc() == BleProtos.Switch.ON;
            }
            if (configInfo.hasCallVoice()) {
                this.callVoice = configInfo.getCallVoice() == BleProtos.Switch.ON;
            }
        }
        if (deviceInfo.hasVerHw()) {
            this.verHw = deviceInfo.getVerHw();
        }
        if (deviceInfo.hasVerSoft()) {
            this.verSoft = deviceInfo.getVerSoft();
        }
        if (deviceInfo.hasDeviceId()) {
            this.deviceId = deviceInfo.getDeviceId();
        }
        if (deviceInfo.hasColor()) {
            this.deviceColor = deviceInfo.getColor();
        }
        if (deviceInfo.hasDeviceMode()) {
            this.deviceMode = deviceInfo.getDeviceMode();
        }
        postValue(this);
    }

    public void setKeyVoice(boolean z) {
        this.keyVoice = z;
        postValue(this);
    }

    public void setLangType(BleProtos.LanguageType languageType) {
        this.langType = languageType;
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

    public void setShareLoc(boolean z) {
        this.shareLoc = z;
    }

    public void setSq(BleProtos.SqType sqType) {
        this.f12424sq = sqType;
        postValue(this);
    }

    public void setVox(BleProtos.VoxType voxType) {
        this.vox = voxType;
        postValue(this);
    }

    public String toString() {
        return "Mi3DeviceParamLiveData{sq=" + this.f12424sq + ", vox=" + this.vox + ", band=" + this.band + ", polite=" + this.polite + ", langType=" + this.langType + ", bootVoice=" + this.bootVoice + ", keyVoice=" + this.keyVoice + ", name='" + this.name + "', verHw=" + this.verHw + ", verSoft=" + this.verSoft + ", deviceId=" + this.deviceId + ", deviceColor=" + this.deviceColor + ", shareLoc=" + this.shareLoc + ", deviceMode=" + this.deviceMode + ", callVoice=" + this.callVoice + ", curChIndex=" + this.curChIndex + '}';
    }
}
