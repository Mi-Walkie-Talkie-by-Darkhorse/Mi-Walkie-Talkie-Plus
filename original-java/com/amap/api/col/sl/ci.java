package com.amap.api.col.sl;

/* compiled from: HashCodeBuilder */
public final class ci {
    private final int a;
    private int b;

    public ci() {
        this.b = 0;
        this.a = 37;
        this.b = 17;
    }

    private ci a(long j) {
        this.b = (this.b * this.a) + ((int) ((j >> 32) ^ j));
        return this;
    }

    public final ci a(Object obj) {
        int i = 0;
        if (obj == null) {
            this.b *= this.a;
        } else if (!obj.getClass().isArray()) {
            this.b = (this.b * this.a) + obj.hashCode();
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            if (jArr == null) {
                this.b *= this.a;
            } else {
                while (i < jArr.length) {
                    a(jArr[i]);
                    i++;
                }
            }
        } else if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            if (iArr == null) {
                this.b *= this.a;
            } else {
                while (i < iArr.length) {
                    this.b = iArr[i] + (this.b * this.a);
                    i++;
                }
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            if (sArr == null) {
                this.b *= this.a;
            } else {
                while (i < sArr.length) {
                    this.b = sArr[i] + (this.b * this.a);
                    i++;
                }
            }
        } else if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            if (cArr == null) {
                this.b *= this.a;
            } else {
                while (i < cArr.length) {
                    this.b = cArr[i] + (this.b * this.a);
                    i++;
                }
            }
        } else if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (bArr == null) {
                this.b *= this.a;
            } else {
                while (i < bArr.length) {
                    this.b = bArr[i] + (this.b * this.a);
                    i++;
                }
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            if (dArr == null) {
                this.b *= this.a;
            } else {
                while (i < dArr.length) {
                    a(Double.doubleToLongBits(dArr[i]));
                    i++;
                }
            }
        } else if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            if (fArr == null) {
                this.b *= this.a;
            } else {
                while (i < fArr.length) {
                    this.b = Float.floatToIntBits(fArr[i]) + (this.b * this.a);
                    i++;
                }
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            if (zArr == null) {
                this.b *= this.a;
            } else {
                for (int i2 = 0; i2 < zArr.length; i2++) {
                    this.b = (zArr[i2] ? 0 : 1) + (this.b * this.a);
                }
            }
        } else {
            a((Object[]) obj);
        }
        return this;
    }

    public final ci a(Object[] objArr) {
        if (objArr == null) {
            this.b *= this.a;
        } else {
            for (Object a2 : objArr) {
                a(a2);
            }
        }
        return this;
    }

    public final int a() {
        return this.b;
    }

    public final int hashCode() {
        return this.b;
    }
}
