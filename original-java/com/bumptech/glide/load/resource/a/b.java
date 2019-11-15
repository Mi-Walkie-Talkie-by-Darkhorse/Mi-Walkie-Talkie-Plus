package com.bumptech.glide.load.resource.a;

import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.util.h;

/* compiled from: BytesResource */
public class b implements q<byte[]> {
    private final byte[] a;

    public b(byte[] bArr) {
        this.a = (byte[]) h.a(bArr);
    }

    public Class<byte[]> b() {
        return byte[].class;
    }

    /* renamed from: a */
    public byte[] c() {
        return this.a;
    }

    public int d() {
        return this.a.length;
    }

    public void e() {
    }
}
