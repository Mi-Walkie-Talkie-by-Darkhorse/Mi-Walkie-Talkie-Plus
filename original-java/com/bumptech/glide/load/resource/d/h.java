package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.f;

/* compiled from: GifFrameResourceDecoder */
public final class h implements f<GifDecoder, Bitmap> {
    private final e a;

    public h(e eVar) {
        this.a = eVar;
    }

    public boolean a(GifDecoder gifDecoder, com.bumptech.glide.load.e eVar) {
        return true;
    }

    public q<Bitmap> a(GifDecoder gifDecoder, int i, int i2, com.bumptech.glide.load.e eVar) {
        return com.bumptech.glide.load.resource.bitmap.e.a(gifDecoder.h(), this.a);
    }
}
