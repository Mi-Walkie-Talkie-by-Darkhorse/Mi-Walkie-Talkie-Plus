package com.ifengyu.intercom.ui.map.e.a;

import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Cluster.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private LatLng f6518a;

    /* renamed from: b  reason: collision with root package name */
    private List<c> f6519b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private Marker f6520c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(LatLng latLng) {
        this.f6518a = latLng;
    }

    public void a(c cVar) {
        this.f6519b.add(cVar);
    }

    public List<c> b() {
        return this.f6519b;
    }

    public Marker c() {
        return this.f6520c;
    }

    public LatLng a() {
        return this.f6518a;
    }

    public void a(Marker marker) {
        this.f6520c = marker;
    }
}
