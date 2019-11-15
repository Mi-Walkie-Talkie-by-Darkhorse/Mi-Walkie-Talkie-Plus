package org.bouncycastle.crypto.engines;

import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.InputDeviceCompat;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class DESEngine implements BlockCipher {
    protected static final int BLOCK_SIZE = 8;
    private static final int[] SP1 = {16843776, 0, 65536, 16843780, 16842756, 66564, 4, 65536, 1024, 16843776, 16843780, 1024, 16778244, 16842756, 16777216, 4, 1028, 16778240, 16778240, 66560, 66560, 16842752, 16842752, 16778244, InputDeviceCompat.SOURCE_TRACKBALL, 16777220, 16777220, InputDeviceCompat.SOURCE_TRACKBALL, 0, 1028, 66564, 16777216, 65536, 16843780, 4, 16842752, 16843776, 16777216, 16777216, 1024, 16842756, 65536, 66560, 16777220, 1024, 4, 16778244, 66564, 16843780, InputDeviceCompat.SOURCE_TRACKBALL, 16842752, 16778244, 16777220, 1028, 66564, 16843776, 1028, 16778240, 16778240, 0, InputDeviceCompat.SOURCE_TRACKBALL, 66560, 0, 16842756};
    private static final int[] SP2 = {-2146402272, -2147450880, 32768, 1081376, 1048576, 32, -2146435040, -2147450848, -2147483616, -2146402272, -2146402304, Integer.MIN_VALUE, -2147450880, 1048576, 32, -2146435040, 1081344, 1048608, -2147450848, 0, Integer.MIN_VALUE, 32768, 1081376, -2146435072, 1048608, -2147483616, 0, 1081344, 32800, -2146402304, -2146435072, 32800, 0, 1081376, -2146435040, 1048576, -2147450848, -2146435072, -2146402304, 32768, -2146435072, -2147450880, 32, -2146402272, 1081376, 32, 32768, Integer.MIN_VALUE, 32800, -2146402304, 1048576, -2147483616, 1048608, -2147450848, -2147483616, 1048608, 1081344, 0, -2147450880, 32800, Integer.MIN_VALUE, -2146435040, -2146402272, 1081344};
    private static final int[] SP3 = {520, 134349312, 0, 134348808, 134218240, 0, 131592, 134218240, 131080, 134217736, 134217736, 131072, 134349320, 131080, 134348800, 520, 134217728, 8, 134349312, 512, 131584, 134348800, 134348808, 131592, 134218248, 131584, 131072, 134218248, 8, 134349320, 512, 134217728, 134349312, 134217728, 131080, 520, 131072, 134349312, 134218240, 0, 512, 131080, 134349320, 134218240, 134217736, 512, 0, 134348808, 134218248, 131072, 134217728, 134349320, 8, 131592, 131584, 134217736, 134348800, 134218248, 520, 134348800, 131592, 8, 134348808, 131584};
    private static final int[] SP4 = {8396801, 8321, 8321, 128, 8396928, 8388737, 8388609, 8193, 0, 8396800, 8396800, 8396929, 129, 0, 8388736, 8388609, 1, 8192, 8388608, 8396801, 128, 8388608, 8193, 8320, 8388737, 1, 8320, 8388736, 8192, 8396928, 8396929, 129, 8388736, 8388609, 8396800, 8396929, 129, 0, 0, 8396800, 8320, 8388736, 8388737, 1, 8396801, 8321, 8321, 128, 8396929, 129, 1, 8192, 8388609, 8193, 8396928, 8388737, 8193, 8320, 8388608, 8396801, 128, 8388608, 8192, 8396928};
    private static final int[] SP5 = {256, 34078976, 34078720, 1107296512, 524288, 256, 1073741824, 34078720, 1074266368, 524288, 33554688, 1074266368, 1107296512, 1107820544, 524544, 1073741824, 33554432, 1074266112, 1074266112, 0, 1073742080, 1107820800, 1107820800, 33554688, 1107820544, 1073742080, 0, 1107296256, 34078976, 33554432, 1107296256, 524544, 524288, 1107296512, 256, 33554432, 1073741824, 34078720, 1107296512, 1074266368, 33554688, 1073741824, 1107820544, 34078976, 1074266368, 256, 33554432, 1107820544, 1107820800, 524544, 1107296256, 1107820800, 34078720, 0, 1074266112, 1107296256, 524544, 33554688, 1073742080, 524288, 0, 1074266112, 34078976, 1073742080};
    private static final int[] SP6 = {536870928, 541065216, 16384, 541081616, 541065216, 16, 541081616, 4194304, 536887296, 4210704, 4194304, 536870928, 4194320, 536887296, PKIFailureInfo.duplicateCertReq, 16400, 0, 4194320, 536887312, 16384, 4210688, 536887312, 16, 541065232, 541065232, 0, 4210704, 541081600, 16400, 4210688, 541081600, PKIFailureInfo.duplicateCertReq, 536887296, 16, 541065232, 4210688, 541081616, 4194304, 16400, 536870928, 4194304, 536887296, PKIFailureInfo.duplicateCertReq, 16400, 536870928, 541081616, 4210688, 541065216, 4210704, 541081600, 0, 541065232, 16, 16384, 541065216, 4210704, 16384, 4194320, 536887312, 0, 541081600, PKIFailureInfo.duplicateCertReq, 4194320, 536887312};
    private static final int[] SP7 = {2097152, 69206018, 67110914, 0, 2048, 67110914, 2099202, 69208064, 69208066, 2097152, 0, 67108866, 2, 67108864, 69206018, 2050, 67110912, 2099202, 2097154, 67110912, 67108866, 69206016, 69208064, 2097154, 69206016, 2048, 2050, 69208066, 2099200, 2, 67108864, 2099200, 67108864, 2099200, 2097152, 67110914, 67110914, 69206018, 69206018, 2, 2097154, 67108864, 67110912, 2097152, 69208064, 2050, 2099202, 69208064, 2050, 67108866, 69208066, 69206016, 2099200, 0, 2, 69208066, 0, 2099202, 69206016, 2048, 67108866, 67110912, 2048, 2097154};
    private static final int[] SP8 = {268439616, 4096, 262144, 268701760, 268435456, 268439616, 64, 268435456, 262208, 268697600, 268701760, 266240, 268701696, 266304, 4096, 64, 268697600, 268435520, 268439552, 4160, 266240, 262208, 268697664, 268701696, 4160, 0, 0, 268697664, 268435520, 268439552, 266304, 262144, 266304, 262144, 268701696, 4096, 64, 268697664, 4096, 266304, 268439552, 64, 268435520, 268697600, 268697664, 268435456, 262144, 268439616, 0, 268701760, 262208, 268435520, 268697600, 268439552, 268439616, 0, 268701760, 266240, 266240, 4160, 4160, 262208, 268435456, 268701696};
    private static final int[] bigbyte = {8388608, 4194304, 2097152, 1048576, 524288, 262144, 131072, 65536, 32768, 16384, 8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1};
    private static final short[] bytebit = {128, 64, 32, 16, 8, 4, 2, 1};
    private static final byte[] pc1 = {56, 48, 40, HttpConstants.SP, 24, Tnaf.POW_2_WIDTH, 8, 0, 57, 49, 41, 33, 25, 17, 9, 1, HttpConstants.COLON, 50, 42, HttpConstants.DOUBLE_QUOTE, 26, 18, 10, 2, HttpConstants.SEMICOLON, 51, 43, 35, 62, 54, 46, 38, 30, 22, 14, 6, HttpConstants.EQUALS, 53, 45, 37, 29, 21, HttpConstants.CR, 5, 60, 52, HttpConstants.COMMA, 36, 28, 20, 12, 4, 27, 19, 11, 3};
    private static final byte[] pc2 = {HttpConstants.CR, Tnaf.POW_2_WIDTH, 10, 23, 0, 4, 2, 27, 14, 5, 20, 9, 22, 18, 11, 3, 25, 7, 15, 6, 26, 19, 12, 1, 40, 51, 30, 36, 46, 54, 29, 39, 50, HttpConstants.COMMA, HttpConstants.SP, 47, 43, 48, 38, 55, 33, 52, 45, 41, 49, 35, 28, 31};
    private static final byte[] totrot = {1, 2, 4, 6, 8, 10, 12, 14, 15, 17, 19, 21, 23, 25, 27, 28};
    private int[] workingKey = null;

    /* access modifiers changed from: protected */
    public void desFunc(int[] iArr, byte[] bArr, int i, byte[] bArr2, int i2) {
        byte b = ((bArr[i + 0] & 255) << 24) | ((bArr[i + 1] & 255) << Tnaf.POW_2_WIDTH) | ((bArr[i + 2] & 255) << 8) | (bArr[i + 3] & 255);
        byte b2 = ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << Tnaf.POW_2_WIDTH) | ((bArr[i + 6] & 255) << 8) | (bArr[i + 7] & 255);
        byte b3 = ((b >>> 4) ^ b2) & 252645135;
        byte b4 = b2 ^ b3;
        byte b5 = b ^ (b3 << 4);
        byte b6 = ((b5 >>> Tnaf.POW_2_WIDTH) ^ b4) & 65535;
        byte b7 = b4 ^ b6;
        byte b8 = b5 ^ (b6 << Tnaf.POW_2_WIDTH);
        byte b9 = ((b7 >>> 2) ^ b8) & 858993459;
        byte b10 = b8 ^ b9;
        byte b11 = b7 ^ (b9 << 2);
        byte b12 = ((b11 >>> 8) ^ b10) & 16711935;
        byte b13 = b10 ^ b12;
        byte b14 = b11 ^ (b12 << 8);
        byte b15 = (((b14 >>> 31) & 1) | (b14 << 1)) & -1;
        byte b16 = (b13 ^ b15) & -1431655766;
        byte b17 = b13 ^ b16;
        byte b18 = b16 ^ b15;
        int i3 = (((b17 >>> 31) & 1) | (b17 << 1)) & -1;
        for (int i4 = 0; i4 < 8; i4++) {
            int i5 = ((b18 << 28) | (b18 >>> 4)) ^ iArr[(i4 * 4) + 0];
            int i6 = SP1[(i5 >>> 24) & 63] | SP7[i5 & 63] | SP5[(i5 >>> 8) & 63] | SP3[(i5 >>> 16) & 63];
            byte b19 = iArr[(i4 * 4) + 1] ^ b18;
            i3 ^= (((i6 | SP8[b19 & 63]) | SP6[(b19 >>> 8) & 63]) | SP4[(b19 >>> Tnaf.POW_2_WIDTH) & 63]) | SP2[(b19 >>> 24) & 63];
            int i7 = ((i3 << 28) | (i3 >>> 4)) ^ iArr[(i4 * 4) + 2];
            byte b20 = SP1[(i7 >>> 24) & 63] | SP7[i7 & 63] | SP5[(i7 >>> 8) & 63] | SP3[(i7 >>> 16) & 63];
            int i8 = iArr[(i4 * 4) + 3] ^ i3;
            b18 ^= (((b20 | SP8[i8 & 63]) | SP6[(i8 >>> 8) & 63]) | SP4[(i8 >>> 16) & 63]) | SP2[(i8 >>> 24) & 63];
        }
        int i9 = (b18 << 31) | (b18 >>> 1);
        int i10 = (i3 ^ i9) & -1431655766;
        int i11 = i3 ^ i10;
        int i12 = i9 ^ i10;
        int i13 = (i11 >>> 1) | (i11 << 31);
        int i14 = ((i13 >>> 8) ^ i12) & 16711935;
        int i15 = i12 ^ i14;
        int i16 = i13 ^ (i14 << 8);
        int i17 = ((i16 >>> 2) ^ i15) & 858993459;
        int i18 = i15 ^ i17;
        int i19 = i16 ^ (i17 << 2);
        int i20 = ((i18 >>> 16) ^ i19) & SupportMenu.USER_MASK;
        int i21 = i19 ^ i20;
        int i22 = i18 ^ (i20 << 16);
        int i23 = ((i22 >>> 4) ^ i21) & 252645135;
        int i24 = i21 ^ i23;
        int i25 = i22 ^ (i23 << 4);
        bArr2[i2 + 0] = (byte) ((i25 >>> 24) & 255);
        bArr2[i2 + 1] = (byte) ((i25 >>> 16) & 255);
        bArr2[i2 + 2] = (byte) ((i25 >>> 8) & 255);
        bArr2[i2 + 3] = (byte) (i25 & 255);
        bArr2[i2 + 4] = (byte) ((i24 >>> 24) & 255);
        bArr2[i2 + 5] = (byte) ((i24 >>> 16) & 255);
        bArr2[i2 + 6] = (byte) ((i24 >>> 8) & 255);
        bArr2[i2 + 7] = (byte) (i24 & 255);
    }

    /* access modifiers changed from: protected */
    public int[] generateWorkingKey(boolean z, byte[] bArr) {
        int[] iArr = new int[32];
        boolean[] zArr = new boolean[56];
        boolean[] zArr2 = new boolean[56];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 56) {
                break;
            }
            byte b = pc1[i2];
            zArr[i2] = (bytebit[b & 7] & bArr[b >>> 3]) != 0;
            i = i2 + 1;
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= 16) {
                break;
            }
            int i5 = z ? i4 << 1 : (15 - i4) << 1;
            int i6 = i5 + 1;
            iArr[i6] = 0;
            iArr[i5] = 0;
            for (int i7 = 0; i7 < 28; i7++) {
                int i8 = totrot[i4] + i7;
                if (i8 < 28) {
                    zArr2[i7] = zArr[i8];
                } else {
                    zArr2[i7] = zArr[i8 - 28];
                }
            }
            for (int i9 = 28; i9 < 56; i9++) {
                int i10 = totrot[i4] + i9;
                if (i10 < 56) {
                    zArr2[i9] = zArr[i10];
                } else {
                    zArr2[i9] = zArr[i10 - 28];
                }
            }
            for (int i11 = 0; i11 < 24; i11++) {
                if (zArr2[pc2[i11]]) {
                    iArr[i5] = iArr[i5] | bigbyte[i11];
                }
                if (zArr2[pc2[i11 + 24]]) {
                    iArr[i6] = iArr[i6] | bigbyte[i11];
                }
            }
            i3 = i4 + 1;
        }
        for (int i12 = 0; i12 != 32; i12 += 2) {
            int i13 = iArr[i12];
            int i14 = iArr[i12 + 1];
            iArr[i12] = ((16515072 & i13) << 6) | ((i13 & 4032) << 10) | ((16515072 & i14) >>> 10) | ((i14 & 4032) >>> 6);
            iArr[i12 + 1] = ((i13 & 63) << 16) | ((258048 & i13) << 12) | ((258048 & i14) >>> 4) | (i14 & 63);
        }
        return iArr;
    }

    public String getAlgorithmName() {
        return "DES";
    }

    public int getBlockSize() {
        return 8;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("invalid parameter passed to DES init - " + cipherParameters.getClass().getName());
        } else if (((KeyParameter) cipherParameters).getKey().length > 8) {
            throw new IllegalArgumentException("DES key too long - should be 8 bytes");
        } else {
            this.workingKey = generateWorkingKey(z, ((KeyParameter) cipherParameters).getKey());
        }
    }

    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.workingKey == null) {
            throw new IllegalStateException("DES engine not initialised");
        } else if (i + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i2 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            desFunc(this.workingKey, bArr, i, bArr2, i2);
            return 8;
        }
    }

    public void reset() {
    }
}
