package com.ifengyu.intercom.device.oldDevice.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class DolphinChannelModel implements Parcelable {
    public static final Parcelable.Creator<DolphinChannelModel> CREATOR = new Parcelable.Creator<DolphinChannelModel>() { // from class: com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DolphinChannelModel createFromParcel(Parcel parcel) {
            return new DolphinChannelModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DolphinChannelModel[] newArray(int i) {
            return new DolphinChannelModel[i];
        }
    };
    private int freq;
    private int freq2;
    private String name;

    /* renamed from: no */
    private int f13060no;
    private int tone;
    private int tone2;
    private int type;

    public DolphinChannelModel() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            DolphinChannelModel dolphinChannelModel = (DolphinChannelModel) obj;
            return getType() == dolphinChannelModel.getType() && getNo() == dolphinChannelModel.getNo();
        }
        return false;
    }

    public int getFreq() {
        return this.freq;
    }

    public int getFreq2() {
        return this.freq2;
    }

    public String getName() {
        return this.name;
    }

    public int getNo() {
        return this.f13060no;
    }

    public int getTone() {
        return this.tone;
    }

    public int getTone2() {
        return this.tone2;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        return ((527 + this.type) * 31) + this.f13060no;
    }

    public void setFreq(int i) {
        this.freq = i;
    }

    public void setFreq2(int i) {
        this.freq2 = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNo(int i) {
        this.f13060no = i;
    }

    public void setTone(int i) {
        this.tone = i;
    }

    public void setTone2(int i) {
        this.tone2 = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f13060no);
        parcel.writeInt(this.type);
        parcel.writeString(this.name);
        parcel.writeInt(this.freq);
        parcel.writeInt(this.tone);
        parcel.writeInt(this.freq2);
        parcel.writeInt(this.tone2);
    }

    public DolphinChannelModel(int i, int i2, String str, int i3) {
        this.f13060no = i;
        this.type = i2;
        this.name = str;
        this.freq = i3;
    }

    public DolphinChannelModel(int i, int i2, String str, int i3, int i4, int i5, int i6) {
        this.f13060no = i;
        this.type = i2;
        this.name = str;
        this.freq = i3;
        this.tone = i4;
        this.freq2 = i5;
        this.tone2 = i6;
    }

    protected DolphinChannelModel(Parcel parcel) {
        this.f13060no = parcel.readInt();
        this.type = parcel.readInt();
        this.name = parcel.readString();
        this.freq = parcel.readInt();
        this.tone = parcel.readInt();
        this.freq2 = parcel.readInt();
        this.tone2 = parcel.readInt();
    }
}
