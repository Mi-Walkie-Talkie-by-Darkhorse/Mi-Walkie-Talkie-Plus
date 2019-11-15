package com.amap.api.mapcore.util;

import com.amap.api.mapcore.util.el;

/* compiled from: Inlist */
public class el<T extends el<T>> {
    public T f;

    public static <T extends el<?>> T a(T t, T t2) {
        if (t2.f != null) {
            throw new IllegalArgumentException("'item' is a list");
        }
        t2.f = t;
        return t2;
    }
}
