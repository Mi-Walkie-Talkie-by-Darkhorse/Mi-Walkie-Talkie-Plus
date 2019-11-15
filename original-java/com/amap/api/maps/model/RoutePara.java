package com.amap.api.maps.model;

public class RoutePara {
    private int a = 0;
    private int b = 0;
    private LatLng c;
    private LatLng d;
    private String e;
    private String f;

    public int getDrivingRouteStyle() {
        return this.a;
    }

    public void setDrivingRouteStyle(int i) {
        if (i >= 0 && i < 9) {
            this.a = i;
        }
    }

    public int getTransitRouteStyle() {
        return this.b;
    }

    public void setTransitRouteStyle(int i) {
        if (i >= 0 && i < 6) {
            this.b = i;
        }
    }

    public LatLng getStartPoint() {
        return this.c;
    }

    public void setStartPoint(LatLng latLng) {
        this.c = latLng;
    }

    public LatLng getEndPoint() {
        return this.d;
    }

    public void setEndPoint(LatLng latLng) {
        this.d = latLng;
    }

    public String getEndName() {
        return this.f;
    }

    public void setEndName(String str) {
        this.f = str;
    }

    public String getStartName() {
        return this.e;
    }

    public void setStartName(String str) {
        this.e = str;
    }
}
