package com.autonavi.ae.search.model;

public class GPoiGroup extends GPoiBase {
    private GPoiGroup(String str) {
        this.czName = str;
    }

    public String getName() {
        return this.czName;
    }
}
