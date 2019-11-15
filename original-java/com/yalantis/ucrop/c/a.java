package com.yalantis.ucrop.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.mi.milinkforgame.sdk.data.Error;
import com.yalantis.ucrop.a.b;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.crypto.tls.CipherSuite;

/* compiled from: BitmapLoadUtils */
public class a {
    public static void a(@NonNull Context context, @NonNull Uri uri, @Nullable Uri uri2, int i, int i2, b bVar) {
        new com.yalantis.ucrop.b.b(context, uri, uri2, i, i2, bVar).execute(new Void[0]);
    }

    public static Bitmap a(@NonNull Bitmap bitmap, @NonNull Matrix matrix) {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (!bitmap.sameAs(createBitmap)) {
                return createBitmap;
            }
            return bitmap;
        } catch (OutOfMemoryError e) {
            Log.e("BitmapLoadUtils", "transformBitmap: ", e);
            return bitmap;
        }
    }

    public static int a(@NonNull Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        if (i3 > i2 || i4 > i) {
            while (true) {
                if (i3 / i5 <= i2 && i4 / i5 <= i) {
                    break;
                }
                i5 *= 2;
            }
        }
        return i5;
    }

    public static int a(@NonNull Context context, @NonNull Uri uri) {
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                return 0;
            }
            int a = new f(openInputStream).a();
            a((Closeable) openInputStream);
            return a;
        } catch (IOException e) {
            Log.e("BitmapLoadUtils", "getExifOrientation: " + uri.toString(), e);
            return 0;
        }
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

    public static int b(int i) {
        switch (i) {
            case 2:
            case 4:
            case 5:
            case 7:
                return -1;
            default:
                return 1;
        }
    }

    public static int a(@NonNull Context context) {
        int width;
        int height;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (VERSION.SDK_INT >= 13) {
            defaultDisplay.getSize(point);
            width = point.x;
            height = point.y;
        } else {
            width = defaultDisplay.getWidth();
            height = defaultDisplay.getHeight();
        }
        int sqrt = (int) Math.sqrt(Math.pow((double) height, 2.0d) + Math.pow((double) width, 2.0d));
        Canvas canvas = new Canvas();
        int min = Math.min(canvas.getMaximumBitmapWidth(), canvas.getMaximumBitmapHeight());
        if (min > 0) {
            sqrt = Math.min(sqrt, min);
        }
        int a = c.a();
        if (a > 0) {
            sqrt = Math.min(sqrt, a);
        }
        Log.d("BitmapLoadUtils", "maxBitmapSize: " + sqrt);
        return sqrt;
    }

    public static void a(@Nullable Closeable closeable) {
        if (closeable != null && (closeable instanceof Closeable)) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
