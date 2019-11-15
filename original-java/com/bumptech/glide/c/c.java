package com.bumptech.glide.c;

import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.bumptech.glide.load.engine.o;
import com.bumptech.glide.util.g;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: LoadPathCache */
public class c {
    private final ArrayMap<g, o<?, ?, ?>> a = new ArrayMap<>();
    private final AtomicReference<g> b = new AtomicReference<>();

    public boolean a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        boolean containsKey;
        g c = c(cls, cls2, cls3);
        synchronized (this.a) {
            containsKey = this.a.containsKey(c);
        }
        this.b.set(c);
        return containsKey;
    }

    @Nullable
    public <Data, TResource, Transcode> o<Data, TResource, Transcode> b(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        o<Data, TResource, Transcode> oVar;
        g c = c(cls, cls2, cls3);
        synchronized (this.a) {
            oVar = (o) this.a.get(c);
        }
        this.b.set(c);
        return oVar;
    }

    public void a(Class<?> cls, Class<?> cls2, Class<?> cls3, o<?, ?, ?> oVar) {
        synchronized (this.a) {
            this.a.put(new g(cls, cls2, cls3), oVar);
        }
    }

    private g c(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        g gVar = (g) this.b.getAndSet(null);
        if (gVar == null) {
            gVar = new g();
        }
        gVar.a(cls, cls2, cls3);
        return gVar;
    }
}
