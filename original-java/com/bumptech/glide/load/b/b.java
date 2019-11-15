package com.bumptech.glide.load.b;

import android.support.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.e;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: ByteArrayLoader */
public class b<Data> implements n<byte[], Data> {
    private final C0014b<Data> a;

    /* compiled from: ByteArrayLoader */
    public static class a implements o<byte[], ByteBuffer> {
        public n<byte[], ByteBuffer> a(r rVar) {
            return new b(new C0014b<ByteBuffer>() {
                /* renamed from: a */
                public ByteBuffer b(byte[] bArr) {
                    return ByteBuffer.wrap(bArr);
                }

                public Class<ByteBuffer> a() {
                    return ByteBuffer.class;
                }
            });
        }
    }

    /* renamed from: com.bumptech.glide.load.b.b$b reason: collision with other inner class name */
    /* compiled from: ByteArrayLoader */
    public interface C0014b<Data> {
        Class<Data> a();

        Data b(byte[] bArr);
    }

    /* compiled from: ByteArrayLoader */
    private static class c<Data> implements com.bumptech.glide.load.a.b<Data> {
        private final byte[] a;
        private final C0014b<Data> b;

        public c(byte[] bArr, C0014b<Data> bVar) {
            this.a = bArr;
            this.b = bVar;
        }

        public void a(Priority priority, com.bumptech.glide.load.a.b.a<? super Data> aVar) {
            aVar.a(this.b.b(this.a));
        }

        public void a() {
        }

        public void b() {
        }

        @NonNull
        public Class<Data> d() {
            return this.b.a();
        }

        @NonNull
        public DataSource c() {
            return DataSource.LOCAL;
        }
    }

    /* compiled from: ByteArrayLoader */
    public static class d implements o<byte[], InputStream> {
        public n<byte[], InputStream> a(r rVar) {
            return new b(new C0014b<InputStream>() {
                /* renamed from: a */
                public InputStream b(byte[] bArr) {
                    return new ByteArrayInputStream(bArr);
                }

                public Class<InputStream> a() {
                    return InputStream.class;
                }
            });
        }
    }

    public b(C0014b<Data> bVar) {
        this.a = bVar;
    }

    public com.bumptech.glide.load.b.n.a<Data> a(byte[] bArr, int i, int i2, e eVar) {
        return new com.bumptech.glide.load.b.n.a<>(com.bumptech.glide.d.a.a(), new c(bArr, this.a));
    }

    public boolean a(byte[] bArr) {
        return true;
    }
}
