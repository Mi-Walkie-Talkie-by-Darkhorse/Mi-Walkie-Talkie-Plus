package com.bumptech.glide.c;

import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.bumptech.glide.util.g;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ModelToResourceClassCache */
public class d {
    private final AtomicReference<g> a = new AtomicReference<>();
    private final ArrayMap<g, List<Class<?>>> b = new ArrayMap<>();

    @Nullable
    public List<Class<?>> a(Class<?> cls, Class<?> cls2) {
        g gVar;
        List<Class<?>> list;
        g gVar2 = (g) this.a.getAndSet(null);
        if (gVar2 == null) {
            gVar = new g(cls, cls2);
        } else {
            gVar2.a(cls, cls2);
            gVar = gVar2;
        }
        synchronized (this.b) {
            list = (List) this.b.get(gVar);
        }
        this.a.set(gVar);
        return list;
    }

    public void a(Class<?> cls, Class<?> cls2, List<Class<?>> list) {
        synchronized (this.b) {
            this.b.put(new g(cls, cls2), list);
        }
    }
}
