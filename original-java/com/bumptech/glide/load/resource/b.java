package com.bumptech.glide.load.resource;

import android.content.Context;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.h;
import java.security.MessageDigest;

/* compiled from: UnitTransformation */
public final class b<T> implements h<T> {
    private static final h<?> b = new b();

    public static <T> b<T> a() {
        return (b) b;
    }

    private b() {
    }

    public q<T> a(Context context, q<T> qVar, int i, int i2) {
        return qVar;
    }

    public void a(MessageDigest messageDigest) {
    }
}
