package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.g;
import java.io.File;

/* compiled from: BitmapDrawableEncoder */
public class b implements g<BitmapDrawable> {
    private final e a;
    private final g<Bitmap> b;

    public b(e eVar, g<Bitmap> gVar) {
        this.a = eVar;
        this.b = gVar;
    }

    public boolean a(q<BitmapDrawable> qVar, File file, com.bumptech.glide.load.e eVar) {
        return this.b.a(new e(((BitmapDrawable) qVar.c()).getBitmap(), this.a), file, eVar);
    }

    public EncodeStrategy a(com.bumptech.glide.load.e eVar) {
        return this.b.a(eVar);
    }
}
