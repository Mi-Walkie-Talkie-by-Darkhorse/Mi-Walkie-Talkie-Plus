package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.a.e;
import java.security.MessageDigest;

/* compiled from: CenterInside */
public class i extends f {
    private static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(a);

    /* access modifiers changed from: protected */
    public Bitmap a(@NonNull e eVar, @NonNull Bitmap bitmap, int i, int i2) {
        return p.c(eVar, bitmap, i, i2);
    }

    public boolean equals(Object obj) {
        return obj instanceof i;
    }

    public int hashCode() {
        return "com.bumptech.glide.load.resource.bitmap.CenterInside".hashCode();
    }

    public void a(MessageDigest messageDigest) {
        messageDigest.update(b);
    }
}
