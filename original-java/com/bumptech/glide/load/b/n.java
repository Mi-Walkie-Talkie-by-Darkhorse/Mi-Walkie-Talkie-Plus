package com.bumptech.glide.load.b;

import android.support.annotation.Nullable;
import com.bumptech.glide.load.a.b;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.e;
import com.bumptech.glide.util.h;
import java.util.Collections;
import java.util.List;

/* compiled from: ModelLoader */
public interface n<Model, Data> {

    /* compiled from: ModelLoader */
    public static class a<Data> {
        public final c a;
        public final List<c> b;
        public final b<Data> c;

        public a(c cVar, b<Data> bVar) {
            this(cVar, Collections.emptyList(), bVar);
        }

        public a(c cVar, List<c> list, b<Data> bVar) {
            this.a = (c) h.a(cVar);
            this.b = (List) h.a(list);
            this.c = (b) h.a(bVar);
        }
    }

    @Nullable
    a<Data> a(Model model, int i, int i2, e eVar);

    boolean a(Model model);
}
