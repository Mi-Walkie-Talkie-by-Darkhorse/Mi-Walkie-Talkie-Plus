package com.amap.api.services.geocoder;

public class RegeocodeResult {
    private RegeocodeQuery a;
    private RegeocodeAddress b;

    public RegeocodeResult(RegeocodeQuery regeocodeQuery, RegeocodeAddress regeocodeAddress) {
        this.a = regeocodeQuery;
        this.b = regeocodeAddress;
    }

    public RegeocodeQuery getRegeocodeQuery() {
        return this.a;
    }

    public void setRegeocodeQuery(RegeocodeQuery regeocodeQuery) {
        this.a = regeocodeQuery;
    }

    public RegeocodeAddress getRegeocodeAddress() {
        return this.b;
    }

    public void setRegeocodeAddress(RegeocodeAddress regeocodeAddress) {
        this.b = regeocodeAddress;
    }
}
