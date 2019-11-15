package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

public interface GifDecoder {

    @Retention(RetentionPolicy.SOURCE)
    public @interface GifDecodeStatus {
    }

    public interface a {
        @NonNull
        Bitmap a(int i, int i2, Config config);

        void a(Bitmap bitmap);

        void a(byte[] bArr);

        void a(int[] iArr);

        byte[] a(int i);

        int[] b(int i);
    }

    ByteBuffer a();

    void b();

    int c();

    int d();

    int e();

    void f();

    int g();

    Bitmap h();

    void i();
}
