package com.amap.api.maps.model;

import com.autonavi.amap.mapcore.IPoint;

public class MultiPointItem {
    private LatLng a;
    private IPoint b;
    private Object c;
    private String d = null;
    private String e;
    private String f;

    public MultiPointItem(LatLng latLng) {
        this.a = latLng;
    }

    public LatLng getLatLng() {
        return this.a;
    }

    public void setLatLng(LatLng latLng) {
        this.a = latLng;
    }

    public String getCustomerId() {
        return this.d;
    }

    public void setCustomerId(String str) {
        this.d = str;
    }

    public String getSnippet() {
        return this.f;
    }

    public void setSnippet(String str) {
        this.f = str;
    }

    public String getTitle() {
        return this.e;
    }

    public void setTitle(String str) {
        this.e = str;
    }

    public IPoint getIPoint() {
        return this.b;
    }

    public void setIPoint(IPoint iPoint) {
        this.b = iPoint;
    }

    public Object getObject() {
        return this.c;
    }

    public void setObject(Object obj) {
        this.c = obj;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof MultiPointItem)) {
            return false;
        }
        if (this.d == null || ((MultiPointItem) obj).getCustomerId() == null) {
            return super.equals(obj);
        }
        return this.d.equals(((MultiPointItem) obj).getCustomerId());
    }
}
