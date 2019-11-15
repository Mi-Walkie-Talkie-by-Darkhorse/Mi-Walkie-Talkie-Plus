package com.bumptech.glide.load;

import android.support.annotation.Nullable;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: ImageHeaderParserUtils */
public final class b {
    public static ImageType a(List<ImageHeaderParser> list, @Nullable InputStream inputStream, com.bumptech.glide.load.engine.a.b bVar) throws IOException {
        if (inputStream == null) {
            return ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, bVar);
        }
        inputStream.mark(5242880);
        for (ImageHeaderParser a : list) {
            try {
                ImageType a2 = a.a(inputStream);
                if (a2 != ImageType.UNKNOWN) {
                    inputStream.reset();
                    return a2;
                }
            } finally {
                inputStream.reset();
            }
        }
        return ImageType.UNKNOWN;
    }

    public static ImageType a(List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageType.UNKNOWN;
        }
        for (ImageHeaderParser a : list) {
            ImageType a2 = a.a(byteBuffer);
            if (a2 != ImageType.UNKNOWN) {
                return a2;
            }
        }
        return ImageType.UNKNOWN;
    }

    public static int b(List<ImageHeaderParser> list, @Nullable InputStream inputStream, com.bumptech.glide.load.engine.a.b bVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, bVar);
        }
        inputStream.mark(5242880);
        for (ImageHeaderParser a : list) {
            try {
                int a2 = a.a(inputStream, bVar);
                if (a2 != -1) {
                    inputStream.reset();
                    return a2;
                }
            } finally {
                inputStream.reset();
            }
        }
        return -1;
    }
}
