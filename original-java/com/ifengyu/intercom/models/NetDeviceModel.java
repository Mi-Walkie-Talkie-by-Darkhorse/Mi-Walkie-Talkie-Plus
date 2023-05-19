package com.ifengyu.intercom.models;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.Index;
import androidx.room.PrimaryKey;

@Entity(foreignKeys = {@ForeignKey(childColumns = {"sn"}, entity = DeviceModel.class, onDelete = 5, parentColumns = {"device_id"})}, indices = {@Index(unique = true, value = {"sn"})}, tableName = "net_device")
/* loaded from: classes2.dex */
public class NetDeviceModel implements Parcelable {
    public static final int BATTERY_LEVEL_HIGH = 60;
    public static final int BATTERY_LEVEL_MIDDLE = 20;
    public static final Parcelable.Creator<NetDeviceModel> CREATOR = new Parcelable.Creator<NetDeviceModel>() { // from class: com.ifengyu.intercom.models.NetDeviceModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetDeviceModel createFromParcel(Parcel parcel) {
            return new NetDeviceModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetDeviceModel[] newArray(int i) {
            return new NetDeviceModel[i];
        }
    };
    private String account;
    private String avatar;
    private int battery;
    private long bindTime;
    private int color;
    @ColumnInfo(name = "fw_version")
    private String fwVersion;
    @ColumnInfo(name = "hw_version")
    private String hwVersion;
    private String iccid;
    @PrimaryKey(autoGenerate = true)

    /* renamed from: id */
    private Long f14389id;
    private String imei;
    private String nickname;
    private int online;

    /* renamed from: sn */
    private String f14390sn;
    @ColumnInfo(name = "sw_version")
    private String swVersion;
    @ColumnInfo(name = "user_id")
    private long userId;
    @ColumnInfo(name = "user_type")
    private int userType;

    public NetDeviceModel() {
    }

    public static Parcelable.Creator<NetDeviceModel> getCREATOR() {
        return CREATOR;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAccount() {
        return this.account;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public int getBattery() {
        return this.battery;
    }

    public long getBindTime() {
        return this.bindTime;
    }

    public int getColor() {
        return this.color;
    }

    public String getFwVersion() {
        return this.fwVersion;
    }

    public String getHwVersion() {
        return this.hwVersion;
    }

    public String getIccid() {
        return this.iccid;
    }

    public Long getId() {
        return this.f14389id;
    }

    public String getImei() {
        return this.imei;
    }

    public String getNickname() {
        return this.nickname;
    }

    public int getOnline() {
        return this.online;
    }

    public String getSn() {
        return this.f14390sn;
    }

    public String getSwVersion() {
        return this.swVersion;
    }

    public long getUserId() {
        return this.userId;
    }

    public int getUserType() {
        return this.userType;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBattery(int i) {
        this.battery = i;
    }

    public void setBindTime(long j) {
        this.bindTime = j;
    }

    public void setColor(int i) {
        this.color = i;
    }

    public void setFwVersion(String str) {
        this.fwVersion = str;
    }

    public void setHwVersion(String str) {
        this.hwVersion = str;
    }

    public void setIccid(String str) {
        this.iccid = str;
    }

    public void setId(Long l) {
        this.f14389id = l;
    }

    public void setImei(String str) {
        this.imei = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setOnline(int i) {
        this.online = i;
    }

    public void setSn(String str) {
        this.f14390sn = str;
    }

    public void setSwVersion(String str) {
        this.swVersion = str;
    }

    public void setUserId(long j) {
        this.userId = j;
    }

    public void setUserType(int i) {
        this.userType = i;
    }

    public String toString() {
        return "NetDeviceModel{id=" + this.f14389id + ", sn='" + this.f14390sn + "', userId=" + this.userId + ", account='" + this.account + "', nickname='" + this.nickname + "', avatar='" + this.avatar + "', userType=" + this.userType + ", online=" + this.online + ", battery=" + this.battery + ", bindTime=" + this.bindTime + ", imei='" + this.imei + "', iccid='" + this.iccid + "', color=" + this.color + ", hwVersion='" + this.hwVersion + "', fwVersion='" + this.fwVersion + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.f14389id);
        parcel.writeString(this.f14390sn);
        parcel.writeLong(this.userId);
        parcel.writeString(this.account);
        parcel.writeString(this.nickname);
        parcel.writeString(this.avatar);
        parcel.writeInt(this.userType);
        parcel.writeInt(this.online);
        parcel.writeInt(this.battery);
        parcel.writeLong(this.bindTime);
        parcel.writeString(this.imei);
        parcel.writeString(this.iccid);
        parcel.writeInt(this.color);
        parcel.writeString(this.hwVersion);
        parcel.writeString(this.fwVersion);
    }

    protected NetDeviceModel(Parcel parcel) {
        this.f14389id = (Long) parcel.readValue(Long.class.getClassLoader());
        this.f14390sn = parcel.readString();
        this.userId = parcel.readLong();
        this.account = parcel.readString();
        this.nickname = parcel.readString();
        this.avatar = parcel.readString();
        this.userType = parcel.readInt();
        this.online = parcel.readInt();
        this.battery = parcel.readInt();
        this.bindTime = parcel.readLong();
        this.imei = parcel.readString();
        this.iccid = parcel.readString();
        this.color = parcel.readInt();
        this.hwVersion = parcel.readString();
        this.fwVersion = parcel.readString();
    }
}
