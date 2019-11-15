package com.bumptech.glide.load.resource.e;

import java.util.ArrayList;
import java.util.List;

/* compiled from: TranscoderRegistry */
public class e {
    private final List<a<?, ?>> a = new ArrayList();

    /* compiled from: TranscoderRegistry */
    private static final class a<Z, R> {
        final d<Z, R> a;
        private final Class<Z> b;
        private final Class<R> c;

        a(Class<Z> cls, Class<R> cls2, d<Z, R> dVar) {
            this.b = cls;
            this.c = cls2;
            this.a = dVar;
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return this.b.isAssignableFrom(cls) && cls2.isAssignableFrom(this.c);
        }
    }

    public synchronized <Z, R> void a(Class<Z> cls, Class<R> cls2, d<Z, R> dVar) {
        this.a.add(new a(cls, cls2, dVar));
    }

    public synchronized <Z, R> d<Z, R> a(Class<Z> cls, Class<R> cls2) {
        d<Z, R> dVar;
        if (cls2.isAssignableFrom(cls)) {
            dVar = f.a();
        } else {
            for (a aVar : this.a) {
                if (aVar.a(cls, cls2)) {
                    dVar = aVar.a;
                }
            }
            throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
        }
        return dVar;
    }

    public synchronized <Z, R> List<Class<R>> b(Class<Z> cls, Class<R> cls2) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList2.add(cls2);
            arrayList = arrayList2;
        } else {
            for (a a2 : this.a) {
                if (a2.a(cls, cls2)) {
                    arrayList2.add(cls2);
                }
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }
}
