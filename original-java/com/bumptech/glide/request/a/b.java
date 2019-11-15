package com.bumptech.glide.request.a;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* compiled from: BitmapImageViewTarget */
public class b extends d<Bitmap> {
    public b(ImageView imageView) {
        super(imageView);
    }

    /* access modifiers changed from: protected */
    public void a(Bitmap bitmap) {
        ((ImageView) this.a).setImageBitmap(bitmap);
    }
}
