package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.b.a;
import com.bumptech.glide.load.b.n;
import com.bumptech.glide.load.c;
import java.io.File;
import java.util.List;

/* compiled from: ResourceCacheGenerator */
class r implements a<Object>, d {
    private final d.a a;
    private final e<?> b;
    private int c = 0;
    private int d = -1;
    private c e;
    private List<n<File, ?>> f;
    private int g;
    private volatile n.a<?> h;
    private File i;
    private s j;

    public r(e<?> eVar, d.a aVar) {
        this.b = eVar;
        this.a = aVar;
    }

    public boolean a() {
        boolean z;
        List l = this.b.l();
        if (l.isEmpty()) {
            return false;
        }
        List i2 = this.b.i();
        while (true) {
            if (this.f == null || !c()) {
                this.d++;
                if (this.d >= i2.size()) {
                    this.c++;
                    if (this.c >= l.size()) {
                        return false;
                    }
                    this.d = 0;
                }
                c cVar = (c) l.get(this.c);
                Class cls = (Class) i2.get(this.d);
                this.j = new s(cVar, this.b.f(), this.b.g(), this.b.h(), this.b.c(cls), cls, this.b.e());
                this.i = this.b.b().a(this.j);
                if (this.i != null) {
                    this.e = cVar;
                    this.f = this.b.a(this.i);
                    this.g = 0;
                }
            } else {
                this.h = null;
                boolean z2 = false;
                while (!z2 && c()) {
                    List<n<File, ?>> list = this.f;
                    int i3 = this.g;
                    this.g = i3 + 1;
                    this.h = ((n) list.get(i3)).a(this.i, this.b.g(), this.b.h(), this.b.e());
                    if (this.h == null || !this.b.a(this.h.c.d())) {
                        z = z2;
                    } else {
                        z = true;
                        this.h.c.a(this.b.d(), this);
                    }
                    z2 = z;
                }
                return z2;
            }
        }
    }

    private boolean c() {
        return this.g < this.f.size();
    }

    public void b() {
        n.a<?> aVar = this.h;
        if (aVar != null) {
            aVar.c.b();
        }
    }

    public void a(Object obj) {
        this.a.a(this.e, obj, this.h.c, DataSource.RESOURCE_DISK_CACHE, this.j);
    }

    public void a(Exception exc) {
        this.a.a(this.j, exc, this.h.c, DataSource.RESOURCE_DISK_CACHE);
    }
}
