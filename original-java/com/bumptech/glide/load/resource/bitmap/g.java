package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.f;
import com.bumptech.glide.util.a;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapDecoder */
public class g implements f<ByteBuffer, Bitmap> {
    private final k a;

    public g(k kVar) {
        this.a = kVar;
    }

    public boolean a(ByteBuffer byteBuffer, e eVar) throws IOException {
        return this.a.a(byteBuffer);
    }

    public q<Bitmap> a(ByteBuffer byteBuffer, int i, int i2, e eVar) throws IOException {
        return this.a.a(a.b(byteBuffer), i, i2, eVar);
    }
}
