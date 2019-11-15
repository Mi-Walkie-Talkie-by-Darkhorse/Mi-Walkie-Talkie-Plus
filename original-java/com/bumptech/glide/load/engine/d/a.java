package com.bumptech.glide.load.engine.d;

import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.b.h;

/* compiled from: BitmapPreFiller */
public final class a {
    private final h a;
    private final e b;
    private final DecodeFormat c;
    private final Handler d = new Handler(Looper.getMainLooper());

    public a(h hVar, e eVar, DecodeFormat decodeFormat) {
        this.a = hVar;
        this.b = eVar;
        this.c = decodeFormat;
    }
}
