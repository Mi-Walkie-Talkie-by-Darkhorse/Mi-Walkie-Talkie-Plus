package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.a.e;
import java.security.MessageDigest;

/* compiled from: CenterCrop */
public class h extends f {
    private static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(a);

    /* access modifiers changed from: protected */
    public Bitmap a(@NonNull e eVar, @NonNull Bitmap bitmap, int i, int i2) {
        return p.a(eVar, bitmap, i, i2);
    }

    public boolean equals(Object obj) {
        return obj instanceof h;
    }

    public int hashCode() {
        return "com.bumptech.glide.load.resource.bitmap.CenterCrop".hashCode();
    }

    public void a(MessageDigest messageDigest) {
        messageDigest.update(b);
    }
}
