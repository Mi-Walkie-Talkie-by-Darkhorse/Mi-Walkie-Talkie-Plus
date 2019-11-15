package com.bumptech.glide.util;

/* compiled from: MultiClassKey */
public class g {
    private Class<?> a;
    private Class<?> b;
    private Class<?> c;

    public g() {
    }

    public g(Class<?> cls, Class<?> cls2) {
        a(cls, cls2);
    }

    public g(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        a(cls, cls2, cls3);
    }

    public void a(Class<?> cls, Class<?> cls2) {
        a(cls, cls2, null);
    }

    public void a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.a = cls;
        this.b = cls2;
        this.c = cls3;
    }

    public String toString() {
        return "MultiClassKey{first=" + this.a + ", second=" + this.b + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (!this.a.equals(gVar.a)) {
            return false;
        }
        if (!this.b.equals(gVar.b)) {
            return false;
        }
        if (!i.a((Object) this.c, (Object) gVar.c)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (this.c != null ? this.c.hashCode() : 0) + (((this.a.hashCode() * 31) + this.b.hashCode()) * 31);
    }
}
