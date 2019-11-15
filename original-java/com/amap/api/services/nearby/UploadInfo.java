package com.amap.api.services.nearby;

import com.amap.api.services.core.LatLonPoint;

public class UploadInfo {
    private int a = 1;
    private String b;
    private LatLonPoint c;

    public void setPoint(LatLonPoint latLonPoint) {
        this.c = latLonPoint;
    }

    public LatLonPoint getPoint() {
        return this.c;
    }

    public void setUserID(String str) {
        this.b = str;
    }

    public String getUserID() {
        return this.b;
    }

    public int getCoordType() {
        return this.a;
    }

    public void setCoordType(int i) {
        if (i == 0 || i == 1) {
            this.a = i;
        } else {
            this.a = 1;
        }
    }
}
