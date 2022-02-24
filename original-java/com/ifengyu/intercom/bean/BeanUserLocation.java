package com.ifengyu.intercom.bean;

import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.greendao.bean.d;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import java.io.UnsupportedEncodingException;
import org.osmdroid.util.GeoPoint;

/* loaded from: classes.dex */
public class BeanUserLocation {
    private int altitude;
    private int freq;
    private int fromDevType;
    private String imgUrl;
    private int latitude;
    private int longitude;
    private String name;
    private int time;
    private String userID;

    public BeanUserLocation(MitalkProtos.LocationSync locationSync) {
        this.userID = String.valueOf(locationSync.getUserId());
        try {
            this.name = new String(locationSync.getUserName().toByteArray(), StringUtils.GB2312);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        this.longitude = locationSync.getLongitude();
        this.latitude = locationSync.getLatitude();
        this.altitude = locationSync.getAltitude();
        this.time = locationSync.getTime();
        this.freq = locationSync.getFreq();
    }

    public boolean equals(Object obj) {
        return hashCode() == obj.hashCode();
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

    public String getImgUrl() {
        return this.imgUrl;
    }

    public double getLatitudeDouble() {
        return this.latitude / 1000000.0d;
    }

    public int getLatitudeInt() {
        return this.latitude;
    }

    public double getLongitudeDouble() {
        return this.longitude / 1000000.0d;
    }

    public int getLongitudeInt() {
        return this.longitude;
    }

    public String getName() {
        return this.name;
    }

    public GeoPoint getPosition() {
        return new GeoPoint(getLatitudeDouble(), getLongitudeDouble());
    }

    public int getTime() {
        return this.time;
    }

    public String getUserID() {
        return this.userID;
    }

    public int hashCode() {
        return Integer.parseInt(getUserID());
    }

    public void setAltitude(int i) {
        this.altitude = i;
    }

    public void setBeanUser(BeanUserLocation beanUserLocation) {
        setName(beanUserLocation.getName());
        setLongitudeInt(beanUserLocation.getLongitudeInt());
        setLatitudeInt(beanUserLocation.getLatitudeInt());
        setAltitude(beanUserLocation.getAltitude());
        setTime(beanUserLocation.getTime());
        setFreq(beanUserLocation.getFreq());
    }

    public void setFreq(int i) {
        this.freq = i;
    }

    public void setFromDevType(int i) {
        this.fromDevType = i;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public void setLatitudeInt(int i) {
        this.latitude = i;
    }

    public void setLongitudeInt(int i) {
        this.longitude = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTime(int i) {
        this.time = i;
    }

    public void setUserID(String str) {
        this.userID = str;
    }

    public String toString() {
        return "BeanUserLocation{userID='" + this.userID + "', imgUrl='" + this.imgUrl + "', name='" + this.name + "', longitude=" + this.longitude + ", latitude=" + this.latitude + ", altitude=" + this.altitude + ", time=" + this.time + ", freq=" + this.freq + '}';
    }

    public BeanUserLocation(SealProtos.SEAL_LocationInfo sEAL_LocationInfo) {
        this.userID = String.valueOf(sEAL_LocationInfo.getUserId());
        try {
            this.name = new String(sEAL_LocationInfo.getUserName().toByteArray(), StringUtils.GB2312);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        this.longitude = sEAL_LocationInfo.getLongitude();
        this.latitude = sEAL_LocationInfo.getLatitude();
        this.altitude = sEAL_LocationInfo.getAltitude();
        this.time = sEAL_LocationInfo.getTimeSync();
        this.freq = sEAL_LocationInfo.getUserFreq();
    }

    public BeanUserLocation(SharkProtos.SHARK_LocationInfo sHARK_LocationInfo) {
        this.userID = String.valueOf(sHARK_LocationInfo.getUserId());
        try {
            this.name = new String(sHARK_LocationInfo.getUserName().toByteArray(), StringUtils.GB2312);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        this.longitude = sHARK_LocationInfo.getLongitude();
        this.latitude = sHARK_LocationInfo.getLatitude();
        this.altitude = sHARK_LocationInfo.getAltitude();
        this.time = sHARK_LocationInfo.getTimeSync();
        this.freq = sHARK_LocationInfo.getUserFreq();
    }

    public BeanUserLocation(d dVar, boolean z) {
        if (z) {
            this.userID = String.valueOf(dVar.k());
            this.imgUrl = dVar.e();
            this.name = dVar.h();
            this.longitude = dVar.g().intValue();
            this.latitude = dVar.f().intValue();
            this.altitude = dVar.a().intValue();
            this.time = dVar.j().intValue();
            this.freq = dVar.b().intValue();
            this.fromDevType = dVar.c().intValue();
        }
    }

    public BeanUserLocation(String str, String str2, int i, int i2, int i3) {
        this.userID = str;
        this.name = str2;
        this.longitude = i;
        this.latitude = i2;
        this.altitude = i3;
        this.time = (int) (System.currentTimeMillis() / 1000);
    }
}
