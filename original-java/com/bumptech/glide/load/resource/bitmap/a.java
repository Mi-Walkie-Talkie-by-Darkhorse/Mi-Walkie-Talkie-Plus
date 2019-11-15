package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.f;
import com.bumptech.glide.util.h;
import java.io.IOException;

/* compiled from: BitmapDrawableDecoder */
public class a<DataType> implements f<DataType, BitmapDrawable> {
    private final f<DataType, Bitmap> a;
    private final Resources b;
    private final e c;

    public a(Resources resources, e eVar, f<DataType, Bitmap> fVar) {
        this.b = (Resources) h.a(resources);
        this.c = (e) h.a(eVar);
        this.a = (f) h.a(fVar);
    }

    public boolean a(DataType datatype, com.bumptech.glide.load.e eVar) throws IOException {
        return this.a.a(datatype, eVar);
    }

    public q<BitmapDrawable> a(DataType datatype, int i, int i2, com.bumptech.glide.load.e eVar) throws IOException {
        q a2 = this.a.a(datatype, i, i2, eVar);
        if (a2 == null) {
            return null;
        }
        return n.a(this.b, this.c, (Bitmap) a2.c());
    }
}
