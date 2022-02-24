package com.ifengyu.intercom.lite.models;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import com.umeng.analytics.pro.ai;
import java.util.Objects;

@Entity(indices = {@Index(unique = true, value = {"address"}), @Index(unique = true, value = {"device_id"})}, tableName = "device")
/* loaded from: classes2.dex */
public class DeviceModel implements Parcelable {
    public static final Parcelable.Creator<DeviceModel> CREATOR = new Parcelable.Creator<DeviceModel>() { // from class: com.ifengyu.intercom.lite.models.DeviceModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeviceModel createFromParcel(Parcel parcel) {
            return new DeviceModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeviceModel[] newArray(int i) {
            return new DeviceModel[i];
        }
    };
    private String address;
    private boolean connected;
    @ColumnInfo(name = "create_time")
    private long createTime;
    @ColumnInfo(name = "device_color")
    private int deviceColor;
    @ColumnInfo(name = "device_id")
    private String deviceId;
    @ColumnInfo(name = ai.ai)
    private int deviceType;
    private boolean enabled;
    @PrimaryKey(autoGenerate = true)
    private Long id;
    private String name;
    private String token;
    @ColumnInfo(name = "update_time")
    private long updateTime;
    @ColumnInfo(name = "version_hw")
    private int versionHw;
    @ColumnInfo(name = "version_soft")
    private int versionSoft;
    @ColumnInfo(name = "version_voice")
    private int versionVoice;

    public DeviceModel() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DeviceModel.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.address, ((DeviceModel) obj).address);
    }

    public String getAddress() {
        return this.address;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public int getDeviceColor() {
        return this.deviceColor;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public int getDeviceType() {
        return this.deviceType;
    }

    public Long getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getToken() {
        return this.token;
    }

    public long getUpdateTime() {
        return this.updateTime;
    }

    public int getVersionHw() {
        return this.versionHw;
    }

    public int getVersionSoft() {
        return this.versionSoft;
    }

    public int getVersionVoice() {
        return this.versionVoice;
    }

    public int hashCode() {
        String str = this.address;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public boolean isConnected() {
        return this.connected;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setConnected(boolean z) {
        this.connected = z;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public void setDeviceColor(int i) {
        this.deviceColor = i;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setDeviceType(int i) {
        this.deviceType = i;
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUpdateTime(long j) {
        this.updateTime = j;
    }

    public void setVersionHw(int i) {
        this.versionHw = i;
    }

    public void setVersionSoft(int i) {
        this.versionSoft = i;
    }

    public void setVersionVoice(int i) {
        this.versionVoice = i;
    }

    public String toString() {
        return "DeviceModel{id=" + this.id + ", name='" + this.name + "', address='" + this.address + "', deviceId='" + this.deviceId + "', deviceType=" + this.deviceType + ", deviceColor=" + this.deviceColor + ", versionSoft=" + this.versionSoft + ", versionHw=" + this.versionHw + ", versionVoice=" + this.versionVoice + ", connected=" + this.connected + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ", enabled=" + this.enabled + ", token='" + this.token + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.id);
        parcel.writeString(this.name);
        parcel.writeString(this.address);
        parcel.writeString(this.deviceId);
        parcel.writeInt(this.deviceType);
        parcel.writeInt(this.deviceColor);
        parcel.writeInt(this.versionSoft);
        parcel.writeInt(this.versionHw);
        parcel.writeInt(this.versionVoice);
        parcel.writeByte(this.connected ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.createTime);
        parcel.writeLong(this.updateTime);
        parcel.writeByte(this.enabled ? (byte) 1 : (byte) 0);
        parcel.writeString(this.token);
    }

    protected DeviceModel(Parcel parcel) {
        this.id = (Long) parcel.readValue(Long.class.getClassLoader());
        this.name = parcel.readString();
        this.address = parcel.readString();
        this.deviceId = parcel.readString();
        this.deviceType = parcel.readInt();
        this.deviceColor = parcel.readInt();
        this.versionSoft = parcel.readInt();
        this.versionHw = parcel.readInt();
        this.versionVoice = parcel.readInt();
        boolean z = true;
        this.connected = parcel.readByte() != 0;
        this.createTime = parcel.readLong();
        this.updateTime = parcel.readLong();
        this.enabled = parcel.readByte() == 0 ? false : z;
        this.token = parcel.readString();
    }
}
