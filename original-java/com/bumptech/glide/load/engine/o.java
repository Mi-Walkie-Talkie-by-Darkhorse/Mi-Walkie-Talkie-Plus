package com.bumptech.glide.load.engine;

import android.support.v4.util.Pools.Pool;
import com.bumptech.glide.load.a.c;
import com.bumptech.glide.load.e;
import com.bumptech.glide.util.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: LoadPath */
public class o<Data, ResourceType, Transcode> {
    private final Class<Data> a;
    private final Pool<List<Exception>> b;
    private final List<? extends f<Data, ResourceType, Transcode>> c;
    private final String d;

    public o(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<f<Data, ResourceType, Transcode>> list, Pool<List<Exception>> pool) {
        this.a = cls;
        this.b = pool;
        this.c = (List) h.a(list);
        this.d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public q<Transcode> a(c<Data> cVar, e eVar, int i, int i2, a<ResourceType> aVar) throws GlideException {
        List list = (List) this.b.acquire();
        try {
            return a(cVar, eVar, i, i2, aVar, list);
        } finally {
            this.b.release(list);
        }
    }

    private q<Transcode> a(c<Data> cVar, e eVar, int i, int i2, a<ResourceType> aVar, List<Exception> list) throws GlideException {
        q<Transcode> qVar;
        int size = this.c.size();
        q<Transcode> qVar2 = null;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                qVar = qVar2;
                break;
            }
            try {
                qVar = ((f) this.c.get(i3)).a(cVar, i, i2, eVar, aVar);
            } catch (GlideException e) {
                list.add(e);
                qVar = qVar2;
            }
            if (qVar != null) {
                break;
            }
            i3++;
            qVar2 = qVar;
        }
        if (qVar != null) {
            return qVar;
        }
        throw new GlideException(this.d, (List<Exception>) new ArrayList<Exception>(list));
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.c.toArray(new f[this.c.size()])) + '}';
    }
}
