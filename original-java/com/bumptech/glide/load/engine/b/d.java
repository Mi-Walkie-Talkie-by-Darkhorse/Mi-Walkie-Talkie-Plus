package com.bumptech.glide.load.engine.b;

import com.bumptech.glide.load.engine.b.a.C0016a;
import java.io.File;

/* compiled from: DiskLruCacheFactory */
public class d implements C0016a {
    private final int a;
    private final a b;

    /* compiled from: DiskLruCacheFactory */
    public interface a {
        File a();
    }

    public d(a aVar, int i) {
        this.a = i;
        this.b = aVar;
    }

    public a a() {
        File a2 = this.b.a();
        if (a2 == null) {
            return null;
        }
        if (a2.mkdirs() || (a2.exists() && a2.isDirectory())) {
            return e.a(a2, this.a);
        }
        return null;
    }
}
