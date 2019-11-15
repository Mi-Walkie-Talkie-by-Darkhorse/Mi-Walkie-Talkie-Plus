package com.github.mikephil.charting.g;

import com.github.mikephil.charting.g.f.a;

/* compiled from: FSize */
public final class b extends a {
    private static f<b> c = f.a(256, new b(0.0f, 0.0f));
    public float a;
    public float b;

    static {
        c.a(0.5f);
    }

    /* access modifiers changed from: protected */
    public a a() {
        return new b(0.0f, 0.0f);
    }

    public static b a(float f, float f2) {
        b bVar = (b) c.a();
        bVar.a = f;
        bVar.b = f2;
        return bVar;
    }

    public static void a(b bVar) {
        c.a(bVar);
    }

    public b() {
    }

    public b(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (!(this.a == bVar.a && this.b == bVar.b)) {
            z = false;
        }
        return z;
    }

    public String toString() {
        return this.a + "x" + this.b;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.a) ^ Float.floatToIntBits(this.b);
    }
}
