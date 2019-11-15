package org.bouncycastle.pqc.math.linearalgebra;

public class GF2mVector extends Vector {
    private GF2mField field;
    private int[] vector;

    /* JADX WARNING: type inference failed for: r3v11, types: [int] */
    /* JADX WARNING: type inference failed for: r4v7 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public GF2mVector(org.bouncycastle.pqc.math.linearalgebra.GF2mField r9, byte[] r10) {
        /*
            r8 = this;
            r2 = 0
            r8.<init>()
            org.bouncycastle.pqc.math.linearalgebra.GF2mField r0 = new org.bouncycastle.pqc.math.linearalgebra.GF2mField
            r0.<init>(r9)
            r8.field = r0
            r1 = 8
            r0 = 1
        L_0x000e:
            int r3 = r9.getDegree()
            if (r3 <= r1) goto L_0x0019
            int r0 = r0 + 1
            int r1 = r1 + 8
            goto L_0x000e
        L_0x0019:
            int r3 = r10.length
            int r3 = r3 % r0
            if (r3 == 0) goto L_0x0025
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Byte array is not an encoded vector over the given finite field."
            r0.<init>(r1)
            throw r0
        L_0x0025:
            int r3 = r10.length
            int r0 = r3 / r0
            r8.length = r0
            int r0 = r8.length
            int[] r0 = new int[r0]
            r8.vector = r0
            r0 = r2
            r3 = r2
        L_0x0032:
            int[] r4 = r8.vector
            int r4 = r4.length
            if (r0 >= r4) goto L_0x0062
            r4 = r2
        L_0x0038:
            if (r4 >= r1) goto L_0x004d
            int[] r6 = r8.vector
            r7 = r6[r0]
            int r5 = r3 + 1
            byte r3 = r10[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << r4
            r3 = r3 | r7
            r6[r0] = r3
            int r3 = r4 + 8
            r4 = r3
            r3 = r5
            goto L_0x0038
        L_0x004d:
            int[] r4 = r8.vector
            r4 = r4[r0]
            boolean r4 = r9.isElementOfThisField(r4)
            if (r4 != 0) goto L_0x005f
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Byte array is not an encoded vector over the given finite field."
            r0.<init>(r1)
            throw r0
        L_0x005f:
            int r0 = r0 + 1
            goto L_0x0032
        L_0x0062:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.math.linearalgebra.GF2mVector.<init>(org.bouncycastle.pqc.math.linearalgebra.GF2mField, byte[]):void");
    }

    public GF2mVector(GF2mField gF2mField, int[] iArr) {
        this.field = gF2mField;
        this.length = iArr.length;
        for (int length = iArr.length - 1; length >= 0; length--) {
            if (!gF2mField.isElementOfThisField(iArr[length])) {
                throw new ArithmeticException("Element array is not specified over the given finite field.");
            }
        }
        this.vector = IntUtils.clone(iArr);
    }

    public GF2mVector(GF2mVector gF2mVector) {
        this.field = new GF2mField(gF2mVector.field);
        this.length = gF2mVector.length;
        this.vector = IntUtils.clone(gF2mVector.vector);
    }

    public Vector add(Vector vector2) {
        throw new RuntimeException("not implemented");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GF2mVector)) {
            return false;
        }
        GF2mVector gF2mVector = (GF2mVector) obj;
        if (this.field.equals(gF2mVector.field)) {
            return IntUtils.equals(this.vector, gF2mVector.vector);
        }
        return false;
    }

    public byte[] getEncoded() {
        int i = 8;
        int i2 = 1;
        while (this.field.getDegree() > i) {
            i2++;
            i += 8;
        }
        byte[] bArr = new byte[(i2 * this.vector.length)];
        int i3 = 0;
        for (int i4 = 0; i4 < this.vector.length; i4++) {
            int i5 = 0;
            while (i5 < i) {
                int i6 = i3 + 1;
                bArr[i3] = (byte) (this.vector[i4] >>> i5);
                i5 += 8;
                i3 = i6;
            }
        }
        return bArr;
    }

    public GF2mField getField() {
        return this.field;
    }

    public int[] getIntArrayForm() {
        return IntUtils.clone(this.vector);
    }

    public int hashCode() {
        return (this.field.hashCode() * 31) + this.vector.hashCode();
    }

    public boolean isZero() {
        for (int length = this.vector.length - 1; length >= 0; length--) {
            if (this.vector[length] != 0) {
                return false;
            }
        }
        return true;
    }

    public Vector multiply(Permutation permutation) {
        int[] vector2 = permutation.getVector();
        if (this.length != vector2.length) {
            throw new ArithmeticException("permutation size and vector size mismatch");
        }
        int[] iArr = new int[this.length];
        for (int i = 0; i < vector2.length; i++) {
            iArr[i] = this.vector[vector2[i]];
        }
        return new GF2mVector(this.field, iArr);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.vector.length; i++) {
            for (int i2 = 0; i2 < this.field.getDegree(); i2++) {
                if (((1 << (i2 & 31)) & this.vector[i]) != 0) {
                    stringBuffer.append('1');
                } else {
                    stringBuffer.append('0');
                }
            }
            stringBuffer.append(' ');
        }
        return stringBuffer.toString();
    }
}
