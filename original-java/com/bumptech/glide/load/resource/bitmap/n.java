package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.c;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.util.h;
import com.bumptech.glide.util.i;

/* compiled from: LazyBitmapDrawableResource */
public class n implements com.bumptech.glide.load.engine.n, q<BitmapDrawable> {
    private final Bitmap a;
    private final Resources b;
    private final e c;

    public static n a(Context context, Bitmap bitmap) {
        return a(context.getResources(), c.a(context).a(), bitmap);
    }

    public static n a(Resources resources, e eVar, Bitmap bitmap) {
        return new n(resources, eVar, bitmap);
    }

    n(Resources resources, e eVar, Bitmap bitmap) {
        this.b = (Resources) h.a(resources);
        this.c = (e) h.a(eVar);
        this.a = (Bitmap) h.a(bitmap);
    }

    public Class<BitmapDrawable> b() {
        return BitmapDrawable.class;
    }

    /* renamed from: f */
    public BitmapDrawable c() {
        return new BitmapDrawable(this.b, this.a);
    }

    public int d() {
        return i.a(this.a);
    }

    public void e() {
        this.c.a(this.a);
    }

    public void a() {
        this.a.prepareToDraw();
    }
}
