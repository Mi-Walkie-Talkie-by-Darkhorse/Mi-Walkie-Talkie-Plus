package com.bumptech.glide.load.b;

import android.net.Uri;
import com.bumptech.glide.load.e;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.HttpHost;

/* compiled from: UrlUriLoader */
public class x<Data> implements n<Uri, Data> {
    private static final Set<String> a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{HttpHost.DEFAULT_SCHEME_NAME, "https"})));
    private final n<g, Data> b;

    /* compiled from: UrlUriLoader */
    public static class a implements o<Uri, InputStream> {
        public n<Uri, InputStream> a(r rVar) {
            return new x(rVar.a(g.class, InputStream.class));
        }
    }

    public x(n<g, Data> nVar) {
        this.b = nVar;
    }

    public com.bumptech.glide.load.b.n.a<Data> a(Uri uri, int i, int i2, e eVar) {
        return this.b.a(new g(uri.toString()), i, i2, eVar);
    }

    public boolean a(Uri uri) {
        return a.contains(uri.getScheme());
    }
}
