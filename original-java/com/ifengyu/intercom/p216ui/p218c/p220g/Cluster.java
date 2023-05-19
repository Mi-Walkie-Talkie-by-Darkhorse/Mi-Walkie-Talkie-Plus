package com.ifengyu.intercom.p216ui.p218c.p220g;

import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Marker;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.c.g.a */
/* loaded from: classes2.dex */
public class Cluster {

    /* renamed from: a */
    private LatLng f15089a;

    /* renamed from: b */
    private List<ClusterItem> f15090b = new ArrayList();

    /* renamed from: c */
    private Marker f15091c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cluster(LatLng latLng) {
        this.f15089a = latLng;
    }

    /* renamed from: a */
    public void m10234a(ClusterItem clusterItem) {
        this.f15090b.add(clusterItem);
    }

    /* renamed from: b */
    public LatLng m10233b() {
        return this.f15089a;
    }

    /* renamed from: c */
    public List<ClusterItem> m10232c() {
        return this.f15090b;
    }

    /* renamed from: d */
    public Marker m10231d() {
        return this.f15091c;
    }

    /* renamed from: e */
    public void m10230e(Marker marker) {
        this.f15091c = marker;
    }
}
