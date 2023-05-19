package com.ifengyu.intercom.http.entity;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class VersionInfo implements Parcelable {
    public static final Parcelable.Creator<VersionInfo> CREATOR = new Parcelable.Creator<VersionInfo>() { // from class: com.ifengyu.intercom.http.entity.VersionInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VersionInfo createFromParcel(Parcel parcel) {
            return new VersionInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VersionInfo[] newArray(int i) {
            return new VersionInfo[i];
        }
    };
    private boolean hasNewVersion;
    private String info;
    private String lang;
    private String localPath;
    private String md5;
    private int mode;
    private String source;
    private int versionCode;
    private String versionName;

    public VersionInfo() {
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

    public String getMd5() {
        return this.md5;
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

    public boolean isHasNewVersion() {
        return this.hasNewVersion;
    }

    public void setHasNewVersion(boolean z) {
        this.hasNewVersion = z;
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

    public void setMd5(String str) {
        this.md5 = str;
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

    public String toString() {
        return "VersionInfo{hasNewVersion=" + this.hasNewVersion + ", versionCode=" + this.versionCode + ", versionName='" + this.versionName + "', info='" + this.info + "', source='" + this.source + "', md5='" + this.md5 + "', lang='" + this.lang + "', localPath='" + this.localPath + "', mode=" + this.mode + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.hasNewVersion ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.versionCode);
        parcel.writeString(this.versionName);
        parcel.writeString(this.info);
        parcel.writeString(this.source);
        parcel.writeString(this.md5);
        parcel.writeString(this.lang);
        parcel.writeString(this.localPath);
        parcel.writeInt(this.mode);
    }

    protected VersionInfo(Parcel parcel) {
        this.hasNewVersion = parcel.readByte() != 0;
        this.versionCode = parcel.readInt();
        this.versionName = parcel.readString();
        this.info = parcel.readString();
        this.source = parcel.readString();
        this.md5 = parcel.readString();
        this.lang = parcel.readString();
        this.localPath = parcel.readString();
        this.mode = parcel.readInt();
    }
}
