package org.bouncycastle.crypto.engines;

import java.math.BigInteger;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

public class CramerShoupCiphertext {
    BigInteger e;
    BigInteger u1;
    BigInteger u2;
    BigInteger v;

    public CramerShoupCiphertext() {
    }

    public CramerShoupCiphertext(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.u1 = bigInteger;
        this.u2 = bigInteger2;
        this.e = bigInteger3;
        this.v = bigInteger4;
    }

    public CramerShoupCiphertext(byte[] bArr) {
        int bigEndianToInt = Pack.bigEndianToInt(bArr, 0);
        int i = bigEndianToInt + 4;
        this.u1 = new BigInteger(Arrays.copyOfRange(bArr, 4, bigEndianToInt + 4));
        int bigEndianToInt2 = Pack.bigEndianToInt(bArr, i);
        int i2 = i + 4;
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i2, i2 + bigEndianToInt2);
        int i3 = i2 + bigEndianToInt2;
        this.u2 = new BigInteger(copyOfRange);
        int bigEndianToInt3 = Pack.bigEndianToInt(bArr, i3);
        int i4 = i3 + 4;
        byte[] copyOfRange2 = Arrays.copyOfRange(bArr, i4, i4 + bigEndianToInt3);
        int i5 = i4 + bigEndianToInt3;
        this.e = new BigInteger(copyOfRange2);
        int bigEndianToInt4 = Pack.bigEndianToInt(bArr, i5);
        int i6 = i5 + 4;
        byte[] copyOfRange3 = Arrays.copyOfRange(bArr, i6, i6 + bigEndianToInt4);
        int i7 = i6 + bigEndianToInt4;
        this.v = new BigInteger(copyOfRange3);
    }

    public BigInteger getE() {
        return this.e;
    }

    public BigInteger getU1() {
        return this.u1;
    }

    public BigInteger getU2() {
        return this.u2;
    }

    public BigInteger getV() {
        return this.v;
    }

    public void setE(BigInteger bigInteger) {
        this.e = bigInteger;
    }

    public void setU1(BigInteger bigInteger) {
        this.u1 = bigInteger;
    }

    public void setU2(BigInteger bigInteger) {
        this.u2 = bigInteger;
    }

    public void setV(BigInteger bigInteger) {
        this.v = bigInteger;
    }

    public byte[] toByteArray() {
        byte[] byteArray = this.u1.toByteArray();
        int length = byteArray.length;
        byte[] byteArray2 = this.u2.toByteArray();
        int length2 = byteArray2.length;
        byte[] byteArray3 = this.e.toByteArray();
        int length3 = byteArray3.length;
        byte[] byteArray4 = this.v.toByteArray();
        int length4 = byteArray4.length;
        byte[] bArr = new byte[(length + length2 + length3 + length4 + 16)];
        Pack.intToBigEndian(length, bArr, 0);
        System.arraycopy(byteArray, 0, bArr, 4, length);
        int i = length + 4;
        Pack.intToBigEndian(length2, bArr, i);
        int i2 = i + 4;
        System.arraycopy(byteArray2, 0, bArr, i2, length2);
        int i3 = i2 + length2;
        Pack.intToBigEndian(length3, bArr, i3);
        int i4 = i3 + 4;
        System.arraycopy(byteArray3, 0, bArr, i4, length3);
        int i5 = i4 + length3;
        Pack.intToBigEndian(length4, bArr, i5);
        int i6 = i5 + 4;
        System.arraycopy(byteArray4, 0, bArr, i6, length4);
        int i7 = i6 + length4;
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("u1: " + this.u1.toString());
        stringBuffer.append("\nu2: " + this.u2.toString());
        stringBuffer.append("\ne: " + this.e.toString());
        stringBuffer.append("\nv: " + this.v.toString());
        return stringBuffer.toString();
    }
}
