package com.amap.api.services.geocoder;

import java.util.ArrayList;
import java.util.List;

public class GeocodeResult {
    private GeocodeQuery a;
    private List<GeocodeAddress> b = new ArrayList();

    public GeocodeResult(GeocodeQuery geocodeQuery, List<GeocodeAddress> list) {
        this.a = geocodeQuery;
        this.b = list;
    }

    public GeocodeQuery getGeocodeQuery() {
        return this.a;
    }

    public void setGeocodeQuery(GeocodeQuery geocodeQuery) {
        this.a = geocodeQuery;
    }

    public List<GeocodeAddress> getGeocodeAddressList() {
        return this.b;
    }

    public void setGeocodeAddressList(List<GeocodeAddress> list) {
        this.b = list;
    }
}
