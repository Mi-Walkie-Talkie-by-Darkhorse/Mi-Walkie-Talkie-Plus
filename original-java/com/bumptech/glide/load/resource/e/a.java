package com.bumptech.glide.load.resource.e;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.resource.a.b;
import java.io.ByteArrayOutputStream;

/* compiled from: BitmapBytesTranscoder */
public class a implements d<Bitmap, byte[]> {
    private final CompressFormat a;
    private final int b;

    public a() {
        this(CompressFormat.JPEG, 100);
    }

    public a(CompressFormat compressFormat, int i) {
        this.a = compressFormat;
        this.b = i;
    }

    public q<byte[]> a(q<Bitmap> qVar, e eVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) qVar.c()).compress(this.a, this.b, byteArrayOutputStream);
        qVar.e();
        return new b(byteArrayOutputStream.toByteArray());
    }
}
