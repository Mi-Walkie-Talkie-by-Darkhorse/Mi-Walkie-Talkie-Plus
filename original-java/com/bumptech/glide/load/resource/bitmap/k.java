package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy.SampleSizeRounding;
import com.bumptech.glide.util.h;
import com.bumptech.glide.util.i;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* compiled from: Downsampler */
public final class k {
    public static final d<DecodeFormat> a = d.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.d);
    public static final d<DownsampleStrategy> b = d.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", DownsampleStrategy.g);
    public static final d<Boolean> c = d.a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", Boolean.valueOf(false));
    public static final d<Boolean> d = d.a("com.bumtpech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", null);
    private static final Set<String> e = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"image/vnd.wap.wbmp", "image/x-ico"})));
    private static final a f = new a() {
        public void a() {
        }

        public void a(e eVar, Bitmap bitmap) throws IOException {
        }
    };
    private static final Set<ImageType> g = Collections.unmodifiableSet(EnumSet.of(ImageType.JPEG, ImageType.PNG_A, ImageType.PNG));
    private static final Queue<Options> h = i.a(0);
    private final e i;
    private final DisplayMetrics j;
    private final b k;
    private final List<ImageHeaderParser> l;
    private final m m = m.a();

    /* compiled from: Downsampler */
    public interface a {
        void a();

        void a(e eVar, Bitmap bitmap) throws IOException;
    }

    public k(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, e eVar, b bVar) {
        this.l = list;
        this.j = (DisplayMetrics) h.a(displayMetrics);
        this.i = (e) h.a(eVar);
        this.k = (b) h.a(bVar);
    }

    public boolean a(InputStream inputStream) {
        return true;
    }

    public boolean a(ByteBuffer byteBuffer) {
        return true;
    }

    public q<Bitmap> a(InputStream inputStream, int i2, int i3, com.bumptech.glide.load.e eVar) throws IOException {
        return a(inputStream, i2, i3, eVar, f);
    }

    public q<Bitmap> a(InputStream inputStream, int i2, int i3, com.bumptech.glide.load.e eVar, a aVar) throws IOException {
        boolean z;
        h.a(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.k.a(65536, byte[].class);
        Options a2 = a();
        a2.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) eVar.a(a);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) eVar.a(b);
        boolean booleanValue = ((Boolean) eVar.a(c)).booleanValue();
        boolean z2 = eVar.a(d) != null && ((Boolean) eVar.a(d)).booleanValue();
        if (decodeFormat == DecodeFormat.PREFER_ARGB_8888_DISALLOW_HARDWARE) {
            z = false;
        } else {
            z = z2;
        }
        try {
            e a3 = e.a(a(inputStream, a2, downsampleStrategy, decodeFormat, z, i2, i3, booleanValue, aVar), this.i);
            return a3;
        } finally {
            c(a2);
            this.k.a(bArr, byte[].class);
        }
    }

    private Bitmap a(InputStream inputStream, Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, boolean z, int i2, int i3, boolean z2, a aVar) throws IOException {
        boolean z3;
        int i4;
        long a2 = com.bumptech.glide.util.d.a();
        int[] a3 = a(inputStream, options, aVar, this.i);
        int i5 = a3[0];
        int i6 = a3[1];
        String str = options.outMimeType;
        if (i5 == -1 || i6 == -1) {
            z3 = false;
        } else {
            z3 = z;
        }
        int b2 = com.bumptech.glide.load.b.b(this.l, inputStream, this.k);
        int a4 = p.a(b2);
        boolean b3 = p.b(b2);
        int i7 = i2 == Integer.MIN_VALUE ? i5 : i2;
        if (i3 == Integer.MIN_VALUE) {
            i4 = i6;
        } else {
            i4 = i3;
        }
        ImageType a5 = com.bumptech.glide.load.b.a(this.l, inputStream, this.k);
        a(a5, inputStream, aVar, this.i, downsampleStrategy, a4, i5, i6, i7, i4, options);
        a(inputStream, decodeFormat, z3, b3, options, i7, i4);
        boolean z4 = VERSION.SDK_INT >= 19;
        if ((options.inSampleSize == 1 || z4) && a(a5)) {
            if (!z2 || !z4) {
                float f2 = a(options) ? ((float) options.inTargetDensity) / ((float) options.inDensity) : 1.0f;
                int i8 = options.inSampleSize;
                int ceil = (int) Math.ceil((double) (((float) i6) / ((float) i8)));
                i7 = Math.round(((float) ((int) Math.ceil((double) (((float) i5) / ((float) i8))))) * f2);
                i4 = Math.round(((float) ceil) * f2);
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Calculated target [" + i7 + "x" + i4 + "] for source [" + i5 + "x" + i6 + "], sampleSize: " + i8 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f2);
                }
            }
            if (i7 > 0 && i4 > 0) {
                a(options, this.i, i7, i4);
            }
        }
        Bitmap b4 = b(inputStream, options, aVar, this.i);
        aVar.a(this.i, b4);
        if (Log.isLoggable("Downsampler", 2)) {
            a(i5, i6, str, options, b4, i2, i3, a2);
        }
        Bitmap bitmap = null;
        if (b4 != null) {
            b4.setDensity(this.j.densityDpi);
            bitmap = p.a(this.i, b4, b2);
            if (!b4.equals(bitmap)) {
                this.i.a(b4);
            }
        }
        return bitmap;
    }

    static void a(ImageType imageType, InputStream inputStream, a aVar, e eVar, DownsampleStrategy downsampleStrategy, int i2, int i3, int i4, int i5, int i6, Options options) throws IOException {
        float f2;
        int min;
        int max;
        int floor;
        int floor2;
        if (i3 > 0 && i4 > 0) {
            if (i2 == 90 || i2 == 270) {
                f2 = downsampleStrategy.a(i4, i3, i5, i6);
            } else {
                f2 = downsampleStrategy.a(i3, i4, i5, i6);
            }
            if (f2 <= 0.0f) {
                throw new IllegalArgumentException("Cannot scale with factor: " + f2 + " from: " + downsampleStrategy + ", source: [" + i3 + "x" + i4 + "], target: [" + i5 + "x" + i6 + "]");
            }
            SampleSizeRounding b2 = downsampleStrategy.b(i3, i4, i5, i6);
            if (b2 == null) {
                throw new IllegalArgumentException("Cannot round with null rounding");
            }
            int b3 = i3 / b((double) (((float) i3) * f2));
            int b4 = i4 / b((double) (((float) i4) * f2));
            if (b2 == SampleSizeRounding.MEMORY) {
                min = Math.max(b3, b4);
            } else {
                min = Math.min(b3, b4);
            }
            if (VERSION.SDK_INT > 23 || !e.contains(options.outMimeType)) {
                max = Math.max(1, Integer.highestOneBit(min));
                if (b2 == SampleSizeRounding.MEMORY && ((float) max) < 1.0f / f2) {
                    max <<= 1;
                }
            } else {
                max = 1;
            }
            options.inSampleSize = max;
            if (imageType == ImageType.JPEG) {
                int min2 = Math.min(max, 8);
                floor = (int) Math.ceil((double) (((float) i3) / ((float) min2)));
                floor2 = (int) Math.ceil((double) (((float) i4) / ((float) min2)));
                int i7 = max / 8;
                if (i7 > 0) {
                    floor /= i7;
                    floor2 /= i7;
                }
            } else if (imageType == ImageType.PNG || imageType == ImageType.PNG_A) {
                floor = (int) Math.floor((double) (((float) i3) / ((float) max)));
                floor2 = (int) Math.floor((double) (((float) i4) / ((float) max)));
            } else if (imageType == ImageType.WEBP || imageType == ImageType.WEBP_A) {
                if (VERSION.SDK_INT >= 24) {
                    floor = Math.round(((float) i3) / ((float) max));
                    floor2 = Math.round(((float) i4) / ((float) max));
                } else {
                    floor = (int) Math.floor((double) (((float) i3) / ((float) max)));
                    floor2 = (int) Math.floor((double) (((float) i4) / ((float) max)));
                }
            } else if (i3 % max == 0 && i4 % max == 0) {
                floor = i3 / max;
                floor2 = i4 / max;
            } else {
                int[] a2 = a(inputStream, options, aVar, eVar);
                floor = a2[0];
                floor2 = a2[1];
            }
            double a3 = (double) downsampleStrategy.a(floor, floor2, i5, i6);
            if (VERSION.SDK_INT >= 19) {
                options.inTargetDensity = a(a3);
                options.inDensity = 1000000000;
            }
            if (a(options)) {
                options.inScaled = true;
            } else {
                options.inTargetDensity = 0;
                options.inDensity = 0;
            }
            if (Log.isLoggable("Downsampler", 2)) {
                Log.v("Downsampler", "Calculate scaling, source: [" + i3 + "x" + i4 + "], target: [" + i5 + "x" + i6 + "], power of two scaled: [" + floor + "x" + floor2 + "], exact scale factor: " + f2 + ", power of 2 sample size: " + max + ", adjusted scale factor: " + a3 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
            }
        }
    }

    private static int a(double d2) {
        int b2 = b(1.0E9d * d2);
        return b(((double) b2) * (d2 / ((double) (((float) b2) / 1.0E9f))));
    }

    private static int b(double d2) {
        return (int) (0.5d + d2);
    }

    private boolean a(ImageType imageType) throws IOException {
        if (VERSION.SDK_INT >= 19) {
            return true;
        }
        return g.contains(imageType);
    }

    private void a(InputStream inputStream, DecodeFormat decodeFormat, boolean z, boolean z2, Options options, int i2, int i3) throws IOException {
        boolean z3;
        if (!this.m.a(i2, i3, options, decodeFormat, z, z2)) {
            if (decodeFormat == DecodeFormat.PREFER_ARGB_8888 || decodeFormat == DecodeFormat.PREFER_ARGB_8888_DISALLOW_HARDWARE || VERSION.SDK_INT == 16) {
                options.inPreferredConfig = Config.ARGB_8888;
                return;
            }
            try {
                z3 = com.bumptech.glide.load.b.a(this.l, inputStream, this.k).a();
            } catch (IOException e2) {
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + decodeFormat, e2);
                }
                z3 = false;
            }
            options.inPreferredConfig = z3 ? Config.ARGB_8888 : Config.RGB_565;
            if (options.inPreferredConfig == Config.RGB_565 || options.inPreferredConfig == Config.ARGB_4444 || options.inPreferredConfig == Config.ALPHA_8) {
                options.inDither = true;
            }
        }
    }

    private static int[] a(InputStream inputStream, Options options, a aVar, e eVar) throws IOException {
        options.inJustDecodeBounds = true;
        b(inputStream, options, aVar, eVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static Bitmap b(InputStream inputStream, Options options, a aVar, e eVar) throws IOException {
        IOException a2;
        Bitmap b2;
        if (options.inJustDecodeBounds) {
            inputStream.mark(10485760);
        } else {
            aVar.a();
        }
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        String str = options.outMimeType;
        p.a().lock();
        try {
            b2 = BitmapFactory.decodeStream(inputStream, null, options);
            p.a().unlock();
            if (options.inJustDecodeBounds) {
                inputStream.reset();
            }
        } catch (IOException e2) {
            throw a2;
        } catch (IllegalArgumentException e3) {
            a2 = a(e3, i2, i3, str, options);
            if (Log.isLoggable("Downsampler", 3)) {
                Log.d("Downsampler", "Failed to decode with inBitmap, trying again without Bitmap re-use", a2);
            }
            if (options.inBitmap != null) {
                inputStream.reset();
                eVar.a(options.inBitmap);
                options.inBitmap = null;
                b2 = b(inputStream, options, aVar, eVar);
                p.a().unlock();
            } else {
                throw a2;
            }
        } catch (Throwable th) {
            p.a().unlock();
            throw th;
        }
        return b2;
    }

    private static boolean a(Options options) {
        return options.inTargetDensity > 0 && options.inDensity > 0 && options.inTargetDensity != options.inDensity;
    }

    private static void a(int i2, int i3, String str, Options options, Bitmap bitmap, int i4, int i5, long j2) {
        Log.v("Downsampler", "Decoded " + a(bitmap) + " from [" + i2 + "x" + i3 + "] " + str + " with inBitmap " + b(options) + " for [" + i4 + "x" + i5 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + com.bumptech.glide.util.d.a(j2));
    }

    private static String b(Options options) {
        return a(options.inBitmap);
    }

    @Nullable
    @TargetApi(19)
    private static String a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (VERSION.SDK_INT >= 19 ? " (" + bitmap.getAllocationByteCount() + ")" : "");
    }

    private static IOException a(IllegalArgumentException illegalArgumentException, int i2, int i3, String str, Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i2 + ", outHeight: " + i3 + ", outMimeType: " + str + ", inBitmap: " + b(options), illegalArgumentException);
    }

    @TargetApi(26)
    private static void a(Options options, e eVar, int i2, int i3) {
        if (VERSION.SDK_INT < 26 || options.inPreferredConfig != Config.HARDWARE) {
            options.inBitmap = eVar.b(i2, i3, options.inPreferredConfig);
        }
    }

    private static synchronized Options a() {
        Options options;
        synchronized (k.class) {
            synchronized (h) {
                options = (Options) h.poll();
            }
            if (options == null) {
                options = new Options();
                d(options);
            }
        }
        return options;
    }

    private static void c(Options options) {
        d(options);
        synchronized (h) {
            h.offer(options);
        }
    }

    private static void d(Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }
}
