package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.gifdecoder.GifDecoder.a;
import com.bumptech.glide.load.engine.a.e;

/* compiled from: GifBitmapProvider */
public final class b implements a {
    private final e a;
    @Nullable
    private final com.bumptech.glide.load.engine.a.b b;

    public b(e eVar, com.bumptech.glide.load.engine.a.b bVar) {
        this.a = eVar;
        this.b = bVar;
    }

    @NonNull
    public Bitmap a(int i, int i2, Config config) {
        return this.a.b(i, i2, config);
    }

    public void a(Bitmap bitmap) {
        this.a.a(bitmap);
    }

    public byte[] a(int i) {
        if (this.b == null) {
            return new byte[i];
        }
        return (byte[]) this.b.a(i, byte[].class);
    }

    public void a(byte[] bArr) {
        if (this.b != null) {
            this.b.a(bArr, byte[].class);
        }
    }

    public int[] b(int i) {
        if (this.b == null) {
            return new int[i];
        }
        return (int[]) this.b.a(i, int[].class);
    }

    public void a(int[] iArr) {
        if (this.b != null) {
            this.b.a(iArr, int[].class);
        }
    }
}
