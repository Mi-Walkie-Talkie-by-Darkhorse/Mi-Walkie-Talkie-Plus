package com.autonavi.ae.search.model;

import android.graphics.PointF;

public class GPoiBean extends GPoiBase {
    protected int adcode = 1;
    protected String czAddr;
    protected String czTel;
    protected String czTownName;
    protected int nCatCode = 0;
    protected int nMatchPos = 0;
    protected PointF naviPoint;
    protected PointF stLocalPoint;
    protected PointF stNaviPoint;
    protected String stPoiID;
    protected String strCatName;

    public GPoiBean(String str, String str2, String str3, String str4, int i, int i2, String str5, PointF pointF, PointF pointF2, int i3) {
        this.stPoiID = str;
        this.nCatCode = i2;
        this.czName = str2;
        this.czAddr = str3;
        this.czTel = str4;
        this.adcode = i;
        this.nMatchPos = i3;
        this.strCatName = str5;
        this.naviPoint = pointF2;
        this.stLocalPoint = pointF;
    }

    public int getMatchPos() {
        return this.nMatchPos;
    }

    public int getAdcode() {
        return this.adcode;
    }

    public int getCatCode() {
        return this.nCatCode;
    }

    public String getCatName() {
        return this.strCatName;
    }

    public String getPoiID() {
        return this.stPoiID;
    }

    public String getAddr() {
        return this.czAddr;
    }

    public String getTel() {
        return this.czTel;
    }

    public PointF getLocalPoint() {
        return this.stLocalPoint;
    }

    public PointF getNaviPoint() {
        return this.naviPoint;
    }
}
