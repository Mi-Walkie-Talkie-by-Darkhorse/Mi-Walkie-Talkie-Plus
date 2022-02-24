package com.ifengyu.intercom.ui.map.e.b;

import android.graphics.Point;
import com.ifengyu.intercom.ui.map.f.a.f;
import java.util.ArrayList;
import java.util.List;
import org.osmdroid.api.IGeoPoint;

/* compiled from: OsmClusterItem.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Point f6530a;

    /* renamed from: b  reason: collision with root package name */
    private IGeoPoint f6531b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<f> f6532c = new ArrayList<>();
    private f d;

    public a(Point point, IGeoPoint iGeoPoint) {
        this.f6530a = point;
        this.f6531b = iGeoPoint;
        new ArrayList();
    }

    public void a(f fVar) {
        this.f6532c.add(0, fVar);
    }

    public Point b() {
        return this.f6530a;
    }

    public f c() {
        return this.d;
    }

    public List<f> d() {
        return this.f6532c;
    }

    public int e() {
        return this.f6532c.size();
    }

    public IGeoPoint a() {
        return this.f6531b;
    }

    public void b(f fVar) {
        this.d = fVar;
    }
}
