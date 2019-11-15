package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.h;
import java.security.MessageDigest;

/* compiled from: BitmapDrawableTransformation */
public class c implements h<BitmapDrawable> {
    private final h<Bitmap> b;

    public c(h<Bitmap> hVar) {
        this.b = (h) com.bumptech.glide.util.h.a(hVar);
    }

    public q<BitmapDrawable> a(Context context, q<BitmapDrawable> qVar, int i, int i2) {
        e a = e.a(((BitmapDrawable) qVar.c()).getBitmap(), com.bumptech.glide.c.a(context).a());
        q a2 = this.b.a(context, a, i, i2);
        return a2.equals(a) ? qVar : n.a(context, (Bitmap) a2.c());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        return this.b.equals(((c) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public void a(MessageDigest messageDigest) {
        this.b.a(messageDigest);
    }
}
