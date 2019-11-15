package com.bumptech.glide.manager;

import com.bumptech.glide.request.a;
import com.bumptech.glide.util.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: RequestTracker */
public class m {
    private final Set<a> a = Collections.newSetFromMap(new WeakHashMap());
    private final List<a> b = new ArrayList();
    private boolean c;

    public void a(a aVar) {
        this.a.add(aVar);
        if (!this.c) {
            aVar.a();
        } else {
            this.b.add(aVar);
        }
    }

    public boolean b(a aVar) {
        boolean z = false;
        if (aVar != null) {
            boolean remove = this.a.remove(aVar);
            if (this.b.remove(aVar) || remove) {
                z = true;
            }
            if (z) {
                aVar.c();
                aVar.i();
            }
        }
        return z;
    }

    public void a() {
        this.c = true;
        for (a aVar : i.a((Collection<T>) this.a)) {
            if (aVar.e()) {
                aVar.b();
                this.b.add(aVar);
            }
        }
    }

    public void b() {
        this.c = false;
        for (a aVar : i.a((Collection<T>) this.a)) {
            if (!aVar.f() && !aVar.h() && !aVar.e()) {
                aVar.a();
            }
        }
        this.b.clear();
    }

    public void c() {
        for (a b2 : i.a((Collection<T>) this.a)) {
            b(b2);
        }
        this.b.clear();
    }

    public void d() {
        for (a aVar : i.a((Collection<T>) this.a)) {
            if (!aVar.f() && !aVar.h()) {
                aVar.b();
                if (!this.c) {
                    aVar.a();
                } else {
                    this.b.add(aVar);
                }
            }
        }
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.a.size() + ", isPaused=" + this.c + "}";
    }
}
