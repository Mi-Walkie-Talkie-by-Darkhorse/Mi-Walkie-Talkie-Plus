package com.bumptech.glide.load.engine.b;

import android.util.Log;
import com.bumptech.glide.a.a;
import com.bumptech.glide.a.a.d;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.engine.b.a.b;
import java.io.File;
import java.io.IOException;

/* compiled from: DiskLruCacheWrapper */
public class e implements a {
    private static e a = null;
    private final j b;
    private final File c;
    private final int d;
    private final c e = new c();
    private a f;

    public static synchronized a a(File file, int i) {
        e eVar;
        synchronized (e.class) {
            if (a == null) {
                a = new e(file, i);
            }
            eVar = a;
        }
        return eVar;
    }

    protected e(File file, int i) {
        this.c = file;
        this.d = i;
        this.b = new j();
    }

    private synchronized a a() throws IOException {
        if (this.f == null) {
            this.f = a.a(this.c, 1, 1, (long) this.d);
        }
        return this.f;
    }

    public File a(c cVar) {
        String a2 = this.b.a(cVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + a2 + " for for Key: " + cVar);
        }
        try {
            d a3 = a().a(a2);
            if (a3 != null) {
                return a3.a(0);
            }
            return null;
        } catch (IOException e2) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e2);
            return null;
        }
    }

    public void a(c cVar, b bVar) {
        a.b b2;
        String a2 = this.b.a(cVar);
        this.e.a(a2);
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + a2 + " for for Key: " + cVar);
            }
            a a3 = a();
            if (a3.a(a2) != null) {
                this.e.b(a2);
                return;
            }
            b2 = a3.b(a2);
            if (b2 == null) {
                throw new IllegalStateException("Had two simultaneous puts for: " + a2);
            }
            if (bVar.a(b2.a(0))) {
                b2.a();
            }
            b2.c();
            this.e.b(a2);
        } catch (IOException e2) {
            if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e2);
            }
        } catch (Throwable th) {
            this.e.b(a2);
            throw th;
        }
    }
}
