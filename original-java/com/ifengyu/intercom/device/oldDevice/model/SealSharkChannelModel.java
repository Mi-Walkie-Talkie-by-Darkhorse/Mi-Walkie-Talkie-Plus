package com.ifengyu.intercom.device.oldDevice.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class SealSharkChannelModel implements Parcelable {
    public static final Parcelable.Creator<SealSharkChannelModel> CREATOR = new Parcelable.Creator<SealSharkChannelModel>() { // from class: com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SealSharkChannelModel createFromParcel(Parcel parcel) {
            return new SealSharkChannelModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SealSharkChannelModel[] newArray(int i) {
            return new SealSharkChannelModel[i];
        }
    };
    private int band;
    private boolean elim;
    private boolean isStChannel;
    private String name;

    /* renamed from: no */
    private int f13061no;
    private boolean polite;
    private int rxCss;
    private int rxFreq;

    /* renamed from: sq */
    private int f13062sq;
    private int txCss;
    private int txFreq;
    private int txPower;
    private int type;
    private int vox;

    public SealSharkChannelModel() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            if (this == obj) {
                return true;
            }
            SealSharkChannelModel sealSharkChannelModel = (SealSharkChannelModel) obj;
            return getType() == sealSharkChannelModel.getType() && getNo() == sealSharkChannelModel.getNo();
        }
        return false;
    }

    public int getBand() {
        return this.band;
    }

    public String getName() {
        return this.name;
    }

    public int getNo() {
        return this.f13061no;
    }

    public int getRxCss() {
        return this.rxCss;
    }

    public int getRxFreq() {
        return this.rxFreq;
    }

    public int getSq() {
        return this.f13062sq;
    }

    public int getTxCss() {
        return this.txCss;
    }

    public int getTxFreq() {
        return this.txFreq;
    }

    public int getTxPower() {
        return this.txPower;
    }

    public int getType() {
        return this.type;
    }

    public int getVox() {
        return this.vox;
    }

    public boolean isElim() {
        return this.elim;
    }

    public boolean isPolite() {
        return this.polite;
    }

    public boolean isStChannel() {
        return this.isStChannel;
    }

    public void setBand(int i) {
        this.band = i;
    }

    public void setElim(boolean z) {
        this.elim = z;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNo(int i) {
        this.f13061no = i;
    }

    public void setPolite(boolean z) {
        this.polite = z;
    }

    public void setRxCss(int i) {
        this.rxCss = i;
    }

    public void setRxFreq(int i) {
        this.rxFreq = i;
    }

    public void setSq(int i) {
        this.f13062sq = i;
    }

    public void setStChannel(boolean z) {
        this.isStChannel = z;
    }

    public void setTxCss(int i) {
        this.txCss = i;
    }

    public void setTxFreq(int i) {
        this.txFreq = i;
    }

    public void setTxPower(int i) {
        this.txPower = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setVox(int i) {
        this.vox = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f13061no);
        parcel.writeInt(this.type);
        parcel.writeInt(this.txPower);
        parcel.writeInt(this.rxFreq);
        parcel.writeInt(this.txFreq);
        parcel.writeString(this.name);
        parcel.writeInt(this.f13062sq);
        parcel.writeInt(this.vox);
        parcel.writeInt(this.rxCss);
        parcel.writeInt(this.txCss);
        parcel.writeByte(this.elim ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.band);
        parcel.writeByte(this.polite ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isStChannel ? (byte) 1 : (byte) 0);
    }

    protected SealSharkChannelModel(Parcel parcel) {
        this.f13061no = parcel.readInt();
        this.type = parcel.readInt();
        this.txPower = parcel.readInt();
        this.rxFreq = parcel.readInt();
        this.txFreq = parcel.readInt();
        this.name = parcel.readString();
        this.f13062sq = parcel.readInt();
        this.vox = parcel.readInt();
        this.rxCss = parcel.readInt();
        this.txCss = parcel.readInt();
        this.elim = parcel.readByte() != 0;
        this.band = parcel.readInt();
        this.polite = parcel.readByte() != 0;
        this.isStChannel = parcel.readByte() != 0;
    }
}
