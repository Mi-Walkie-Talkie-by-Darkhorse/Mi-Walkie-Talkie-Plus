package com.bumptech.glide.load.engine.a;

/* compiled from: IntegerArrayAdapter */
public final class i implements a<int[]> {
    public String a() {
        return "IntegerArrayPool";
    }

    public int a(int[] iArr) {
        return iArr.length;
    }

    /* renamed from: b */
    public int[] a(int i) {
        return new int[i];
    }

    public int b() {
        return 4;
    }
}
