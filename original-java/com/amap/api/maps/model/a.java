package com.amap.api.maps.model;

import com.amap.api.mapcore.util.dl;
import com.autonavi.amap.mapcore.DPoint;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: PointQuadTree */
class a {
    private final dl a;
    private final int b;
    private List<WeightedLatLng> c;
    private List<a> d;

    protected a(dl dlVar) {
        this(dlVar, 0);
    }

    private a(double d2, double d3, double d4, double d5, int i) {
        this(new dl(d2, d3, d4, d5), i);
    }

    private a(dl dlVar, int i) {
        this.d = null;
        this.a = dlVar;
        this.b = i;
    }

    /* access modifiers changed from: protected */
    public void a(WeightedLatLng weightedLatLng) {
        DPoint point = weightedLatLng.getPoint();
        if (this.a.a(point.x, point.y)) {
            a(point.x, point.y, weightedLatLng);
        }
    }

    private void a(double d2, double d3, WeightedLatLng weightedLatLng) {
        if (this.d == null) {
            if (this.c == null) {
                this.c = new ArrayList();
            }
            this.c.add(weightedLatLng);
            if (this.c.size() > 50 && this.b < 40) {
                a();
            }
        } else if (d3 < this.a.f) {
            if (d2 < this.a.e) {
                ((a) this.d.get(0)).a(d2, d3, weightedLatLng);
            } else {
                ((a) this.d.get(1)).a(d2, d3, weightedLatLng);
            }
        } else if (d2 < this.a.e) {
            ((a) this.d.get(2)).a(d2, d3, weightedLatLng);
        } else {
            ((a) this.d.get(3)).a(d2, d3, weightedLatLng);
        }
    }

    private void a() {
        this.d = new ArrayList(4);
        this.d.add(new a(this.a.a, this.a.e, this.a.b, this.a.f, this.b + 1));
        this.d.add(new a(this.a.e, this.a.c, this.a.b, this.a.f, this.b + 1));
        this.d.add(new a(this.a.a, this.a.e, this.a.f, this.a.d, this.b + 1));
        this.d.add(new a(this.a.e, this.a.c, this.a.f, this.a.d, this.b + 1));
        List<WeightedLatLng> list = this.c;
        this.c = null;
        for (WeightedLatLng weightedLatLng : list) {
            a(weightedLatLng.getPoint().x, weightedLatLng.getPoint().y, weightedLatLng);
        }
    }

    /* access modifiers changed from: protected */
    public Collection<WeightedLatLng> a(dl dlVar) {
        ArrayList arrayList = new ArrayList();
        a(dlVar, arrayList);
        return arrayList;
    }

    private void a(dl dlVar, Collection<WeightedLatLng> collection) {
        if (this.a.a(dlVar)) {
            if (this.d != null) {
                for (a a2 : this.d) {
                    a2.a(dlVar, collection);
                }
            } else if (this.c == null) {
            } else {
                if (dlVar.b(this.a)) {
                    collection.addAll(this.c);
                    return;
                }
                for (WeightedLatLng weightedLatLng : this.c) {
                    if (dlVar.a(weightedLatLng.getPoint())) {
                        collection.add(weightedLatLng);
                    }
                }
            }
        }
    }
}
