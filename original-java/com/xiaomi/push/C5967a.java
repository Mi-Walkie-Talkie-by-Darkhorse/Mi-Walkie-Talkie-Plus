package com.xiaomi.push;

/* renamed from: com.xiaomi.push.a */
/* loaded from: classes2.dex */
public final class C5967a {

    /* renamed from: a */
    public static final C5967a f20985a = new C5967a(new byte[0]);

    /* renamed from: a */
    private volatile int f20986a = 0;

    /* renamed from: a */
    private final byte[] f20987a;

    private C5967a(byte[] bArr) {
        this.f20987a = bArr;
    }

    /* renamed from: a */
    public static C5967a m3812a(byte[] bArr) {
        return m3811a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static C5967a m3811a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new C5967a(bArr2);
    }

    /* renamed from: a */
    public int m3814a() {
        return this.f20987a.length;
    }

    /* renamed from: a */
    public byte[] m3813a() {
        byte[] bArr = this.f20987a;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C5967a) {
            byte[] bArr = this.f20987a;
            int length = bArr.length;
            byte[] bArr2 = ((C5967a) obj).f20987a;
            if (length != bArr2.length) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                if (bArr[i] != bArr2[i]) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i = this.f20986a;
        if (i == 0) {
            byte[] bArr = this.f20987a;
            int length = bArr.length;
            for (byte b : bArr) {
                length = (length * 31) + b;
            }
            i = length == 0 ? 1 : length;
            this.f20986a = i;
        }
        return i;
    }
}
