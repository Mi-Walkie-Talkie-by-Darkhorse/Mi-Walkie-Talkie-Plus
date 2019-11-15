package com.bumptech.glide.load.engine.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.NonNull;

/* compiled from: BitmapPoolAdapter */
public class f implements e {
    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }

    @NonNull
    public Bitmap a(int i, int i2, Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @NonNull
    public Bitmap b(int i, int i2, Config config) {
        return a(i, i2, config);
    }

    public void a() {
    }

    public void a(int i) {
    }
}
