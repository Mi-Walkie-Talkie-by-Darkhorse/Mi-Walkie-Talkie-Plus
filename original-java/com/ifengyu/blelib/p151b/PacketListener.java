package com.ifengyu.blelib.p151b;

import com.ifengyu.blelib.p152c.Commend;

/* renamed from: com.ifengyu.blelib.b.c */
/* loaded from: classes2.dex */
public abstract class PacketListener {

    /* renamed from: a */
    private long f12052a;

    /* renamed from: b */
    private long f12053b;

    public PacketListener(long j) {
        this.f12053b = j;
        this.f12052a = System.currentTimeMillis();
    }

    /* renamed from: a */
    public long m14370a() {
        return this.f12052a;
    }

    /* renamed from: b */
    public long m14369b() {
        return this.f12053b;
    }

    /* renamed from: c */
    public abstract void mo11457c(int i);

    /* renamed from: d */
    public abstract void mo11456d(Commend commend);

    public PacketListener() {
        this.f12053b = 5000L;
        this.f12052a = System.currentTimeMillis();
    }
}
