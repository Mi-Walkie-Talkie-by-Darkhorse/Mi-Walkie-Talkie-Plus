package com.bumptech.glide.load;

import android.support.annotation.Nullable;
import com.bumptech.glide.util.h;
import java.security.MessageDigest;

/* compiled from: Option */
public final class d<T> {
    private static final a<Object> a = new a<Object>() {
        public void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    };
    private final T b;
    private final a<T> c;
    private final String d;
    private volatile byte[] e;

    /* compiled from: Option */
    public interface a<T> {
        void a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    public static <T> d<T> a(String str) {
        return new d<>(str, null, c());
    }

    public static <T> d<T> a(String str, T t) {
        return new d<>(str, t, c());
    }

    public static <T> d<T> a(String str, T t, a<T> aVar) {
        return new d<>(str, t, aVar);
    }

    d(String str, T t, a<T> aVar) {
        this.d = h.a(str);
        this.b = t;
        this.c = (a) h.a(aVar);
    }

    @Nullable
    public T a() {
        return this.b;
    }

    public void a(T t, MessageDigest messageDigest) {
        this.c.a(b(), t, messageDigest);
    }

    private byte[] b() {
        if (this.e == null) {
            this.e = this.d.getBytes(c.a);
        }
        return this.e;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        return this.d.equals(((d) obj).d);
    }

    public int hashCode() {
        return this.d.hashCode();
    }

    private static <T> a<T> c() {
        return a;
    }

    public String toString() {
        return "Option{key='" + this.d + '\'' + '}';
    }
}
