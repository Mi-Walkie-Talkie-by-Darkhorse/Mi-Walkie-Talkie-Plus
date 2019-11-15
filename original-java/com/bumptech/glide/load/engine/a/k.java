package com.bumptech.glide.load.engine.a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: LruBitmapPool */
public class k implements e {
    private static final Config a = Config.ARGB_8888;
    private final l b;
    private final Set<Config> c;
    private final int d;
    private final a e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;

    /* compiled from: LruBitmapPool */
    private interface a {
        void a(Bitmap bitmap);

        void b(Bitmap bitmap);
    }

    /* compiled from: LruBitmapPool */
    private static class b implements a {
        b() {
        }

        public void a(Bitmap bitmap) {
        }

        public void b(Bitmap bitmap) {
        }
    }

    k(int i2, l lVar, Set<Config> set) {
        this.d = i2;
        this.f = i2;
        this.b = lVar;
        this.c = set;
        this.e = new b();
    }

    public k(int i2) {
        this(i2, e(), f());
    }

    public synchronized void a(Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        } else if (bitmap.isRecycled()) {
            throw new IllegalStateException("Cannot pool recycled bitmap");
        } else if (!bitmap.isMutable() || this.b.c(bitmap) > this.f || !this.c.contains(bitmap.getConfig())) {
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.b.b(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.c.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } else {
            int c2 = this.b.c(bitmap);
            this.b.a(bitmap);
            this.e.a(bitmap);
            this.j++;
            this.g = c2 + this.g;
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Put bitmap in pool=" + this.b.b(bitmap));
            }
            c();
            b();
        }
    }

    private void b() {
        b(this.f);
    }

    @NonNull
    public Bitmap a(int i2, int i3, Config config) {
        Bitmap c2 = c(i2, i3, config);
        if (c2 == null) {
            return Bitmap.createBitmap(i2, i3, config);
        }
        c2.eraseColor(0);
        return c2;
    }

    @NonNull
    public Bitmap b(int i2, int i3, Config config) {
        Bitmap c2 = c(i2, i3, config);
        if (c2 == null) {
            return Bitmap.createBitmap(i2, i3, config);
        }
        return c2;
    }

    @TargetApi(26)
    private static void a(Config config) {
        if (VERSION.SDK_INT >= 26 && config == Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    @Nullable
    private synchronized Bitmap c(int i2, int i3, Config config) {
        Bitmap a2;
        a(config);
        a2 = this.b.a(i2, i3, config != null ? config : a);
        if (a2 == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Missing bitmap=" + this.b.b(i2, i3, config));
            }
            this.i++;
        } else {
            this.h++;
            this.g -= this.b.c(a2);
            this.e.b(a2);
            b(a2);
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            Log.v("LruBitmapPool", "Get bitmap=" + this.b.b(i2, i3, config));
        }
        c();
        return a2;
    }

    private static void b(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        c(bitmap);
    }

    @TargetApi(19)
    private static void c(Bitmap bitmap) {
        if (VERSION.SDK_INT >= 19) {
            bitmap.setPremultiplied(true);
        }
    }

    public void a() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        b(0);
    }

    @SuppressLint({"InlinedApi"})
    public void a(int i2) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i2);
        }
        if (i2 >= 40) {
            a();
        } else if (i2 >= 20) {
            b(this.f / 2);
        }
    }

    private synchronized void b(int i2) {
        while (true) {
            if (this.g <= i2) {
                break;
            }
            Bitmap a2 = this.b.a();
            if (a2 == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    Log.w("LruBitmapPool", "Size mismatch, resetting");
                    d();
                }
                this.g = 0;
            } else {
                this.e.b(a2);
                this.g -= this.b.c(a2);
                this.k++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    Log.d("LruBitmapPool", "Evicting bitmap=" + this.b.b(a2));
                }
                c();
                a2.recycle();
            }
        }
    }

    private void c() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            d();
        }
    }

    private void d() {
        Log.v("LruBitmapPool", "Hits=" + this.h + ", misses=" + this.i + ", puts=" + this.j + ", evictions=" + this.k + ", currentSize=" + this.g + ", maxSize=" + this.f + "\nStrategy=" + this.b);
    }

    private static l e() {
        if (VERSION.SDK_INT >= 19) {
            return new n();
        }
        return new c();
    }

    @TargetApi(26)
    private static Set<Config> f() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(Arrays.asList(Config.values()));
        if (VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        if (VERSION.SDK_INT >= 26) {
            hashSet.remove(Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
