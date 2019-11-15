package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import java.io.File;

/* compiled from: HardwareConfigState */
final class m {
    private static final File a = new File("/proc/self/fd");
    private static volatile m d;
    private volatile int b;
    private volatile boolean c = true;

    static m a() {
        if (d == null) {
            synchronized (m.class) {
                if (d == null) {
                    d = new m();
                }
            }
        }
        return d;
    }

    private m() {
    }

    /* access modifiers changed from: 0000 */
    @TargetApi(26)
    public boolean a(int i, int i2, Options options, DecodeFormat decodeFormat, boolean z, boolean z2) {
        boolean z3;
        if (!z || VERSION.SDK_INT < 26 || decodeFormat == DecodeFormat.PREFER_ARGB_8888_DISALLOW_HARDWARE || z2) {
            return false;
        }
        if (i < 128 || i2 < 128 || !b()) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (!z3) {
            return z3;
        }
        options.inPreferredConfig = Config.HARDWARE;
        options.inMutable = false;
        return z3;
    }

    private synchronized boolean b() {
        boolean z;
        boolean z2 = false;
        synchronized (this) {
            int i = this.b + 1;
            this.b = i;
            if (i >= 50) {
                this.b = 0;
                int length = a.list().length;
                if (length < 700) {
                    z2 = true;
                }
                this.c = z2;
                if (!this.c && Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + 700);
                }
            }
            z = this.c;
        }
        return z;
    }
}
