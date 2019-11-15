package com.bumptech.glide.load.engine.b;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

/* compiled from: MemorySizeCalculator */
public final class i {
    private final int a;
    private final int b;
    private final Context c;
    private final int d;

    /* compiled from: MemorySizeCalculator */
    public static final class a {
        static final int a = (VERSION.SDK_INT < 26 ? 4 : 1);
        /* access modifiers changed from: private */
        public final Context b;
        /* access modifiers changed from: private */
        public ActivityManager c;
        /* access modifiers changed from: private */
        public c d;
        /* access modifiers changed from: private */
        public float e = 2.0f;
        /* access modifiers changed from: private */
        public float f = ((float) a);
        /* access modifiers changed from: private */
        public float g = 0.4f;
        /* access modifiers changed from: private */
        public float h = 0.33f;
        /* access modifiers changed from: private */
        public int i = 4194304;

        public a(Context context) {
            this.b = context;
            this.c = (ActivityManager) context.getSystemService("activity");
            this.d = new b(context.getResources().getDisplayMetrics());
            if (VERSION.SDK_INT >= 26 && i.b(this.c)) {
                this.f = 0.0f;
            }
        }

        public i a() {
            return new i(this);
        }
    }

    /* compiled from: MemorySizeCalculator */
    private static final class b implements c {
        private final DisplayMetrics a;

        public b(DisplayMetrics displayMetrics) {
            this.a = displayMetrics;
        }

        public int a() {
            return this.a.widthPixels;
        }

        public int b() {
            return this.a.heightPixels;
        }
    }

    /* compiled from: MemorySizeCalculator */
    interface c {
        int a();

        int b();
    }

    i(a aVar) {
        int c2;
        this.c = aVar.b;
        if (b(aVar.c)) {
            c2 = aVar.i / 2;
        } else {
            c2 = aVar.i;
        }
        this.d = c2;
        int a2 = a(aVar.c, aVar.g, aVar.h);
        int a3 = aVar.d.a() * aVar.d.b() * 4;
        int round = Math.round(((float) a3) * aVar.f);
        int round2 = Math.round(((float) a3) * aVar.e);
        int i = a2 - this.d;
        if (round2 + round <= i) {
            this.b = round2;
            this.a = round;
        } else {
            float g = ((float) i) / (aVar.f + aVar.e);
            this.b = Math.round(aVar.e * g);
            this.a = Math.round(g * aVar.f);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            Log.d("MemorySizeCalculator", "Calculation complete, Calculated memory cache size: " + a(this.b) + ", pool size: " + a(this.a) + ", byte array size: " + a(this.d) + ", memory class limited? " + (round2 + round > a2) + ", max size: " + a(a2) + ", memoryClass: " + aVar.c.getMemoryClass() + ", isLowMemoryDevice: " + b(aVar.c));
        }
    }

    public int a() {
        return this.b;
    }

    public int b() {
        return this.a;
    }

    public int c() {
        return this.d;
    }

    private static int a(ActivityManager activityManager, float f, float f2) {
        float memoryClass = (float) (activityManager.getMemoryClass() * 1024 * 1024);
        if (!b(activityManager)) {
            f2 = f;
        }
        return Math.round(memoryClass * f2);
    }

    private String a(int i) {
        return Formatter.formatFileSize(this.c, (long) i);
    }

    /* access modifiers changed from: private */
    public static boolean b(ActivityManager activityManager) {
        if (VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return false;
    }
}
