package com.bumptech.glide.load.b.a;

import com.bumptech.glide.load.b.g;
import com.bumptech.glide.load.b.n;
import com.bumptech.glide.load.b.o;
import com.bumptech.glide.load.b.r;
import java.io.InputStream;
import java.net.URL;

/* compiled from: UrlLoader */
public class e implements n<URL, InputStream> {
    private final n<g, InputStream> a;

    /* compiled from: UrlLoader */
    public static class a implements o<URL, InputStream> {
        public n<URL, InputStream> a(r rVar) {
            return new e(rVar.a(g.class, InputStream.class));
        }
    }

    public e(n<g, InputStream> nVar) {
        this.a = nVar;
    }

    public com.bumptech.glide.load.b.n.a<InputStream> a(URL url, int i, int i2, com.bumptech.glide.load.e eVar) {
        return this.a.a(new g(url), i, i2, eVar);
    }

    public boolean a(URL url) {
        return true;
    }
}
