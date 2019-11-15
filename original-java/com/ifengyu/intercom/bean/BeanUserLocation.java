package com.ifengyu.intercom.bean;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.greendao.bean.d;
import com.ifengyu.intercom.protos.MitalkProtos.LocationSync;
import com.ifengyu.intercom.protos.SealProtos.SEAL_LocationInfo;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_LocationInfo;
import java.io.UnsupportedEncodingException;
import org.osmdroid.util.GeoPoint;

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

    public BeanUserLocation(LocationSync locationSync) {
        this.userID = String.valueOf(locationSync.getUserId());
        try {
            this.name = new String(locationSync.getUserName().toByteArray(), StringUtils.GB2312);
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        this.longitude = locationSync.getLongitude();
        this.latitude = locationSync.getLatitude();
        this.altitude = locationSync.getAltitude();
        this.time = locationSync.getTime();
        this.freq = locationSync.getFreq();
    }

    public BeanUserLocation(SEAL_LocationInfo sEAL_LocationInfo) {
        this.userID = String.valueOf(sEAL_LocationInfo.getUserId());
        try {
            this.name = new String(sEAL_LocationInfo.getUserName().toByteArray(), StringUtils.GB2312);
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        this.longitude = sEAL_LocationInfo.getLongitude();
        this.latitude = sEAL_LocationInfo.getLatitude();
        this.altitude = sEAL_LocationInfo.getAltitude();
        this.time = sEAL_LocationInfo.getTimeSync();
        this.freq = sEAL_LocationInfo.getUserFreq();
    }

    public BeanUserLocation(SHARK_LocationInfo sHARK_LocationInfo) {
        this.userID = String.valueOf(sHARK_LocationInfo.getUserId());
        try {
            this.name = new String(sHARK_LocationInfo.getUserName().toByteArray(), StringUtils.GB2312);
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        this.longitude = sHARK_LocationInfo.getLongitude();
        this.latitude = sHARK_LocationInfo.getLatitude();
        this.altitude = sHARK_LocationInfo.getAltitude();
        this.time = sHARK_LocationInfo.getTimeSync();
        this.freq = sHARK_LocationInfo.getUserFreq();
    }

    public BeanUserLocation(d dVar, boolean z) {
        if (z) {
            this.userID = String.valueOf(dVar.b());
            this.imgUrl = dVar.d();
            this.name = dVar.c();
            this.longitude = dVar.e().intValue();
            this.latitude = dVar.f().intValue();
            this.altitude = dVar.g().intValue();
            this.time = dVar.h().intValue();
            this.freq = dVar.i().intValue();
            this.fromDevType = dVar.k().intValue();
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

    public void setBeanUser(BeanUserLocation beanUserLocation) {
        setName(beanUserLocation.getName());
        setLongitudeInt(beanUserLocation.getLongitudeInt());
        setLatitudeInt(beanUserLocation.getLatitudeInt());
        setAltitude(beanUserLocation.getAltitude());
        setTime(beanUserLocation.getTime());
        setFreq(beanUserLocation.getFreq());
    }

    public GeoPoint getPosition() {
        return new GeoPoint(getLatitudeDouble(), getLongitudeDouble());
    }

    public int hashCode() {
        return Integer.parseInt(getUserID());
    }

    public boolean equals(Object obj) {
        return hashCode() == obj.hashCode();
    }

    public String getUserID() {
        return this.userID;
    }

    public void setUserID(String str) {
        this.userID = str;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public int getLongitudeInt() {
        return this.longitude;
    }

    public void setLongitudeInt(int i) {
        this.longitude = i;
    }

    public int getLatitudeInt() {
        return this.latitude;
    }

    public void setLatitudeInt(int i) {
        this.latitude = i;
    }

    public double getLongitudeDouble() {
        return ((double) this.longitude) / 1000000.0d;
    }

    public double getLatitudeDouble() {
        return ((double) this.latitude) / 1000000.0d;
    }

    public int getAltitude() {
        return this.altitude;
    }

    public void setAltitude(int i) {
        this.altitude = i;
    }

    public int getTime() {
        return this.time;
    }

    public void setTime(int i) {
        this.time = i;
    }

    public int getFreq() {
        return this.freq;
    }

    public void setFreq(int i) {
        this.freq = i;
    }

    public int getFromDevType() {
        return this.fromDevType;
    }

    public void setFromDevType(int i) {
        this.fromDevType = i;
    }

    public String toString() {
        return "BeanUserLocation{userID='" + this.userID + '\'' + ", imgUrl='" + this.imgUrl + '\'' + ", name='" + this.name + '\'' + ", longitude=" + this.longitude + ", latitude=" + this.latitude + ", altitude=" + this.altitude + ", time=" + this.time + ", freq=" + this.freq + '}';
    }
}
