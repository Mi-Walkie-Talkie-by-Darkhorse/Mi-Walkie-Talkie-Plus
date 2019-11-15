package com.ifengyu.intercom.ui.map.c.a;

import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Cluster */
public class a {
    private LatLng a;
    private List<c> b = new ArrayList();
    private Marker c;

    a(LatLng latLng) {
        this.a = latLng;
    }

    public void a(c cVar) {
        this.b.add(cVar);
    }

    public LatLng a() {
        return this.a;
    }

    public void a(Marker marker) {
        this.c = marker;
    }

    public Marker b() {
        return this.c;
    }

    public List<c> c() {
        return this.b;
    }
}
