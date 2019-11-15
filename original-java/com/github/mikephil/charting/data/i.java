package com.github.mikephil.charting.data;

import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.e.b.b;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CombinedData */
public class i extends b<b<? extends Entry>> {
    private j j;
    private a k;
    private o l;
    private g m;
    private f n;

    public void c() {
        if (this.i == null) {
            this.i = new ArrayList();
        }
        this.i.clear();
        this.a = -3.4028235E38f;
        this.b = Float.MAX_VALUE;
        this.c = -3.4028235E38f;
        this.d = Float.MAX_VALUE;
        this.e = -3.4028235E38f;
        this.f = Float.MAX_VALUE;
        this.g = -3.4028235E38f;
        this.h = Float.MAX_VALUE;
        for (h hVar : p()) {
            hVar.c();
            this.i.addAll(hVar.i());
            if (hVar.f() > this.a) {
                this.a = hVar.f();
            }
            if (hVar.e() < this.b) {
                this.b = hVar.e();
            }
            if (hVar.h() > this.c) {
                this.c = hVar.h();
            }
            if (hVar.g() < this.d) {
                this.d = hVar.g();
            }
            if (hVar.e > this.e) {
                this.e = hVar.e;
            }
            if (hVar.f < this.f) {
                this.f = hVar.f;
            }
            if (hVar.g > this.g) {
                this.g = hVar.g;
            }
            if (hVar.h < this.h) {
                this.h = hVar.h;
            }
        }
    }

    public f a() {
        return this.n;
    }

    public j l() {
        return this.j;
    }

    public a m() {
        return this.k;
    }

    public o n() {
        return this.l;
    }

    public g o() {
        return this.m;
    }

    public List<b> p() {
        ArrayList arrayList = new ArrayList();
        if (this.j != null) {
            arrayList.add(this.j);
        }
        if (this.k != null) {
            arrayList.add(this.k);
        }
        if (this.l != null) {
            arrayList.add(this.l);
        }
        if (this.m != null) {
            arrayList.add(this.m);
        }
        if (this.n != null) {
            arrayList.add(this.n);
        }
        return arrayList;
    }

    public void b() {
        if (this.j != null) {
            this.j.b();
        }
        if (this.k != null) {
            this.k.b();
        }
        if (this.m != null) {
            this.m.b();
        }
        if (this.l != null) {
            this.l.b();
        }
        if (this.n != null) {
            this.n.b();
        }
        c();
    }

    public Entry a(d dVar) {
        List p = p();
        if (dVar.e() >= p.size()) {
            return null;
        }
        h hVar = (h) p.get(dVar.e());
        if (dVar.f() >= hVar.d()) {
            return null;
        }
        for (Entry entry : hVar.a(dVar.f()).a(dVar.a())) {
            if (entry.b() == dVar.b()) {
                return entry;
            }
            if (Float.isNaN(dVar.b())) {
                return entry;
            }
        }
        return null;
    }
}
