package com.ifengyu.blelib.c;

import com.ifengyu.blelib.d.c;

/* compiled from: PacketListener.java */
/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private long f5192a;

    /* renamed from: b  reason: collision with root package name */
    private long f5193b;

    public e(long j) {
        this.f5193b = j;
        this.f5192a = System.currentTimeMillis();
    }

    public long a() {
        return this.f5192a;
    }

    public abstract void a(int i);

    public abstract void a(c cVar);

    public long b() {
        return this.f5193b;
    }

    public e() {
        this.f5193b = 5000L;
        this.f5192a = System.currentTimeMillis();
    }
}
