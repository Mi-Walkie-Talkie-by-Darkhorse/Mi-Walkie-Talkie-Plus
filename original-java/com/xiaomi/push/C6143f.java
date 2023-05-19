package com.xiaomi.push;

/* renamed from: com.xiaomi.push.f */
/* loaded from: classes2.dex */
public final class C6143f {

    /* renamed from: a */
    static final int f21480a = m3012a(1, 3);

    /* renamed from: b */
    static final int f21481b = m3012a(1, 4);

    /* renamed from: c */
    static final int f21482c = m3012a(2, 0);

    /* renamed from: d */
    static final int f21483d = m3012a(3, 2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m3013a(int i) {
        return i & 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m3012a(int i, int i2) {
        return (i << 3) | i2;
    }

    /* renamed from: b */
    public static int m3011b(int i) {
        return i >>> 3;
    }
}
