package com.autonavi.ae.search.model;

public class GADMINCODE {
    private int euRegionCode;
    private int nAdCode;
    private int nCityAdCode;

    public GADMINCODE(int i, int i2, int i3) {
        this.euRegionCode = i;
        this.nCityAdCode = i2;
        this.nAdCode = i3;
    }

    public int getRegionCode() {
        return this.euRegionCode;
    }

    public void setRegionCode(int i) {
        this.euRegionCode = i;
    }

    public int getCityAdCode() {
        return this.nCityAdCode;
    }

    public void setCityAdCode(int i) {
        this.nCityAdCode = i;
    }

    public int getAdCode() {
        return this.nAdCode;
    }

    public void setAdCode(int i) {
        this.nAdCode = i;
    }
}
