package com.bumptech.glide.load.engine.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.NonNull;

/* compiled from: BitmapPool */
public interface e {
    @NonNull
    Bitmap a(int i, int i2, Config config);

    void a();

    void a(int i);

    void a(Bitmap bitmap);

    @NonNull
    Bitmap b(int i, int i2, Config config);
}
