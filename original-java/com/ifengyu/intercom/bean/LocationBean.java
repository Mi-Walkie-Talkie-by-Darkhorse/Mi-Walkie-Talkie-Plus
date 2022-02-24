package com.ifengyu.intercom.bean;

/* loaded from: classes.dex */
public class LocationBean {
    public int altitude;
    public double latitude;
    public double longitude;

    public LocationBean(double d, double d2) {
        this.latitude = d;
        this.longitude = d2;
        this.altitude = 0;
    }

    public LocationBean(double d, double d2, int i) {
        this.latitude = d;
        this.longitude = d2;
        this.altitude = i;
    }
}
