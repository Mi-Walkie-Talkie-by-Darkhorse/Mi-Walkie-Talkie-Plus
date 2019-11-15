package com.bumptech.glide.request.a;

import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.widget.ImageView;

/* compiled from: DrawableImageViewTarget */
public class c extends d<Drawable> {
    public c(ImageView imageView) {
        super(imageView);
    }

    /* access modifiers changed from: protected */
    /* renamed from: d */
    public void a(@Nullable Drawable drawable) {
        ((ImageView) this.a).setImageDrawable(drawable);
    }
}
