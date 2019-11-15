package com.bumptech.glide.load.b.a;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.a.a.b;
import com.bumptech.glide.load.b.n;
import com.bumptech.glide.load.b.o;
import com.bumptech.glide.load.b.r;
import com.bumptech.glide.load.e;
import java.io.InputStream;

/* compiled from: MediaStoreImageThumbLoader */
public class c implements n<Uri, InputStream> {
    public final Context a;

    /* compiled from: MediaStoreImageThumbLoader */
    public static class a implements o<Uri, InputStream> {
        private final Context a;

        public a(Context context) {
            this.a = context;
        }

        public n<Uri, InputStream> a(r rVar) {
            return new c(this.a);
        }
    }

    public c(Context context) {
        this.a = context.getApplicationContext();
    }

    public com.bumptech.glide.load.b.n.a<InputStream> a(Uri uri, int i, int i2, e eVar) {
        if (b.a(i, i2)) {
            return new com.bumptech.glide.load.b.n.a<>(new com.bumptech.glide.d.b(uri), com.bumptech.glide.load.a.a.c.a(this.a, uri));
        }
        return null;
    }

    public boolean a(Uri uri) {
        return b.c(uri);
    }
}
