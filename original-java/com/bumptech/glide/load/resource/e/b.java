package com.bumptech.glide.load.resource.e;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.resource.bitmap.n;
import com.bumptech.glide.util.h;

/* compiled from: BitmapDrawableTranscoder */
public class b implements d<Bitmap, BitmapDrawable> {
    private final Resources a;
    private final e b;

    public b(Resources resources, e eVar) {
        this.a = (Resources) h.a(resources);
        this.b = (e) h.a(eVar);
    }

    public q<BitmapDrawable> a(q<Bitmap> qVar, com.bumptech.glide.load.e eVar) {
        return n.a(this.a, this.b, (Bitmap) qVar.c());
    }
}
