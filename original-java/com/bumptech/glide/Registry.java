package com.bumptech.glide;

import android.support.v4.util.Pools.Pool;
import com.bumptech.glide.c.a;
import com.bumptech.glide.c.b;
import com.bumptech.glide.c.c;
import com.bumptech.glide.c.e;
import com.bumptech.glide.c.f;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.b.n;
import com.bumptech.glide.load.b.o;
import com.bumptech.glide.load.b.p;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Registry {
    private final p a = new p(this.j);
    private final a b = new a();
    private final e c = new e();
    private final f d = new f();
    private final d e = new d();
    private final com.bumptech.glide.load.resource.e.e f = new com.bumptech.glide.load.resource.e.e();
    private final b g = new b();
    private final com.bumptech.glide.c.d h = new com.bumptech.glide.c.d();
    private final c i = new c();
    private final Pool<List<Exception>> j = com.bumptech.glide.util.a.a.a();

    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(String str) {
            super(str);
        }
    }

    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException(Object obj) {
            super("Failed to find any ModelLoaders for model: " + obj);
        }

        public NoModelLoaderAvailableException(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls);
        }
    }

    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public Registry() {
        a(Arrays.asList(new String[]{"Gif", "Bitmap", "BitmapDrawable"}));
    }

    public <Data> Registry a(Class<Data> cls, com.bumptech.glide.load.a<Data> aVar) {
        this.b.a(cls, aVar);
        return this;
    }

    public <Data, TResource> Registry a(Class<Data> cls, Class<TResource> cls2, com.bumptech.glide.load.f<Data, TResource> fVar) {
        a("legacy_append", cls, cls2, fVar);
        return this;
    }

    public <Data, TResource> Registry a(String str, Class<Data> cls, Class<TResource> cls2, com.bumptech.glide.load.f<Data, TResource> fVar) {
        this.c.a(str, fVar, cls, cls2);
        return this;
    }

    public final Registry a(List<String> list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, "legacy_prepend_all");
        arrayList.add("legacy_append");
        this.c.a((List<String>) arrayList);
        return this;
    }

    public <TResource> Registry a(Class<TResource> cls, g<TResource> gVar) {
        this.d.a(cls, gVar);
        return this;
    }

    public Registry a(com.bumptech.glide.load.a.c.a aVar) {
        this.e.a(aVar);
        return this;
    }

    public <TResource, Transcode> Registry a(Class<TResource> cls, Class<Transcode> cls2, com.bumptech.glide.load.resource.e.d<TResource, Transcode> dVar) {
        this.f.a(cls, cls2, dVar);
        return this;
    }

    public Registry a(ImageHeaderParser imageHeaderParser) {
        this.g.a(imageHeaderParser);
        return this;
    }

    public <Model, Data> Registry a(Class<Model> cls, Class<Data> cls2, o<Model, Data> oVar) {
        this.a.a(cls, cls2, oVar);
        return this;
    }

    public <Data, TResource, Transcode> com.bumptech.glide.load.engine.o<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        com.bumptech.glide.load.engine.o<Data, TResource, Transcode> b2 = this.i.b(cls, cls2, cls3);
        if (b2 == null && !this.i.a(cls, cls2, cls3)) {
            List c2 = c(cls, cls2, cls3);
            if (c2.isEmpty()) {
                b2 = null;
            } else {
                b2 = new com.bumptech.glide.load.engine.o<>(cls, cls2, cls3, c2, this.j);
            }
            this.i.a(cls, cls2, cls3, b2);
        }
        return b2;
    }

    private <Data, TResource, Transcode> List<com.bumptech.glide.load.engine.f<Data, TResource, Transcode>> c(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.c.b(cls, cls2)) {
            for (Class cls5 : this.f.b(cls4, cls3)) {
                arrayList.add(new com.bumptech.glide.load.engine.f(cls, cls4, cls5, this.c.a(cls, cls4), this.f.a(cls4, cls5), this.j));
            }
        }
        return arrayList;
    }

    public <Model, TResource, Transcode> List<Class<?>> b(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> a2 = this.h.a(cls, cls2);
        if (a2 != null) {
            return a2;
        }
        ArrayList arrayList = new ArrayList();
        for (Class b2 : this.a.a(cls)) {
            for (Class cls4 : this.c.b(b2, cls2)) {
                if (!this.f.b(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                    arrayList.add(cls4);
                }
            }
        }
        this.h.a(cls, cls2, Collections.unmodifiableList(arrayList));
        return arrayList;
    }

    public boolean a(q<?> qVar) {
        return this.d.a(qVar.b()) != null;
    }

    public <X> g<X> b(q<X> qVar) throws NoResultEncoderAvailableException {
        g<X> a2 = this.d.a(qVar.b());
        if (a2 != null) {
            return a2;
        }
        throw new NoResultEncoderAvailableException(qVar.b());
    }

    public <X> com.bumptech.glide.load.a<X> a(X x) throws NoSourceEncoderAvailableException {
        com.bumptech.glide.load.a<X> a2 = this.b.a(x.getClass());
        if (a2 != null) {
            return a2;
        }
        throw new NoSourceEncoderAvailableException(x.getClass());
    }

    public <X> com.bumptech.glide.load.a.c<X> b(X x) {
        return this.e.a(x);
    }

    public <Model> List<n<Model, ?>> c(Model model) {
        List<n<Model, ?>> a2 = this.a.a(model);
        if (!a2.isEmpty()) {
            return a2;
        }
        throw new NoModelLoaderAvailableException(model);
    }

    public List<ImageHeaderParser> a() {
        List<ImageHeaderParser> a2 = this.g.a();
        if (!a2.isEmpty()) {
            return a2;
        }
        throw new NoImageHeaderParserException();
    }
}
