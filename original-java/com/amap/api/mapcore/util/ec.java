package com.amap.api.mapcore.util;

/* compiled from: ShortArray */
public class ec {
    public short[] a;
    public int b;
    public boolean c;

    public ec() {
        this(true, 16);
    }

    public ec(boolean z, int i) {
        this.c = z;
        this.a = new short[i];
    }

    public void a(short s) {
        short[] sArr = this.a;
        if (this.b == sArr.length) {
            sArr = d(Math.max(8, (int) (((float) this.b) * 1.75f)));
        }
        int i = this.b;
        this.b = i + 1;
        sArr[i] = s;
    }

    public short a(int i) {
        if (i < this.b) {
            return this.a[i];
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.b);
    }

    public short b(int i) {
        if (i >= this.b) {
            throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.b);
        }
        short[] sArr = this.a;
        short s = sArr[i];
        this.b--;
        if (this.c) {
            System.arraycopy(sArr, i + 1, sArr, i, this.b - i);
        } else {
            sArr[i] = sArr[this.b];
        }
        return s;
    }

    public void a() {
        this.b = 0;
    }

    public short[] c(int i) {
        int i2 = this.b + i;
        if (i2 > this.a.length) {
            d(Math.max(8, i2));
        }
        return this.a;
    }

    /* access modifiers changed from: protected */
    public short[] d(int i) {
        short[] sArr = new short[i];
        System.arraycopy(this.a, 0, sArr, 0, Math.min(this.b, sArr.length));
        this.a = sArr;
        return sArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ec)) {
            return false;
        }
        ec ecVar = (ec) obj;
        int i = this.b;
        if (i != ecVar.b) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (this.a[i2] != ecVar.a[i2]) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        if (this.b == 0) {
            return "[]";
        }
        short[] sArr = this.a;
        StringBuilder sb = new StringBuilder(32);
        sb.append('[');
        sb.append(sArr[0]);
        for (int i = 1; i < this.b; i++) {
            sb.append(", ");
            sb.append(sArr[i]);
        }
        sb.append(']');
        return sb.toString();
    }

    public int hashCode() {
        return 42;
    }
}
