package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.c;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.h;
import com.bumptech.glide.util.i;

/* compiled from: BitmapTransformation */
public abstract class f implements h<Bitmap> {
    /* access modifiers changed from: protected */
    public abstract Bitmap a(@NonNull e eVar, @NonNull Bitmap bitmap, int i, int i2);

    public final q<Bitmap> a(Context context, q<Bitmap> qVar, int i, int i2) {
        if (!i.a(i, i2)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        e a = c.a(context).a();
        Bitmap bitmap = (Bitmap) qVar.c();
        if (i == Integer.MIN_VALUE) {
            i = bitmap.getWidth();
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = bitmap.getHeight();
        }
        Bitmap a2 = a(a, bitmap, i, i2);
        if (bitmap.equals(a2)) {
            return qVar;
        }
        return e.a(a2, a);
    }
}
