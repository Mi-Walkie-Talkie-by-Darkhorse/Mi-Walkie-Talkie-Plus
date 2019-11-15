package com.tencent.open.utils;

import android.support.v4.view.MotionEventCompat;

/* compiled from: ProGuard */
public final class k implements Cloneable {
    private int a;

    public k(byte[] bArr) {
        this(bArr, 0);
    }

    public k(byte[] bArr, int i) {
        this.a = (bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK;
        this.a += bArr[i] & 255;
    }

    public k(int i) {
        this.a = i;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof k) || this.a != ((k) obj).b()) {
            return false;
        }
        return true;
    }

    public byte[] a() {
        return new byte[]{(byte) (this.a & 255), (byte) ((this.a & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8)};
    }

    public int b() {
        return this.a;
    }

    public int hashCode() {
        return this.a;
    }
}
