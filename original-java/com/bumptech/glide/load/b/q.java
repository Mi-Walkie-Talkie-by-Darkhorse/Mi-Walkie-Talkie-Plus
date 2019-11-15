package com.bumptech.glide.load.b;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Pools.Pool;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.b;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.util.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: MultiModelLoader */
class q<Model, Data> implements n<Model, Data> {
    private final List<n<Model, Data>> a;
    private final Pool<List<Exception>> b;

    /* compiled from: MultiModelLoader */
    static class a<Data> implements b<Data>, com.bumptech.glide.load.a.b.a<Data> {
        private final List<b<Data>> a;
        private final Pool<List<Exception>> b;
        private int c = 0;
        private Priority d;
        private com.bumptech.glide.load.a.b.a<? super Data> e;
        @Nullable
        private List<Exception> f;

        a(List<b<Data>> list, Pool<List<Exception>> pool) {
            this.b = pool;
            h.a(list);
            this.a = list;
        }

        public void a(Priority priority, com.bumptech.glide.load.a.b.a<? super Data> aVar) {
            this.d = priority;
            this.e = aVar;
            this.f = (List) this.b.acquire();
            ((b) this.a.get(this.c)).a(priority, this);
        }

        public void a() {
            if (this.f != null) {
                this.b.release(this.f);
            }
            this.f = null;
            for (b a2 : this.a) {
                a2.a();
            }
        }

        public void b() {
            for (b b2 : this.a) {
                b2.b();
            }
        }

        @NonNull
        public Class<Data> d() {
            return ((b) this.a.get(0)).d();
        }

        @NonNull
        public DataSource c() {
            return ((b) this.a.get(0)).c();
        }

        public void a(Data data) {
            if (data != null) {
                this.e.a(data);
            } else {
                e();
            }
        }

        public void a(Exception exc) {
            this.f.add(exc);
            e();
        }

        private void e() {
            if (this.c < this.a.size() - 1) {
                this.c++;
                a(this.d, this.e);
                return;
            }
            this.e.a((Exception) new GlideException("Fetch failed", (List<Exception>) new ArrayList<Exception>(this.f)));
        }
    }

    q(List<n<Model, Data>> list, Pool<List<Exception>> pool) {
        this.a = list;
        this.b = pool;
    }

    public com.bumptech.glide.load.b.n.a<Data> a(Model model, int i, int i2, e eVar) {
        c cVar;
        int size = this.a.size();
        ArrayList arrayList = new ArrayList(size);
        int i3 = 0;
        c cVar2 = null;
        while (i3 < size) {
            n nVar = (n) this.a.get(i3);
            if (nVar.a(model)) {
                com.bumptech.glide.load.b.n.a a2 = nVar.a(model, i, i2, eVar);
                if (a2 != null) {
                    cVar = a2.a;
                    arrayList.add(a2.c);
                    i3++;
                    cVar2 = cVar;
                }
            }
            cVar = cVar2;
            i3++;
            cVar2 = cVar;
        }
        if (!arrayList.isEmpty()) {
            return new com.bumptech.glide.load.b.n.a<>(cVar2, new a(arrayList, this.b));
        }
        return null;
    }

    public boolean a(Model model) {
        for (n a2 : this.a) {
            if (a2.a(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.a.toArray(new n[this.a.size()])) + '}';
    }
}
