package com.bumptech.glide.manager;

import com.bumptech.glide.util.i;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: ActivityFragmentLifecycle */
class a implements h {
    private final Set<i> a = Collections.newSetFromMap(new WeakHashMap());
    private boolean b;
    private boolean c;

    a() {
    }

    public void a(i iVar) {
        this.a.add(iVar);
        if (this.c) {
            iVar.e();
        } else if (this.b) {
            iVar.c();
        } else {
            iVar.d();
        }
    }

    public void b(i iVar) {
        this.a.remove(iVar);
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        this.b = true;
        for (i c2 : i.a((Collection<T>) this.a)) {
            c2.c();
        }
    }

    /* access modifiers changed from: 0000 */
    public void b() {
        this.b = false;
        for (i d : i.a((Collection<T>) this.a)) {
            d.d();
        }
    }

    /* access modifiers changed from: 0000 */
    public void c() {
        this.c = true;
        for (i e : i.a((Collection<T>) this.a)) {
            e.e();
        }
    }
}
