package com.google.zxing.common;

import java.util.Arrays;

public final class BitMatrix implements Cloneable {
    private final int[] bits;
    private final int height;
    private final int rowSize;
    private final int width;

    public BitMatrix(int i) {
        this(i, i);
    }

    public BitMatrix(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.width = i;
        this.height = i2;
        this.rowSize = (i + 31) / 32;
        this.bits = new int[(this.rowSize * i2)];
    }

    private BitMatrix(int i, int i2, int i3, int[] iArr) {
        this.width = i;
        this.height = i2;
        this.rowSize = i3;
        this.bits = iArr;
    }

    public static BitMatrix parse(boolean[][] zArr) {
        int length = zArr.length;
        int length2 = zArr[0].length;
        BitMatrix bitMatrix = new BitMatrix(length2, length);
        for (int i = 0; i < length; i++) {
            boolean[] zArr2 = zArr[i];
            for (int i2 = 0; i2 < length2; i2++) {
                if (zArr2[i2]) {
                    bitMatrix.set(i2, i);
                }
            }
        }
        return bitMatrix;
    }

    public static BitMatrix parse(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        boolean[] zArr = new boolean[str.length()];
        int i = 0;
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        int i5 = 0;
        while (i < str.length()) {
            if (str.charAt(i) == 10 || str.charAt(i) == 13) {
                if (i5 > i4) {
                    if (i3 == -1) {
                        i3 = i5 - i4;
                    } else if (i5 - i4 != i3) {
                        throw new IllegalArgumentException("row lengths do not match");
                    }
                    i2++;
                    i4 = i5;
                }
                i++;
            } else if (str.substring(i, str2.length() + i).equals(str2)) {
                i += str2.length();
                zArr[i5] = true;
                i5++;
            } else if (str.substring(i, str3.length() + i).equals(str3)) {
                i += str3.length();
                zArr[i5] = false;
                i5++;
            } else {
                throw new IllegalArgumentException("illegal character encountered: " + str.substring(i));
            }
        }
        if (i5 > i4) {
            if (i3 == -1) {
                i3 = i5 - i4;
            } else if (i5 - i4 != i3) {
                throw new IllegalArgumentException("row lengths do not match");
            }
            i2++;
        }
        BitMatrix bitMatrix = new BitMatrix(i3, i2);
        for (int i6 = 0; i6 < i5; i6++) {
            if (zArr[i6]) {
                bitMatrix.set(i6 % i3, i6 / i3);
            }
        }
        return bitMatrix;
    }

    public boolean get(int i, int i2) {
        return ((this.bits[(this.rowSize * i2) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    public void set(int i, int i2) {
        int i3 = (this.rowSize * i2) + (i / 32);
        int[] iArr = this.bits;
        iArr[i3] = iArr[i3] | (1 << (i & 31));
    }

    public void unset(int i, int i2) {
        int i3 = (this.rowSize * i2) + (i / 32);
        int[] iArr = this.bits;
        iArr[i3] = iArr[i3] & ((1 << (i & 31)) ^ -1);
    }

    public void flip(int i, int i2) {
        int i3 = (this.rowSize * i2) + (i / 32);
        int[] iArr = this.bits;
        iArr[i3] = iArr[i3] ^ (1 << (i & 31));
    }

    public void xor(BitMatrix bitMatrix) {
        if (this.width == bitMatrix.getWidth() && this.height == bitMatrix.getHeight() && this.rowSize == bitMatrix.getRowSize()) {
            BitArray bitArray = new BitArray((this.width / 32) + 1);
            for (int i = 0; i < this.height; i++) {
                int i2 = i * this.rowSize;
                int[] bitArray2 = bitMatrix.getRow(i, bitArray).getBitArray();
                for (int i3 = 0; i3 < this.rowSize; i3++) {
                    int[] iArr = this.bits;
                    int i4 = i2 + i3;
                    iArr[i4] = iArr[i4] ^ bitArray2[i3];
                }
            }
            return;
        }
        throw new IllegalArgumentException("input matrix dimensions do not match");
    }

    public void clear() {
        int length = this.bits.length;
        for (int i = 0; i < length; i++) {
            this.bits[i] = 0;
        }
    }

    public void setRegion(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        } else if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        } else {
            int i5 = i + i3;
            int i6 = i2 + i4;
            if (i6 > this.height || i5 > this.width) {
                throw new IllegalArgumentException("The region must fit inside the matrix");
            }
            while (i2 < i6) {
                int i7 = i2 * this.rowSize;
                for (int i8 = i; i8 < i5; i8++) {
                    int[] iArr = this.bits;
                    int i9 = (i8 / 32) + i7;
                    iArr[i9] = iArr[i9] | (1 << (i8 & 31));
                }
                i2++;
            }
        }
    }

    public BitArray getRow(int i, BitArray bitArray) {
        if (bitArray == null || bitArray.getSize() < this.width) {
            bitArray = new BitArray(this.width);
        } else {
            bitArray.clear();
        }
        int i2 = i * this.rowSize;
        for (int i3 = 0; i3 < this.rowSize; i3++) {
            bitArray.setBulk(i3 << 5, this.bits[i2 + i3]);
        }
        return bitArray;
    }

    public void setRow(int i, BitArray bitArray) {
        System.arraycopy(bitArray.getBitArray(), 0, this.bits, this.rowSize * i, this.rowSize);
    }

    public void rotate180() {
        int width2 = getWidth();
        int height2 = getHeight();
        BitArray bitArray = new BitArray(width2);
        BitArray bitArray2 = new BitArray(width2);
        for (int i = 0; i < (height2 + 1) / 2; i++) {
            bitArray = getRow(i, bitArray);
            bitArray2 = getRow((height2 - 1) - i, bitArray2);
            bitArray.reverse();
            bitArray2.reverse();
            setRow(i, bitArray2);
            setRow((height2 - 1) - i, bitArray);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0041  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0055 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int[] getEnclosingRectangle() {
        /*
            r10 = this;
            r0 = -1
            r1 = 0
            int r3 = r10.width
            int r2 = r10.height
            r4 = r2
            r5 = r3
            r3 = r0
            r2 = r0
            r0 = r1
        L_0x000b:
            int r6 = r10.height
            if (r0 >= r6) goto L_0x0060
            r6 = r1
        L_0x0010:
            int r7 = r10.rowSize
            if (r6 >= r7) goto L_0x005d
            int[] r7 = r10.bits
            int r8 = r10.rowSize
            int r8 = r8 * r0
            int r8 = r8 + r6
            r8 = r7[r8]
            if (r8 == 0) goto L_0x0081
            if (r0 >= r4) goto L_0x0021
            r4 = r0
        L_0x0021:
            if (r0 <= r2) goto L_0x0024
            r2 = r0
        L_0x0024:
            int r7 = r6 << 5
            if (r7 >= r5) goto L_0x007f
            r7 = r1
        L_0x0029:
            int r9 = 31 - r7
            int r9 = r8 << r9
            if (r9 != 0) goto L_0x0032
            int r7 = r7 + 1
            goto L_0x0029
        L_0x0032:
            int r9 = r6 << 5
            int r9 = r9 + r7
            if (r9 >= r5) goto L_0x007f
            int r5 = r6 << 5
            int r5 = r5 + r7
            r7 = r5
        L_0x003b:
            int r5 = r6 << 5
            int r5 = r5 + 31
            if (r5 <= r3) goto L_0x007b
            r5 = 31
        L_0x0043:
            int r9 = r8 >>> r5
            if (r9 != 0) goto L_0x004a
            int r5 = r5 + -1
            goto L_0x0043
        L_0x004a:
            int r8 = r6 << 5
            int r8 = r8 + r5
            if (r8 <= r3) goto L_0x007b
            int r3 = r6 << 5
            int r3 = r3 + r5
            r5 = r4
            r4 = r3
            r3 = r2
        L_0x0055:
            int r2 = r6 + 1
            r6 = r2
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r7
            goto L_0x0010
        L_0x005d:
            int r0 = r0 + 1
            goto L_0x000b
        L_0x0060:
            if (r3 < r5) goto L_0x0064
            if (r2 >= r4) goto L_0x0066
        L_0x0064:
            r0 = 0
        L_0x0065:
            return r0
        L_0x0066:
            r0 = 4
            int[] r0 = new int[r0]
            r0[r1] = r5
            r1 = 1
            r0[r1] = r4
            r1 = 2
            int r3 = r3 - r5
            int r3 = r3 + 1
            r0[r1] = r3
            r1 = 3
            int r2 = r2 - r4
            int r2 = r2 + 1
            r0[r1] = r2
            goto L_0x0065
        L_0x007b:
            r5 = r4
            r4 = r3
            r3 = r2
            goto L_0x0055
        L_0x007f:
            r7 = r5
            goto L_0x003b
        L_0x0081:
            r7 = r5
            r5 = r4
            r4 = r3
            r3 = r2
            goto L_0x0055
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.BitMatrix.getEnclosingRectangle():int[]");
    }

    public int[] getTopLeftOnBit() {
        int i = 0;
        while (i < this.bits.length && this.bits[i] == 0) {
            i++;
        }
        if (i == this.bits.length) {
            return null;
        }
        int i2 = i / this.rowSize;
        int i3 = (i % this.rowSize) << 5;
        int i4 = this.bits[i];
        int i5 = 0;
        while ((i4 << (31 - i5)) == 0) {
            i5++;
        }
        return new int[]{i3 + i5, i2};
    }

    public int[] getBottomRightOnBit() {
        int length = this.bits.length - 1;
        while (length >= 0 && this.bits[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i = length / this.rowSize;
        int i2 = (length % this.rowSize) << 5;
        int i3 = this.bits[length];
        int i4 = 31;
        while ((i3 >>> i4) == 0) {
            i4--;
        }
        return new int[]{i2 + i4, i};
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public int getRowSize() {
        return this.rowSize;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitMatrix)) {
            return false;
        }
        BitMatrix bitMatrix = (BitMatrix) obj;
        if (this.width == bitMatrix.width && this.height == bitMatrix.height && this.rowSize == bitMatrix.rowSize && Arrays.equals(this.bits, bitMatrix.bits)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.width * 31) + this.width) * 31) + this.height) * 31) + this.rowSize) * 31) + Arrays.hashCode(this.bits);
    }

    public String toString() {
        return toString("X ", "  ");
    }

    public String toString(String str, String str2) {
        return buildToString(str, str2, "\n");
    }

    @Deprecated
    public String toString(String str, String str2, String str3) {
        return buildToString(str, str2, str3);
    }

    private String buildToString(String str, String str2, String str3) {
        String str4;
        StringBuilder sb = new StringBuilder(this.height * (this.width + 1));
        for (int i = 0; i < this.height; i++) {
            for (int i2 = 0; i2 < this.width; i2++) {
                if (get(i2, i)) {
                    str4 = str;
                } else {
                    str4 = str2;
                }
                sb.append(str4);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    public BitMatrix clone() {
        return new BitMatrix(this.width, this.height, this.rowSize, (int[]) this.bits.clone());
    }
}
