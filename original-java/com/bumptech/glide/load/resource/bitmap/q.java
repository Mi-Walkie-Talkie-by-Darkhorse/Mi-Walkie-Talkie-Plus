package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.f;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: VideoBitmapDecoder */
public class q implements f<ParcelFileDescriptor, Bitmap> {
    public static final d<Long> a = d.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", Long.valueOf(-1), new com.bumptech.glide.load.d.a<Long>() {
        private final ByteBuffer a = ByteBuffer.allocate(8);

        public void a(byte[] bArr, Long l, MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.a) {
                this.a.position(0);
                messageDigest.update(this.a.putLong(l.longValue()).array());
            }
        }
    });
    public static final d<Integer> b = d.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", null, new com.bumptech.glide.load.d.a<Integer>() {
        private final ByteBuffer a = ByteBuffer.allocate(4);

        public void a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            if (num != null) {
                messageDigest.update(bArr);
                synchronized (this.a) {
                    this.a.position(0);
                    messageDigest.update(this.a.putInt(num.intValue()).array());
                }
            }
        }
    });
    private static final a c = new a();
    private final e d;
    private final a e;

    /* compiled from: VideoBitmapDecoder */
    static class a {
        a() {
        }

        public MediaMetadataRetriever a() {
            return new MediaMetadataRetriever();
        }
    }

    public q(e eVar) {
        this(eVar, c);
    }

    q(e eVar, a aVar) {
        this.d = eVar;
        this.e = aVar;
    }

    public boolean a(ParcelFileDescriptor parcelFileDescriptor, com.bumptech.glide.load.e eVar) {
        return true;
    }

    public com.bumptech.glide.load.engine.q<Bitmap> a(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, com.bumptech.glide.load.e eVar) throws IOException {
        Bitmap frameAtTime;
        long longValue = ((Long) eVar.a(a)).longValue();
        if (longValue >= 0 || longValue == -1) {
            Integer num = (Integer) eVar.a(b);
            MediaMetadataRetriever a2 = this.e.a();
            try {
                a2.setDataSource(parcelFileDescriptor.getFileDescriptor());
                if (longValue == -1) {
                    frameAtTime = a2.getFrameAtTime();
                } else if (num == null) {
                    frameAtTime = a2.getFrameAtTime(longValue);
                } else {
                    frameAtTime = a2.getFrameAtTime(longValue, num.intValue());
                }
                a2.release();
                parcelFileDescriptor.close();
                return e.a(frameAtTime, this.d);
            } catch (RuntimeException e2) {
                throw new IOException(e2);
            } catch (Throwable th) {
                a2.release();
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
    }
}
