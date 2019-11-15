package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.engine.n;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.util.h;
import com.bumptech.glide.util.i;

/* compiled from: BitmapResource */
public class e implements n, q<Bitmap> {
    private final Bitmap a;
    private final com.bumptech.glide.load.engine.a.e b;

    @Nullable
    public static e a(@Nullable Bitmap bitmap, com.bumptech.glide.load.engine.a.e eVar) {
        if (bitmap == null) {
            return null;
        }
        return new e(bitmap, eVar);
    }

    public e(Bitmap bitmap, com.bumptech.glide.load.engine.a.e eVar) {
        this.a = (Bitmap) h.a(bitmap, "Bitmap must not be null");
        this.b = (com.bumptech.glide.load.engine.a.e) h.a(eVar, "BitmapPool must not be null");
    }

    public Class<Bitmap> b() {
        return Bitmap.class;
    }

    /* renamed from: f */
    public Bitmap c() {
        return this.a;
    }

    public int d() {
        return i.a(this.a);
    }

    public void e() {
        this.b.a(this.a);
    }

    public void a() {
        this.a.prepareToDraw();
    }
}
