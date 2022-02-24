package com.xiaomi.push;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final int f8919a = a(1, 3);

    /* renamed from: b  reason: collision with root package name */
    static final int f8920b = a(1, 4);

    /* renamed from: c  reason: collision with root package name */
    static final int f8921c = a(2, 0);
    static final int d = a(3, 2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        return i & 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, int i2) {
        return (i << 3) | i2;
    }

    public static int b(int i) {
        return i >>> 3;
    }
}
