package com.bumptech.glide.c;

import com.bumptech.glide.load.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ResourceDecoderRegistry */
public class e {
    private final List<String> a = new ArrayList();
    private final Map<String, List<a<?, ?>>> b = new HashMap();

    /* compiled from: ResourceDecoderRegistry */
    private static class a<T, R> {
        final Class<R> a;
        final f<T, R> b;
        private final Class<T> c;

        public a(Class<T> cls, Class<R> cls2, f<T, R> fVar) {
            this.c = cls;
            this.a = cls2;
            this.b = fVar;
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return this.c.isAssignableFrom(cls) && cls2.isAssignableFrom(this.a);
        }
    }

    public synchronized void a(List<String> list) {
        ArrayList<String> arrayList = new ArrayList<>(this.a);
        this.a.clear();
        this.a.addAll(list);
        for (String str : arrayList) {
            if (!list.contains(str)) {
                this.a.add(str);
            }
        }
    }

    public synchronized <T, R> List<f<T, R>> a(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.a) {
            List<a> list = (List) this.b.get(str);
            if (list != null) {
                for (a aVar : list) {
                    if (aVar.a(cls, cls2)) {
                        arrayList.add(aVar.b);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized <T, R> List<Class<R>> b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.a) {
            List<a> list = (List) this.b.get(str);
            if (list != null) {
                for (a aVar : list) {
                    if (aVar.a(cls, cls2)) {
                        arrayList.add(aVar.a);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized <T, R> void a(String str, f<T, R> fVar, Class<T> cls, Class<R> cls2) {
        a(str).add(new a(cls, cls2, fVar));
    }

    private synchronized List<a<?, ?>> a(String str) {
        List<a<?, ?>> list;
        if (!this.a.contains(str)) {
            this.a.add(str);
        }
        list = (List) this.b.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.b.put(str, list);
        }
        return list;
    }
}
