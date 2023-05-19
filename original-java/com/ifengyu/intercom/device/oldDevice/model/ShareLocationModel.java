package com.ifengyu.intercom.device.oldDevice.model;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.Index;
import androidx.room.PrimaryKey;

@Entity(indices = {@Index(unique = true, value = {"user_id"})}, tableName = "share_location")
/* loaded from: classes2.dex */
public class ShareLocationModel {
    private int altitude;
    private int freq;
    @ColumnInfo(name = "from_dev_type")
    private int fromDevType;
    @PrimaryKey(autoGenerate = true)

    /* renamed from: id */
    private Long f13063id;
    @ColumnInfo(name = "img_url")
    private String imgUrl;
    private int latitude;
    private int longitude;
    private String name;
    @ColumnInfo(name = "rx_css")
    private int rxCss;
    private int time;
    @ColumnInfo(name = "user_id")
    private int userId;

    public ShareLocationModel() {
    }

    public int getAltitude() {
        return this.altitude;
    }

    public int getFreq() {
        return this.freq;
    }

    public int getFromDevType() {
        return this.fromDevType;
    }

    public Long getId() {
        return this.f13063id;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public int getLatitude() {
        return this.latitude;
    }

    public int getLongitude() {
        return this.longitude;
    }

    public String getName() {
        return this.name;
    }

    public int getRxCss() {
        return this.rxCss;
    }

    public int getTime() {
        return this.time;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setAltitude(int i) {
        this.altitude = i;
    }

    public void setFreq(int i) {
        this.freq = i;
    }

    public void setFromDevType(int i) {
        this.fromDevType = i;
    }

    public void setId(Long l) {
        this.f13063id = l;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public void setLatitude(int i) {
        this.latitude = i;
    }

    public void setLongitude(int i) {
        this.longitude = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRxCss(int i) {
        this.rxCss = i;
    }

    public void setTime(int i) {
        this.time = i;
    }

    public void setUserId(int i) {
        this.userId = i;
    }

    public String toString() {
        return "ShareLocationModel{id=" + this.f13063id + ", userId=" + this.userId + ", name='" + this.name + "', imgUrl='" + this.imgUrl + "', longitude=" + this.longitude + ", latitude=" + this.latitude + ", altitude=" + this.altitude + ", time=" + this.time + ", freq=" + this.freq + ", rxCss=" + this.rxCss + ", fromDevType=" + this.fromDevType + '}';
    }

    @Ignore
    public ShareLocationModel(Long l, int i, String str, String str2, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f13063id = l;
        this.userId = i;
        this.name = str;
        this.imgUrl = str2;
        this.longitude = i2;
        this.latitude = i3;
        this.altitude = i4;
        this.time = i5;
        this.freq = i6;
        this.rxCss = i7;
        this.fromDevType = i8;
    }
}
