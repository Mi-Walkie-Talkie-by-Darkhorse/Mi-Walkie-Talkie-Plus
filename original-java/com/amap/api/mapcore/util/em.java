package com.amap.api.mapcore.util;

import com.amap.api.mapcore.util.el;

/* compiled from: Pool */
public abstract class em<T extends el<?>> {
    protected T a;

    /* access modifiers changed from: protected */
    public boolean a(T t) {
        return true;
    }

    public T b(T t) {
        if (t != null) {
            while (t != null) {
                T t2 = t.f;
                a(t);
                t.f = this.a;
                this.a = t;
                t = t2;
            }
        }
        return null;
    }
}
