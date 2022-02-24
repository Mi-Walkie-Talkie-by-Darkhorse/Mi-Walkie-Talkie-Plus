package com.ifengyu.blelib.b;

/* compiled from: SeqGenerator.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private volatile int f5186a;

    /* compiled from: SeqGenerator.java */
    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final f f5187a = new f();
    }

    public static f b() {
        return a.f5187a;
    }

    public synchronized int a() {
        this.f5186a++;
        if (this.f5186a > 65535) {
            this.f5186a = 1;
        }
        return this.f5186a;
    }
}
