package com.github.mikephil.charting.data;

import com.github.mikephil.charting.components.YAxis.AxisDependency;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.e.b.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: ChartData */
public abstract class h<T extends e<? extends Entry>> {
    protected float a;
    protected float b;
    protected float c;
    protected float d;
    protected float e;
    protected float f;
    protected float g;
    protected float h;
    protected List<T> i;

    public h() {
        this.a = -3.4028235E38f;
        this.b = Float.MAX_VALUE;
        this.c = -3.4028235E38f;
        this.d = Float.MAX_VALUE;
        this.e = -3.4028235E38f;
        this.f = Float.MAX_VALUE;
        this.g = -3.4028235E38f;
        this.h = Float.MAX_VALUE;
        this.i = new ArrayList();
    }

    public h(List<T> list) {
        this.a = -3.4028235E38f;
        this.b = Float.MAX_VALUE;
        this.c = -3.4028235E38f;
        this.d = Float.MAX_VALUE;
        this.e = -3.4028235E38f;
        this.f = Float.MAX_VALUE;
        this.g = -3.4028235E38f;
        this.h = Float.MAX_VALUE;
        this.i = list;
        b();
    }

    public void b() {
        c();
    }

    public void a(float f2, float f3) {
        for (T a2 : this.i) {
            a2.a(f2, f3);
        }
        c();
    }

    /* access modifiers changed from: protected */
    public void c() {
        if (this.i != null) {
            this.a = -3.4028235E38f;
            this.b = Float.MAX_VALUE;
            this.c = -3.4028235E38f;
            this.d = Float.MAX_VALUE;
            for (T a2 : this.i) {
                a(a2);
            }
            this.e = -3.4028235E38f;
            this.f = Float.MAX_VALUE;
            this.g = -3.4028235E38f;
            this.h = Float.MAX_VALUE;
            e a3 = a(this.i);
            if (a3 != null) {
                this.e = a3.v();
                this.f = a3.u();
                for (T t : this.i) {
                    if (t.q() == AxisDependency.LEFT) {
                        if (t.u() < this.f) {
                            this.f = t.u();
                        }
                        if (t.v() > this.e) {
                            this.e = t.v();
                        }
                    }
                }
            }
            e b2 = b(this.i);
            if (b2 != null) {
                this.g = b2.v();
                this.h = b2.u();
                for (T t2 : this.i) {
                    if (t2.q() == AxisDependency.RIGHT) {
                        if (t2.u() < this.h) {
                            this.h = t2.u();
                        }
                        if (t2.v() > this.g) {
                            this.g = t2.v();
                        }
                    }
                }
            }
        }
    }

    public int d() {
        if (this.i == null) {
            return 0;
        }
        return this.i.size();
    }

    public float e() {
        return this.b;
    }

    public float a(AxisDependency axisDependency) {
        if (axisDependency == AxisDependency.LEFT) {
            if (this.f == Float.MAX_VALUE) {
                return this.h;
            }
            return this.f;
        } else if (this.h == Float.MAX_VALUE) {
            return this.f;
        } else {
            return this.h;
        }
    }

    public float f() {
        return this.a;
    }

    public float b(AxisDependency axisDependency) {
        if (axisDependency == AxisDependency.LEFT) {
            if (this.e == -3.4028235E38f) {
                return this.g;
            }
            return this.e;
        } else if (this.g == -3.4028235E38f) {
            return this.e;
        } else {
            return this.g;
        }
    }

    public float g() {
        return this.d;
    }

    public float h() {
        return this.c;
    }

    public List<T> i() {
        return this.i;
    }

    public Entry a(d dVar) {
        if (dVar.f() >= this.i.size()) {
            return null;
        }
        return ((e) this.i.get(dVar.f())).b(dVar.a(), dVar.b());
    }

    public T a(int i2) {
        if (this.i == null || i2 < 0 || i2 >= this.i.size()) {
            return null;
        }
        return (e) this.i.get(i2);
    }

    /* access modifiers changed from: protected */
    public void a(T t) {
        if (this.a < t.v()) {
            this.a = t.v();
        }
        if (this.b > t.u()) {
            this.b = t.u();
        }
        if (this.c < t.x()) {
            this.c = t.x();
        }
        if (this.d > t.w()) {
            this.d = t.w();
        }
        if (t.q() == AxisDependency.LEFT) {
            if (this.e < t.v()) {
                this.e = t.v();
            }
            if (this.f > t.u()) {
                this.f = t.u();
                return;
            }
            return;
        }
        if (this.g < t.v()) {
            this.g = t.v();
        }
        if (this.h > t.u()) {
            this.h = t.u();
        }
    }

    /* access modifiers changed from: protected */
    public T a(List<T> list) {
        for (T t : list) {
            if (t.q() == AxisDependency.LEFT) {
                return t;
            }
        }
        return null;
    }

    public T b(List<T> list) {
        for (T t : list) {
            if (t.q() == AxisDependency.RIGHT) {
                return t;
            }
        }
        return null;
    }

    public int j() {
        int i2 = 0;
        Iterator it = this.i.iterator();
        while (true) {
            int i3 = i2;
            if (!it.hasNext()) {
                return i3;
            }
            i2 = ((e) it.next()).s() + i3;
        }
    }

    public T k() {
        if (this.i == null || this.i.isEmpty()) {
            return null;
        }
        e eVar = (e) this.i.get(0);
        Iterator it = this.i.iterator();
        while (true) {
            e eVar2 = eVar;
            if (!it.hasNext()) {
                return eVar2;
            }
            eVar = (e) it.next();
            if (eVar.s() <= eVar2.s()) {
                eVar = eVar2;
            }
        }
    }
}
