package com.bumptech.glide.load.a;

import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: InputStreamRewinder */
public final class i implements c<InputStream> {
    private final RecyclableBufferedInputStream a;

    /* compiled from: InputStreamRewinder */
    public static final class a implements com.bumptech.glide.load.a.c.a<InputStream> {
        private final b a;

        public a(b bVar) {
            this.a = bVar;
        }

        public c<InputStream> a(InputStream inputStream) {
            return new i(inputStream, this.a);
        }

        public Class<InputStream> a() {
            return InputStream.class;
        }
    }

    i(InputStream inputStream, b bVar) {
        this.a = new RecyclableBufferedInputStream(inputStream, bVar);
        this.a.mark(5242880);
    }

    /* renamed from: c */
    public InputStream a() throws IOException {
        this.a.reset();
        return this.a;
    }

    public void b() {
        this.a.b();
    }
}
