package com.bumptech.glide.load;

import android.support.v4.util.ArrayMap;
import java.security.MessageDigest;
import java.util.Map.Entry;

/* compiled from: Options */
public final class e implements c {
    private final ArrayMap<d<?>, Object> b = new ArrayMap<>();

    public void a(e eVar) {
        this.b.putAll(eVar.b);
    }

    public <T> e a(d<T> dVar, T t) {
        this.b.put(dVar, t);
        return this;
    }

    public <T> T a(d<T> dVar) {
        return this.b.containsKey(dVar) ? this.b.get(dVar) : dVar.a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        return this.b.equals(((e) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public void a(MessageDigest messageDigest) {
        for (Entry entry : this.b.entrySet()) {
            a((d) entry.getKey(), entry.getValue(), messageDigest);
        }
    }

    public String toString() {
        return "Options{values=" + this.b + '}';
    }

    private static <T> void a(d<T> dVar, Object obj, MessageDigest messageDigest) {
        dVar.a(obj, messageDigest);
    }
}
