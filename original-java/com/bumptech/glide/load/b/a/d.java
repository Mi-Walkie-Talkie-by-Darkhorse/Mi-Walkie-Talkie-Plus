package com.bumptech.glide.load.b.a;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.a.a.b;
import com.bumptech.glide.load.a.a.c;
import com.bumptech.glide.load.b.n;
import com.bumptech.glide.load.b.o;
import com.bumptech.glide.load.b.r;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.resource.bitmap.q;
import java.io.InputStream;

/* compiled from: MediaStoreVideoThumbLoader */
public class d implements n<Uri, InputStream> {
    private final Context a;

    /* compiled from: MediaStoreVideoThumbLoader */
    public static class a implements o<Uri, InputStream> {
        private final Context a;

        public a(Context context) {
            this.a = context;
        }

        public n<Uri, InputStream> a(r rVar) {
            return new d(this.a);
        }
    }

    d(Context context) {
        this.a = context.getApplicationContext();
    }

    @Nullable
    public com.bumptech.glide.load.b.n.a<InputStream> a(Uri uri, int i, int i2, e eVar) {
        if (!b.a(i, i2) || !a(eVar)) {
            return null;
        }
        return new com.bumptech.glide.load.b.n.a<>(new com.bumptech.glide.d.b(uri), c.b(this.a, uri));
    }

    private boolean a(e eVar) {
        Long l = (Long) eVar.a(q.a);
        return l != null && l.longValue() == -1;
    }

    public boolean a(Uri uri) {
        return b.b(uri);
    }
}
