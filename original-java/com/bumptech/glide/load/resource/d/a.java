package com.bumptech.glide.load.resource.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.c;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.f;
import com.bumptech.glide.util.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

/* compiled from: ByteBufferGifDecoder */
public class a implements f<ByteBuffer, c> {
    public static final d<Boolean> a = d.a("com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder.DisableAnimation", Boolean.valueOf(false));
    private static final C0019a b = new C0019a();
    private static final b c = new b();
    private final Context d;
    private final List<ImageHeaderParser> e;
    private final b f;
    private final e g;
    private final C0019a h;
    private final b i;

    /* renamed from: com.bumptech.glide.load.resource.d.a$a reason: collision with other inner class name */
    /* compiled from: ByteBufferGifDecoder */
    static class C0019a {
        C0019a() {
        }

        public GifDecoder a(com.bumptech.glide.gifdecoder.GifDecoder.a aVar, com.bumptech.glide.gifdecoder.a aVar2, ByteBuffer byteBuffer, int i) {
            return new c(aVar, aVar2, byteBuffer, i);
        }
    }

    /* compiled from: ByteBufferGifDecoder */
    static class b {
        private final Queue<com.bumptech.glide.gifdecoder.b> a = i.a(0);

        b() {
        }

        public synchronized com.bumptech.glide.gifdecoder.b a(ByteBuffer byteBuffer) {
            com.bumptech.glide.gifdecoder.b bVar;
            bVar = (com.bumptech.glide.gifdecoder.b) this.a.poll();
            if (bVar == null) {
                bVar = new com.bumptech.glide.gifdecoder.b();
            }
            return bVar.a(byteBuffer);
        }

        public synchronized void a(com.bumptech.glide.gifdecoder.b bVar) {
            bVar.a();
            this.a.offer(bVar);
        }
    }

    public a(Context context, List<ImageHeaderParser> list, e eVar, com.bumptech.glide.load.engine.a.b bVar) {
        this(context, list, eVar, bVar, c, b);
    }

    a(Context context, List<ImageHeaderParser> list, e eVar, com.bumptech.glide.load.engine.a.b bVar, b bVar2, C0019a aVar) {
        this.d = context.getApplicationContext();
        this.e = list;
        this.g = eVar;
        this.h = aVar;
        this.i = new b(eVar, bVar);
        this.f = bVar2;
    }

    public boolean a(ByteBuffer byteBuffer, com.bumptech.glide.load.e eVar) throws IOException {
        return !((Boolean) eVar.a(a)).booleanValue() && com.bumptech.glide.load.b.a(this.e, byteBuffer) == ImageType.GIF;
    }

    public e a(ByteBuffer byteBuffer, int i2, int i3, com.bumptech.glide.load.e eVar) {
        com.bumptech.glide.gifdecoder.b a2 = this.f.a(byteBuffer);
        try {
            return a(byteBuffer, i2, i3, a2);
        } finally {
            this.f.a(a2);
        }
    }

    private e a(ByteBuffer byteBuffer, int i2, int i3, com.bumptech.glide.gifdecoder.b bVar) {
        long a2 = com.bumptech.glide.util.d.a();
        com.bumptech.glide.gifdecoder.a b2 = bVar.b();
        if (b2.c() <= 0 || b2.d() != 0) {
            return null;
        }
        GifDecoder a3 = this.h.a(this.i, b2, byteBuffer, a(b2, i2, i3));
        a3.b();
        Bitmap h2 = a3.h();
        if (h2 == null) {
            return null;
        }
        c cVar = new c(this.d, a3, this.g, com.bumptech.glide.load.resource.b.a(), i2, i3, h2);
        if (Log.isLoggable("BufferGifDecoder", 2)) {
            Log.v("BufferGifDecoder", "Decoded GIF from stream in " + com.bumptech.glide.util.d.a(a2));
        }
        return new e(cVar);
    }

    private static int a(com.bumptech.glide.gifdecoder.a aVar, int i2, int i3) {
        int min = Math.min(aVar.a() / i3, aVar.b() / i2);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable("BufferGifDecoder", 2)) {
            Log.v("BufferGifDecoder", "Downsampling GIF, sampleSize: " + max + ", target dimens: [" + i2 + "x" + i3 + "], actual dimens: [" + aVar.b() + "x" + aVar.a() + "]");
        }
        return max;
    }
}
