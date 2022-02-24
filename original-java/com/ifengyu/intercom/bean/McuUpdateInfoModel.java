package com.ifengyu.intercom.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class McuUpdateInfoModel implements Parcelable {
    public static final Parcelable.Creator<McuUpdateInfoModel> CREATOR = new Parcelable.Creator<McuUpdateInfoModel>() { // from class: com.ifengyu.intercom.bean.McuUpdateInfoModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public McuUpdateInfoModel createFromParcel(Parcel parcel) {
            return new McuUpdateInfoModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public McuUpdateInfoModel[] newArray(int i) {
            return new McuUpdateInfoModel[i];
        }
    };
    private String MD5;
    private String info;
    private String lang;
    private String source;
    private String versionCode;
    private String versionName;

    public McuUpdateInfoModel() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getInfo() {
        return this.info;
    }

    public String getLang() {
        return this.lang;
    }

    public String getMD5() {
        return this.MD5;
    }

    public String getSource() {
        return this.source;
    }

    public String getVersionCode() {
        return this.versionCode;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setLang(String str) {
        this.lang = str;
    }

    public void setMD5(String str) {
        this.MD5 = str;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setVersionCode(String str) {
        this.versionCode = str;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    public String toString() {
        return "McuUpdateInfoModel{versionCode='" + this.versionCode + "', versionName='" + this.versionName + "', info='" + this.info + "', source='" + this.source + "', lang='" + this.lang + "', MD5='" + this.MD5 + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.versionCode);
        parcel.writeString(this.versionName);
        parcel.writeString(this.info);
        parcel.writeString(this.source);
        parcel.writeString(this.lang);
        parcel.writeString(this.MD5);
    }

    protected McuUpdateInfoModel(Parcel parcel) {
        this.versionCode = parcel.readString();
        this.versionName = parcel.readString();
        this.info = parcel.readString();
        this.source = parcel.readString();
        this.lang = parcel.readString();
        this.MD5 = parcel.readString();
    }
}
