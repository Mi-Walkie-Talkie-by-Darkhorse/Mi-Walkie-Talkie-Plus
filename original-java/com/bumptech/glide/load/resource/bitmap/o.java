package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.f;
import com.bumptech.glide.util.c;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamBitmapDecoder */
public class o implements f<InputStream, Bitmap> {
    private final k a;
    private final b b;

    /* compiled from: StreamBitmapDecoder */
    static class a implements com.bumptech.glide.load.resource.bitmap.k.a {
        private final RecyclableBufferedInputStream a;
        private final c b;

        public a(RecyclableBufferedInputStream recyclableBufferedInputStream, c cVar) {
            this.a = recyclableBufferedInputStream;
            this.b = cVar;
        }

        public void a() {
            this.a.a();
        }

        public void a(e eVar, Bitmap bitmap) throws IOException {
            IOException a2 = this.b.a();
            if (a2 != null) {
                if (bitmap != null) {
                    eVar.a(bitmap);
                }
                throw a2;
            }
        }
    }

    public o(k kVar, b bVar) {
        this.a = kVar;
        this.b = bVar;
    }

    public boolean a(InputStream inputStream, com.bumptech.glide.load.e eVar) throws IOException {
        return this.a.a(inputStream);
    }

    public q<Bitmap> a(InputStream inputStream, int i, int i2, com.bumptech.glide.load.e eVar) throws IOException {
        boolean z;
        RecyclableBufferedInputStream recyclableBufferedInputStream;
        if (inputStream instanceof RecyclableBufferedInputStream) {
            recyclableBufferedInputStream = (RecyclableBufferedInputStream) inputStream;
            z = false;
        } else {
            z = true;
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, this.b);
        }
        c a2 = c.a(recyclableBufferedInputStream);
        try {
            return this.a.a((InputStream) new com.bumptech.glide.util.f(a2), i, i2, eVar, (com.bumptech.glide.load.resource.bitmap.k.a) new a(recyclableBufferedInputStream, a2));
        } finally {
            a2.b();
            if (z) {
                recyclableBufferedInputStream.b();
            }
        }
    }
}
