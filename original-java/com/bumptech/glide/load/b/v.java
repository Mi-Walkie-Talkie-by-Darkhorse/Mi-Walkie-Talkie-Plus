package com.bumptech.glide.load.b;

import android.support.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.e;

/* compiled from: UnitModelLoader */
public class v<Model> implements n<Model, Model> {

    /* compiled from: UnitModelLoader */
    public static class a<Model> implements o<Model, Model> {
        public n<Model, Model> a(r rVar) {
            return new v();
        }
    }

    /* compiled from: UnitModelLoader */
    private static class b<Model> implements com.bumptech.glide.load.a.b<Model> {
        private final Model a;

        public b(Model model) {
            this.a = model;
        }

        public void a(Priority priority, com.bumptech.glide.load.a.b.a<? super Model> aVar) {
            aVar.a(this.a);
        }

        public void a() {
        }

        public void b() {
        }

        @NonNull
        public Class<Model> d() {
            return this.a.getClass();
        }

        @NonNull
        public DataSource c() {
            return DataSource.LOCAL;
        }
    }

    public com.bumptech.glide.load.b.n.a<Model> a(Model model, int i, int i2, e eVar) {
        return new com.bumptech.glide.load.b.n.a<>(new com.bumptech.glide.d.b(model), new b(model));
    }

    public boolean a(Model model) {
        return true;
    }
}
