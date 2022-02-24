package com.ifengyu.intercom.lite.http.entity;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class FirmwareInfo implements Parcelable {
    public static final Parcelable.Creator<FirmwareInfo> CREATOR = new Parcelable.Creator<FirmwareInfo>() { // from class: com.ifengyu.intercom.lite.http.entity.FirmwareInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FirmwareInfo createFromParcel(Parcel parcel) {
            return new FirmwareInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FirmwareInfo[] newArray(int i) {
            return new FirmwareInfo[i];
        }
    };
    private String MD5;
    private String info;
    private String lang;
    private String localPath;
    private int mode;
    private String source;
    private int versionCode;
    private String versionName;

    public FirmwareInfo() {
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

    public String getLocalPath() {
        return this.localPath;
    }

    public String getMD5() {
        return this.MD5;
    }

    public int getMode() {
        return this.mode;
    }

    public String getSource() {
        return this.source;
    }

    public int getVersionCode() {
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

    public void setLocalPath(String str) {
        this.localPath = str;
    }

    public void setMD5(String str) {
        this.MD5 = str;
    }

    public void setMode(int i) {
        this.mode = i;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setVersionCode(int i) {
        this.versionCode = i;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.versionCode);
        parcel.writeString(this.versionName);
        parcel.writeString(this.info);
        parcel.writeString(this.source);
        parcel.writeString(this.lang);
        parcel.writeString(this.MD5);
        parcel.writeString(this.localPath);
        parcel.writeInt(this.mode);
    }

    protected FirmwareInfo(Parcel parcel) {
        this.versionCode = parcel.readInt();
        this.versionName = parcel.readString();
        this.info = parcel.readString();
        this.source = parcel.readString();
        this.lang = parcel.readString();
        this.MD5 = parcel.readString();
        this.localPath = parcel.readString();
        this.mode = parcel.readInt();
    }
}
