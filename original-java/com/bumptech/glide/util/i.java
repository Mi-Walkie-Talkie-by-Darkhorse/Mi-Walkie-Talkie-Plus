package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.os.Looper;
import com.bumptech.glide.load.b.l;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;

/* compiled from: Util */
public final class i {
    private static final char[] a = "0123456789abcdef".toCharArray();
    private static final char[] b = new char[64];

    /* renamed from: com.bumptech.glide.util.i$1 reason: invalid class name */
    /* compiled from: Util */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[Config.values().length];

        static {
            try {
                a[Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public static String a(byte[] bArr) {
        String a2;
        synchronized (b) {
            a2 = a(bArr, b);
        }
        return a2;
    }

    private static String a(byte[] bArr, char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i] & 255;
            cArr[i * 2] = a[b2 >>> 4];
            cArr[(i * 2) + 1] = a[b2 & 15];
        }
        return new String(cArr);
    }

    @TargetApi(19)
    public static int a(Bitmap bitmap) {
        if (bitmap.isRecycled()) {
            throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
        }
        if (VERSION.SDK_INT >= 19) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException e) {
            }
        }
        return bitmap.getHeight() * bitmap.getRowBytes();
    }

    public static int a(int i, int i2, Config config) {
        return i * i2 * a(config);
    }

    private static int a(Config config) {
        if (config == null) {
            config = Config.ARGB_8888;
        }
        switch (AnonymousClass1.a[config.ordinal()]) {
            case 1:
                return 1;
            case 2:
            case 3:
                return 2;
            default:
                return 4;
        }
    }

    public static boolean a(int i, int i2) {
        return b(i) && b(i2);
    }

    private static boolean b(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    public static void a() {
        if (!b()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean c() {
        return !b();
    }

    public static <T> Queue<T> a(int i) {
        return new ArrayDeque(i);
    }

    public static <T> List<T> a(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T add : collection) {
            arrayList.add(add);
        }
        return arrayList;
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static boolean b(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        if (obj instanceof l) {
            return ((l) obj).a(obj2);
        }
        return obj.equals(obj2);
    }

    public static int b(int i, int i2) {
        return (i2 * 31) + i;
    }

    public static int a(float f) {
        return a(f, 17);
    }

    public static int a(float f, int i) {
        return b(Float.floatToIntBits(f), i);
    }

    public static int a(Object obj, int i) {
        return b(obj == null ? 0 : obj.hashCode(), i);
    }

    public static int a(boolean z, int i) {
        return b(z ? 1 : 0, i);
    }
}
