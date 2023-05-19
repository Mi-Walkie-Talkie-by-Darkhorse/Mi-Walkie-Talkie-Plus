package com.ifengyu.blelib.p150a;

/* renamed from: com.ifengyu.blelib.a.a */
/* loaded from: classes2.dex */
public class SeqGenerator {

    /* renamed from: a */
    private volatile int f12043a;

    /* compiled from: SeqGenerator.java */
    /* renamed from: com.ifengyu.blelib.a.a$a */
    /* loaded from: classes2.dex */
    private static final class C3136a {

        /* renamed from: a */
        private static final SeqGenerator f12044a = new SeqGenerator();
    }

    /* renamed from: a */
    public static SeqGenerator m14384a() {
        return C3136a.f12044a;
    }

    /* renamed from: b */
    public synchronized int m14383b() {
        this.f12043a++;
        if (this.f12043a > 65535) {
            this.f12043a = 1;
        }
        return this.f12043a;
    }
}
