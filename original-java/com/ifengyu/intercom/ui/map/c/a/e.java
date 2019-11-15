package com.ifengyu.intercom.ui.map.c.a;

import com.amap.api.maps.model.LatLng;
import com.ifengyu.intercom.bean.BeanUserLocation;

/* compiled from: RegionItem */
public class e implements c {
    private LatLng a;
    private String b;
    private BeanUserLocation c;

    public e(LatLng latLng, BeanUserLocation beanUserLocation) {
        this.a = latLng;
        this.b = beanUserLocation.getUserID();
        this.c = beanUserLocation;
    }

    public LatLng a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public BeanUserLocation c() {
        return this.c;
    }
}
