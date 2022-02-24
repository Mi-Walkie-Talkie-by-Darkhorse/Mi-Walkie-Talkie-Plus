package com.ifengyu.intercom.ui.map.e.a;

import com.amap.api.maps.model.LatLng;
import com.ifengyu.intercom.bean.BeanUserLocation;

/* compiled from: RegionItem.java */
/* loaded from: classes2.dex */
public class e implements c {

    /* renamed from: a  reason: collision with root package name */
    private LatLng f6527a;

    /* renamed from: b  reason: collision with root package name */
    private String f6528b;

    /* renamed from: c  reason: collision with root package name */
    private BeanUserLocation f6529c;

    public e(LatLng latLng, BeanUserLocation beanUserLocation) {
        this.f6527a = latLng;
        this.f6528b = beanUserLocation.getUserID();
        this.f6529c = beanUserLocation;
    }

    @Override // com.ifengyu.intercom.ui.map.e.a.c
    public String a() {
        return this.f6528b;
    }

    public BeanUserLocation b() {
        return this.f6529c;
    }

    @Override // com.ifengyu.intercom.ui.map.e.a.c
    public LatLng getPosition() {
        return this.f6527a;
    }
}
