package com.bumptech.glide.load.engine;

import android.support.v4.util.Pools.Pool;
import android.util.Log;
import com.bumptech.glide.load.a.c;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.resource.e.d;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DecodePath */
public class f<DataType, ResourceType, Transcode> {
    private final Class<DataType> a;
    private final List<? extends com.bumptech.glide.load.f<DataType, ResourceType>> b;
    private final d<ResourceType, Transcode> c;
    private final Pool<List<Exception>> d;
    private final String e;

    /* compiled from: DecodePath */
    interface a<ResourceType> {
        q<ResourceType> a(q<ResourceType> qVar);
    }

    public f(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends com.bumptech.glide.load.f<DataType, ResourceType>> list, d<ResourceType, Transcode> dVar, Pool<List<Exception>> pool) {
        this.a = cls;
        this.b = list;
        this.c = dVar;
        this.d = pool;
        this.e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public q<Transcode> a(c<DataType> cVar, int i, int i2, e eVar, a<ResourceType> aVar) throws GlideException {
        return this.c.a(aVar.a(a(cVar, i, i2, eVar)), eVar);
    }

    private q<ResourceType> a(c<DataType> cVar, int i, int i2, e eVar) throws GlideException {
        List list = (List) this.d.acquire();
        try {
            return a(cVar, i, i2, eVar, list);
        } finally {
            this.d.release(list);
        }
    }

    private q<ResourceType> a(c<DataType> cVar, int i, int i2, e eVar, List<Exception> list) throws GlideException {
        q<ResourceType> qVar;
        q<ResourceType> qVar2 = null;
        int size = this.b.size();
        for (int i3 = 0; i3 < size; i3++) {
            com.bumptech.glide.load.f fVar = (com.bumptech.glide.load.f) this.b.get(i3);
            try {
                if (fVar.a(cVar.a(), eVar)) {
                    qVar = fVar.a(cVar.a(), i, i2, eVar);
                } else {
                    qVar = qVar2;
                }
                qVar2 = qVar;
            } catch (IOException | RuntimeException e2) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + fVar, e2);
                }
                list.add(e2);
            }
            if (qVar2 != null) {
                break;
            }
        }
        if (qVar2 != null) {
            return qVar2;
        }
        throw new GlideException(this.e, (List<Exception>) new ArrayList<Exception>(list));
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.a + ", decoders=" + this.b + ", transcoder=" + this.c + '}';
    }
}
