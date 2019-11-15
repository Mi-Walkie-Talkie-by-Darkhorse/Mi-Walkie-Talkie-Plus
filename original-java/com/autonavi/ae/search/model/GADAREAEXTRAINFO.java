package com.autonavi.ae.search.model;

import android.graphics.PointF;

public class GADAREAEXTRAINFO {
    private int nTelAreaCode;
    private int nTelRegionCode;
    private String pzCityName;
    private String pzProvName;
    private String pzTownName;
    private GADMINCODE stAdCode;
    private PointF stCenterPoint;

    private GADAREAEXTRAINFO(GADMINCODE gadmincode, PointF pointF, int i, int i2, String str, String str2, String str3) {
        this.stAdCode = gadmincode;
        this.stCenterPoint = pointF;
        this.nTelRegionCode = i;
        this.nTelAreaCode = i2;
        this.pzProvName = str;
        this.pzCityName = str2;
        this.pzTownName = str3;
    }

    public GADMINCODE getAdCode() {
        return this.stAdCode;
    }

    public PointF getCenterPoint() {
        return this.stCenterPoint;
    }

    public int getTelRegionCode() {
        return this.nTelRegionCode;
    }

    public int getTelAreaCode() {
        return this.nTelAreaCode;
    }

    public String getProvName() {
        return this.pzProvName;
    }

    public String getCityName() {
        return this.pzCityName;
    }

    public String getTownName() {
        return this.pzTownName;
    }
}
