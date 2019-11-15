package com.bumptech.glide.d;

import com.bumptech.glide.load.c;
import com.bumptech.glide.util.h;
import java.security.MessageDigest;

/* compiled from: ObjectKey */
public final class b implements c {
    private final Object b;

    public b(Object obj) {
        this.b = h.a(obj);
    }

    public String toString() {
        return "ObjectKey{object=" + this.b + '}';
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        return this.b.equals(((b) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public void a(MessageDigest messageDigest) {
        messageDigest.update(this.b.toString().getBytes(a));
    }
}
