package com.bumptech.glide.load.resource.d;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.c;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.resource.bitmap.e;
import java.security.MessageDigest;

/* compiled from: GifDrawableTransformation */
public class f implements h<c> {
    private final h<Bitmap> b;

    public f(h<Bitmap> hVar) {
        this.b = (h) com.bumptech.glide.util.h.a(hVar);
    }

    public q<c> a(Context context, q<c> qVar, int i, int i2) {
        c cVar = (c) qVar.c();
        e eVar = new e(cVar.b(), c.a(context).a());
        q a = this.b.a(context, eVar, i, i2);
        if (!eVar.equals(a)) {
            eVar.e();
        }
        cVar.a(this.b, (Bitmap) a.c());
        return qVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        return this.b.equals(((f) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public void a(MessageDigest messageDigest) {
        this.b.a(messageDigest);
    }
}
