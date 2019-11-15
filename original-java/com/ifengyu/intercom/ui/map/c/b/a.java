package com.ifengyu.intercom.ui.map.c.b;

import android.graphics.Point;
import com.ifengyu.intercom.ui.map.d.a.f;
import java.util.ArrayList;
import java.util.List;
import org.osmdroid.api.IGeoPoint;

/* compiled from: OsmClusterItem */
public class a {
    private Point a;
    private IGeoPoint b;
    private ArrayList<Object> c = new ArrayList<>();
    private ArrayList<f> d = new ArrayList<>();
    private f e;

    public a(Point point, IGeoPoint iGeoPoint) {
        this.a = point;
        this.b = iGeoPoint;
    }

    public void a(f fVar) {
        this.d.add(0, fVar);
    }

    public int a() {
        return this.d.size();
    }

    public Point b() {
        return this.a;
    }

    public IGeoPoint c() {
        return this.b;
    }

    public void b(f fVar) {
        this.e = fVar;
    }

    public f d() {
        return this.e;
    }

    public List<f> e() {
        return this.d;
    }
}
