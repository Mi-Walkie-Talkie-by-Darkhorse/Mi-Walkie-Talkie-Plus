package com.bumptech.glide.manager;

import com.bumptech.glide.request.a.h;
import com.bumptech.glide.util.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: TargetTracker */
public final class n implements i {
    private final Set<h<?>> a = Collections.newSetFromMap(new WeakHashMap());

    public void a(h<?> hVar) {
        this.a.add(hVar);
    }

    public void b(h<?> hVar) {
        this.a.remove(hVar);
    }

    public void c() {
        for (h c : i.a((Collection<T>) this.a)) {
            c.c();
        }
    }

    public void d() {
        for (h d : i.a((Collection<T>) this.a)) {
            d.d();
        }
    }

    public void e() {
        for (h e : i.a((Collection<T>) this.a)) {
            e.e();
        }
    }

    public List<h<?>> a() {
        return new ArrayList(this.a);
    }

    public void b() {
        this.a.clear();
    }
}
