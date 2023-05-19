package com.ifengyu.intercom.bean;

/* loaded from: classes2.dex */
public class GPS {
    private double lat;
    private double lng;

    public GPS(double d, double d2) {
        this.lat = d;
        this.lng = d2;
    }

    public double getLat() {
        return this.lat;
    }

    public double getLng() {
        return this.lng;
    }

    public void setLat(double d) {
        this.lat = d;
    }

    public void setLng(double d) {
        this.lng = d;
    }

    public String toString() {
        return "lat:" + this.lat + ",lng:" + this.lng;
    }
}
