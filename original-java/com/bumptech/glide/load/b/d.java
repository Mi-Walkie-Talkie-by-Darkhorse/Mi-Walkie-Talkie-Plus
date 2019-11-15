package com.bumptech.glide.load.b;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.e;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferFileLoader */
public class d implements n<File, ByteBuffer> {

    /* compiled from: ByteBufferFileLoader */
    private static class a implements com.bumptech.glide.load.a.b<ByteBuffer> {
        private final File a;

        public a(File file) {
            this.a = file;
        }

        public void a(Priority priority, com.bumptech.glide.load.a.b.a<? super ByteBuffer> aVar) {
            try {
                aVar.a(com.bumptech.glide.util.a.a(this.a));
            } catch (IOException e) {
                if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e);
                }
                aVar.a((Exception) e);
            }
        }

        public void a() {
        }

        public void b() {
        }

        @NonNull
        public Class<ByteBuffer> d() {
            return ByteBuffer.class;
        }

        @NonNull
        public DataSource c() {
            return DataSource.LOCAL;
        }
    }

    /* compiled from: ByteBufferFileLoader */
    public static class b implements o<File, ByteBuffer> {
        public n<File, ByteBuffer> a(r rVar) {
            return new d();
        }
    }

    public com.bumptech.glide.load.b.n.a<ByteBuffer> a(File file, int i, int i2, e eVar) {
        return new com.bumptech.glide.load.b.n.a<>(new com.bumptech.glide.d.b(file), new a(file));
    }

    public boolean a(File file) {
        return true;
    }
}
