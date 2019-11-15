package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.c;
import com.bumptech.glide.load.h;
import com.bumptech.glide.util.e;
import com.bumptech.glide.util.i;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: ResourceCacheKey */
final class s implements c {
    private static final e<Class<?>, byte[]> b = new e<>(50);
    private final c c;
    private final c d;
    private final int e;
    private final int f;
    private final Class<?> g;
    private final com.bumptech.glide.load.e h;
    private final h<?> i;

    public s(c cVar, c cVar2, int i2, int i3, h<?> hVar, Class<?> cls, com.bumptech.glide.load.e eVar) {
        this.c = cVar;
        this.d = cVar2;
        this.e = i2;
        this.f = i3;
        this.i = hVar;
        this.g = cls;
        this.h = eVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        if (this.f != sVar.f || this.e != sVar.e || !i.a((Object) this.i, (Object) sVar.i) || !this.g.equals(sVar.g) || !this.c.equals(sVar.c) || !this.d.equals(sVar.d) || !this.h.equals(sVar.h)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode = (((((this.c.hashCode() * 31) + this.d.hashCode()) * 31) + this.e) * 31) + this.f;
        if (this.i != null) {
            hashCode = (hashCode * 31) + this.i.hashCode();
        }
        return (((hashCode * 31) + this.g.hashCode()) * 31) + this.h.hashCode();
    }

    public void a(MessageDigest messageDigest) {
        byte[] array = ByteBuffer.allocate(8).putInt(this.e).putInt(this.f).array();
        this.d.a(messageDigest);
        this.c.a(messageDigest);
        messageDigest.update(array);
        if (this.i != null) {
            this.i.a(messageDigest);
        }
        this.h.a(messageDigest);
        messageDigest.update(a());
    }

    private byte[] a() {
        byte[] bArr = (byte[]) b.b(this.g);
        if (bArr != null) {
            return bArr;
        }
        byte[] bytes = this.g.getName().getBytes(a);
        b.b(this.g, bytes);
        return bytes;
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.c + ", signature=" + this.d + ", width=" + this.e + ", height=" + this.f + ", decodedResourceClass=" + this.g + ", transformation='" + this.i + '\'' + ", options=" + this.h + '}';
    }
}
