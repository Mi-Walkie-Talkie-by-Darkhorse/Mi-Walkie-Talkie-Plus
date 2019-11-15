package com.bumptech.glide.load.resource.d;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.f;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: StreamGifDecoder */
public class i implements f<InputStream, c> {
    public static final d<Boolean> a = d.a("com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder.DisableAnimation", Boolean.valueOf(false));
    private final List<ImageHeaderParser> b;
    private final f<ByteBuffer, c> c;
    private final b d;

    public i(List<ImageHeaderParser> list, f<ByteBuffer, c> fVar, b bVar) {
        this.b = list;
        this.c = fVar;
        this.d = bVar;
    }

    public boolean a(InputStream inputStream, e eVar) throws IOException {
        return !((Boolean) eVar.a(a)).booleanValue() && com.bumptech.glide.load.b.a(this.b, inputStream, this.d) == ImageType.GIF;
    }

    public q<c> a(InputStream inputStream, int i, int i2, e eVar) throws IOException {
        byte[] a2 = a(inputStream);
        if (a2 == null) {
            return null;
        }
        return this.c.a(ByteBuffer.wrap(a2), i, i2, eVar);
    }

    private static byte[] a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e);
            }
            return null;
        }
    }
}
