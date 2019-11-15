package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.load.engine.a.e;
import com.mi.milinkforgame.sdk.data.Error;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.bouncycastle.crypto.tls.CipherSuite;

/* compiled from: TransformationUtils */
public final class p {
    private static final Paint a = new Paint(6);
    private static final Paint b = new Paint(7);
    private static final Paint c = new Paint(7);
    private static final List<String> d = Arrays.asList(new String[]{"XT1097", "XT1085"});
    private static final Lock e = ((!d.contains(Build.MODEL) || VERSION.SDK_INT != 22) ? new a() : new ReentrantLock());

    /* compiled from: TransformationUtils */
    private static final class a implements Lock {
        a() {
        }

        public void lock() {
        }

        public void lockInterruptibly() throws InterruptedException {
        }

        public boolean tryLock() {
            return true;
        }

        public boolean tryLock(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        public void unlock() {
        }

        @NonNull
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }
    }

    static {
        c.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
    }

    public static Lock a() {
        return e;
    }

    public static Bitmap a(@NonNull e eVar, @NonNull Bitmap bitmap, int i, int i2) {
        float width;
        float f;
        float f2 = 0.0f;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
            width = ((float) i2) / ((float) bitmap.getHeight());
            f = (((float) i) - (((float) bitmap.getWidth()) * width)) * 0.5f;
        } else {
            width = ((float) i) / ((float) bitmap.getWidth());
            f = 0.0f;
            f2 = (((float) i2) - (((float) bitmap.getHeight()) * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((float) ((int) (f + 0.5f)), (float) ((int) (f2 + 0.5f)));
        Bitmap a2 = eVar.a(i, i2, a(bitmap));
        a(bitmap, a2);
        a(bitmap, a2, matrix);
        return a2;
    }

    public static Bitmap b(@NonNull e eVar, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() != i || bitmap.getHeight() != i2) {
            float min = Math.min(((float) i) / ((float) bitmap.getWidth()), ((float) i2) / ((float) bitmap.getHeight()));
            int round = Math.round(((float) bitmap.getWidth()) * min);
            int round2 = Math.round(((float) bitmap.getHeight()) * min);
            if (bitmap.getWidth() != round || bitmap.getHeight() != round2) {
                Bitmap a2 = eVar.a((int) (((float) bitmap.getWidth()) * min), (int) (((float) bitmap.getHeight()) * min), a(bitmap));
                a(bitmap, a2);
                if (Log.isLoggable("TransformationUtils", 2)) {
                    Log.v("TransformationUtils", "request: " + i + "x" + i2);
                    Log.v("TransformationUtils", "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
                    Log.v("TransformationUtils", "toReuse: " + a2.getWidth() + "x" + a2.getHeight());
                    Log.v("TransformationUtils", "minPct:   " + min);
                }
                Matrix matrix = new Matrix();
                matrix.setScale(min, min);
                a(bitmap, a2, matrix);
                return a2;
            } else if (!Log.isLoggable("TransformationUtils", 2)) {
                return bitmap;
            } else {
                Log.v("TransformationUtils", "adjusted target size matches input, returning input");
                return bitmap;
            }
        } else if (!Log.isLoggable("TransformationUtils", 2)) {
            return bitmap;
        } else {
            Log.v("TransformationUtils", "requested target size matches input, returning input");
            return bitmap;
        }
    }

    public static Bitmap c(@NonNull e eVar, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
            }
            return b(eVar, bitmap, i, i2);
        } else if (!Log.isLoggable("TransformationUtils", 2)) {
            return bitmap;
        } else {
            Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
            return bitmap;
        }
    }

    public static void a(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }

    public static int a(int i) {
        switch (i) {
            case 3:
            case 4:
                return CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return Error.E_WTSDK_A1_DECRYPT;
            default:
                return 0;
        }
    }

    public static Bitmap a(@NonNull e eVar, @NonNull Bitmap bitmap, int i) {
        if (!b(i)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        a(i, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, (float) bitmap.getWidth(), (float) bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap a2 = eVar.a(Math.round(rectF.width()), Math.round(rectF.height()), a(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        a(bitmap, a2, matrix);
        return a2;
    }

    public static boolean b(int i) {
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    private static void a(Canvas canvas) {
        canvas.setBitmap(null);
    }

    private static Config a(Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Config.ARGB_8888;
    }

    private static void a(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        e.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, a);
            a(canvas);
        } finally {
            e.unlock();
        }
    }

    static void a(int i, Matrix matrix) {
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
    }
}
