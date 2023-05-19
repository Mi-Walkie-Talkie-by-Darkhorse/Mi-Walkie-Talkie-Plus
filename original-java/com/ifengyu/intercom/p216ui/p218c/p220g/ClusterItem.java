package com.ifengyu.intercom.p216ui.p218c.p220g;

import com.amap.api.maps.model.LatLng;
import com.ifengyu.intercom.bean.BeanUserLocation;

/* renamed from: com.ifengyu.intercom.ui.c.g.c */
/* loaded from: classes2.dex */
public class ClusterItem {

    /* renamed from: a */
    private LatLng f15092a;

    /* renamed from: b */
    private String f15093b;

    /* renamed from: c */
    private BeanUserLocation f15094c;

    public ClusterItem(LatLng latLng, BeanUserLocation beanUserLocation) {
        this.f15092a = latLng;
        this.f15093b = beanUserLocation.getUserID();
        this.f15094c = beanUserLocation;
    }

    /* renamed from: a */
    public BeanUserLocation m10228a() {
        return this.f15094c;
    }

    /* renamed from: b */
    public LatLng m10227b() {
        return this.f15092a;
    }

    /* renamed from: c */
    public String m10226c() {
        return this.f15093b;
    }
}
