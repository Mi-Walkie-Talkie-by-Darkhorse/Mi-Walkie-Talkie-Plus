package org.bouncycastle.pqc.math.linearalgebra;

import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.data.Error;
import com.tencent.connect.common.Constants;
import java.math.BigInteger;
import java.util.Random;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

public class GF2Polynomial {
    private static final int[] bitMask = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, PKIFailureInfo.duplicateCertReq, 1073741824, Integer.MIN_VALUE, 0};
    private static final boolean[] parity = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    private static Random rand = new Random();
    private static final int[] reverseRightMask = {0, 1, 3, 7, 15, 31, 63, 127, 255, Error.E_WTSDK_IS_BUSY, GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW, 2047, 4095, 8191, 16383, 32767, SupportMenu.USER_MASK, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, ViewCompat.MEASURED_SIZE_MASK, 33554431, 67108863, 134217727, 268435455, 536870911, 1073741823, Integer.MAX_VALUE, -1};
    private static final short[] squaringTable = {0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85, 256, 257, 260, 261, 272, 273, 276, 277, 320, 321, 324, 325, 336, 337, 340, 341, 1024, 1025, 1028, 1029, 1040, 1041, 1044, 1045, 1088, 1089, 1092, 1093, 1104, 1105, 1108, 1109, 1280, 1281, 1284, 1285, 1296, 1297, 1300, 1301, 1344, 1345, 1348, 1349, 1360, 1361, 1364, 1365, 4096, 4097, 4100, 4101, 4112, 4113, 4116, 4117, 4160, 4161, 4164, 4165, 4176, 4177, 4180, 4181, 4352, 4353, 4356, 4357, 4368, 4369, 4372, 4373, 4416, 4417, 4420, 4421, 4432, 4433, 4436, 4437, 5120, 5121, 5124, 5125, 5136, 5137, 5140, 5141, 5184, 5185, 5188, 5189, 5200, 5201, 5204, 5205, 5376, 5377, 5380, 5381, 5392, 5393, 5396, 5397, 5440, 5441, 5444, 5445, 5456, 5457, 5460, 5461, 16384, 16385, 16388, 16389, 16400, 16401, 16404, 16405, 16448, 16449, 16452, 16453, 16464, 16465, 16468, 16469, 16640, 16641, 16644, 16645, 16656, 16657, 16660, 16661, 16704, 16705, 16708, 16709, 16720, 16721, 16724, 16725, 17408, 17409, 17412, 17413, 17424, 17425, 17428, 17429, 17472, 17473, 17476, 17477, 17488, 17489, 17492, 17493, 17664, 17665, 17668, 17669, 17680, 17681, 17684, 17685, 17728, 17729, 17732, 17733, 17744, 17745, 17748, 17749, 20480, 20481, 20484, 20485, 20496, 20497, 20500, 20501, 20544, 20545, 20548, 20549, 20560, 20561, 20564, 20565, 20736, 20737, 20740, 20741, 20752, 20753, 20756, 20757, 20800, 20801, 20804, 20805, 20816, 20817, 20820, 20821, 21504, 21505, 21508, 21509, 21520, 21521, 21524, 21525, 21568, 21569, 21572, 21573, 21584, 21585, 21588, 21589, 21760, 21761, 21764, 21765, 21776, 21777, 21780, 21781, 21824, 21825, 21828, 21829, 21840, 21841, 21844, 21845};
    private int blocks;
    private int len;
    private int[] value;

    public GF2Polynomial(int i) {
        if (i < 1) {
            i = 1;
        }
        this.blocks = ((i - 1) >> 5) + 1;
        this.value = new int[this.blocks];
        this.len = i;
    }

    public GF2Polynomial(int i, String str) {
        if (i < 1) {
            i = 1;
        }
        this.blocks = ((i - 1) >> 5) + 1;
        this.value = new int[this.blocks];
        this.len = i;
        if (str.equalsIgnoreCase("ZERO")) {
            assignZero();
        } else if (str.equalsIgnoreCase("ONE")) {
            assignOne();
        } else if (str.equalsIgnoreCase("RANDOM")) {
            randomize();
        } else if (str.equalsIgnoreCase("X")) {
            assignX();
        } else if (str.equalsIgnoreCase("ALL")) {
            assignAll();
        } else {
            throw new IllegalArgumentException("Error: GF2Polynomial was called using " + str + " as value!");
        }
    }

    public GF2Polynomial(int i, BigInteger bigInteger) {
        byte[] bArr;
        if (i < 1) {
            i = 1;
        }
        this.blocks = ((i - 1) >> 5) + 1;
        this.value = new int[this.blocks];
        this.len = i;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] == 0) {
            byte[] bArr2 = new byte[(byteArray.length - 1)];
            System.arraycopy(byteArray, 1, bArr2, 0, bArr2.length);
            bArr = bArr2;
        } else {
            bArr = byteArray;
        }
        int length = bArr.length & 3;
        int length2 = ((bArr.length - 1) >> 2) + 1;
        for (int i2 = 0; i2 < length; i2++) {
            int[] iArr = this.value;
            int i3 = length2 - 1;
            iArr[i3] = iArr[i3] | ((bArr[i2] & 255) << (((length - 1) - i2) << 3));
        }
        for (int i4 = 0; i4 <= ((bArr.length - 4) >> 2); i4++) {
            int length3 = (bArr.length - 1) - (i4 << 2);
            this.value[i4] = bArr[length3] & 255;
            int[] iArr2 = this.value;
            iArr2[i4] = iArr2[i4] | ((bArr[length3 - 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            int[] iArr3 = this.value;
            iArr3[i4] = iArr3[i4] | ((bArr[length3 - 2] << Tnaf.POW_2_WIDTH) & 16711680);
            int[] iArr4 = this.value;
            iArr4[i4] = ((bArr[length3 - 3] << 24) & ViewCompat.MEASURED_STATE_MASK) | iArr4[i4];
        }
        if ((this.len & 31) != 0) {
            int[] iArr5 = this.value;
            int i5 = this.blocks - 1;
            iArr5[i5] = iArr5[i5] & reverseRightMask[this.len & 31];
        }
        reduceN();
    }

    public GF2Polynomial(int i, Random random) {
        if (i < 1) {
            i = 1;
        }
        this.blocks = ((i - 1) >> 5) + 1;
        this.value = new int[this.blocks];
        this.len = i;
        randomize(random);
    }

    public GF2Polynomial(int i, byte[] bArr) {
        if (i < 1) {
            i = 1;
        }
        this.blocks = ((i - 1) >> 5) + 1;
        this.value = new int[this.blocks];
        this.len = i;
        int min = Math.min(((bArr.length - 1) >> 2) + 1, this.blocks);
        for (int i2 = 0; i2 < min - 1; i2++) {
            int length = (bArr.length - (i2 << 2)) - 1;
            this.value[i2] = bArr[length] & 255;
            int[] iArr = this.value;
            iArr[i2] = iArr[i2] | ((bArr[length - 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            int[] iArr2 = this.value;
            iArr2[i2] = iArr2[i2] | ((bArr[length - 2] << Tnaf.POW_2_WIDTH) & 16711680);
            int[] iArr3 = this.value;
            iArr3[i2] = ((bArr[length - 3] << 24) & ViewCompat.MEASURED_STATE_MASK) | iArr3[i2];
        }
        int i3 = min - 1;
        int length2 = (bArr.length - (i3 << 2)) - 1;
        this.value[i3] = bArr[length2] & 255;
        if (length2 > 0) {
            int[] iArr4 = this.value;
            iArr4[i3] = iArr4[i3] | ((bArr[length2 - 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
        }
        if (length2 > 1) {
            int[] iArr5 = this.value;
            iArr5[i3] = iArr5[i3] | ((bArr[length2 - 2] << Tnaf.POW_2_WIDTH) & 16711680);
        }
        if (length2 > 2) {
            int[] iArr6 = this.value;
            iArr6[i3] = ((bArr[length2 - 3] << 24) & ViewCompat.MEASURED_STATE_MASK) | iArr6[i3];
        }
        zeroUnusedBits();
        reduceN();
    }

    public GF2Polynomial(int i, int[] iArr) {
        if (i < 1) {
            i = 1;
        }
        this.blocks = ((i - 1) >> 5) + 1;
        this.value = new int[this.blocks];
        this.len = i;
        System.arraycopy(iArr, 0, this.value, 0, Math.min(this.blocks, iArr.length));
        zeroUnusedBits();
    }

    public GF2Polynomial(GF2Polynomial gF2Polynomial) {
        this.len = gF2Polynomial.len;
        this.blocks = gF2Polynomial.blocks;
        this.value = IntUtils.clone(gF2Polynomial.value);
    }

    private void doShiftBlocksLeft(int i) {
        if (this.blocks <= this.value.length) {
            for (int i2 = this.blocks - 1; i2 >= i; i2--) {
                this.value[i2] = this.value[i2 - i];
            }
            for (int i3 = 0; i3 < i; i3++) {
                this.value[i3] = 0;
            }
            return;
        }
        int[] iArr = new int[this.blocks];
        System.arraycopy(this.value, 0, iArr, i, this.blocks - i);
        this.value = null;
        this.value = iArr;
    }

    private GF2Polynomial karaMult(GF2Polynomial gF2Polynomial) {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.len << 1);
        if (this.len <= 32) {
            gF2Polynomial2.value = mult32(this.value[0], gF2Polynomial.value[0]);
        } else if (this.len <= 64) {
            gF2Polynomial2.value = mult64(this.value, gF2Polynomial.value);
        } else if (this.len <= 128) {
            gF2Polynomial2.value = mult128(this.value, gF2Polynomial.value);
        } else if (this.len <= 256) {
            gF2Polynomial2.value = mult256(this.value, gF2Polynomial.value);
        } else if (this.len <= 512) {
            gF2Polynomial2.value = mult512(this.value, gF2Polynomial.value);
        } else {
            int i = bitMask[IntegerFunctions.floorLog(this.len - 1)];
            GF2Polynomial lower = lower(((i - 1) >> 5) + 1);
            GF2Polynomial upper = upper(((i - 1) >> 5) + 1);
            GF2Polynomial lower2 = gF2Polynomial.lower(((i - 1) >> 5) + 1);
            GF2Polynomial upper2 = gF2Polynomial.upper(((i - 1) >> 5) + 1);
            GF2Polynomial karaMult = upper.karaMult(upper2);
            GF2Polynomial karaMult2 = lower.karaMult(lower2);
            lower.addToThis(upper);
            lower2.addToThis(upper2);
            GF2Polynomial karaMult3 = lower.karaMult(lower2);
            gF2Polynomial2.shiftLeftAddThis(karaMult, i << 1);
            gF2Polynomial2.shiftLeftAddThis(karaMult, i);
            gF2Polynomial2.shiftLeftAddThis(karaMult3, i);
            gF2Polynomial2.shiftLeftAddThis(karaMult2, i);
            gF2Polynomial2.addToThis(karaMult2);
        }
        return gF2Polynomial2;
    }

    private GF2Polynomial lower(int i) {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(i << 5);
        System.arraycopy(this.value, 0, gF2Polynomial.value, 0, Math.min(i, this.blocks));
        return gF2Polynomial;
    }

    private static int[] mult128(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[8];
        int[] iArr4 = new int[2];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(2, iArr.length));
        int[] iArr5 = new int[2];
        if (iArr.length > 2) {
            System.arraycopy(iArr, 2, iArr5, 0, Math.min(2, iArr.length - 2));
        }
        int[] iArr6 = new int[2];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(2, iArr2.length));
        int[] iArr7 = new int[2];
        if (iArr2.length > 2) {
            System.arraycopy(iArr2, 2, iArr7, 0, Math.min(2, iArr2.length - 2));
        }
        if (iArr5[1] != 0 || iArr7[1] != 0) {
            int[] mult64 = mult64(iArr5, iArr7);
            iArr3[7] = iArr3[7] ^ mult64[3];
            iArr3[6] = iArr3[6] ^ mult64[2];
            iArr3[5] = iArr3[5] ^ (mult64[1] ^ mult64[3]);
            iArr3[4] = iArr3[4] ^ (mult64[0] ^ mult64[2]);
            iArr3[3] = iArr3[3] ^ mult64[1];
            iArr3[2] = mult64[0] ^ iArr3[2];
        } else if (!(iArr5[0] == 0 && iArr7[0] == 0)) {
            int[] mult32 = mult32(iArr5[0], iArr7[0]);
            iArr3[5] = iArr3[5] ^ mult32[1];
            iArr3[4] = iArr3[4] ^ mult32[0];
            iArr3[3] = iArr3[3] ^ mult32[1];
            iArr3[2] = mult32[0] ^ iArr3[2];
        }
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        iArr7[0] = iArr7[0] ^ iArr6[0];
        iArr7[1] = iArr7[1] ^ iArr6[1];
        if (iArr5[1] == 0 && iArr7[1] == 0) {
            int[] mult322 = mult32(iArr5[0], iArr7[0]);
            iArr3[3] = iArr3[3] ^ mult322[1];
            iArr3[2] = mult322[0] ^ iArr3[2];
        } else {
            int[] mult642 = mult64(iArr5, iArr7);
            iArr3[5] = iArr3[5] ^ mult642[3];
            iArr3[4] = iArr3[4] ^ mult642[2];
            iArr3[3] = iArr3[3] ^ mult642[1];
            iArr3[2] = mult642[0] ^ iArr3[2];
        }
        if (iArr4[1] == 0 && iArr6[1] == 0) {
            int[] mult323 = mult32(iArr4[0], iArr6[0]);
            iArr3[3] = iArr3[3] ^ mult323[1];
            iArr3[2] = iArr3[2] ^ mult323[0];
            iArr3[1] = iArr3[1] ^ mult323[1];
            iArr3[0] = mult323[0] ^ iArr3[0];
        } else {
            int[] mult643 = mult64(iArr4, iArr6);
            iArr3[5] = iArr3[5] ^ mult643[3];
            iArr3[4] = iArr3[4] ^ mult643[2];
            iArr3[3] = iArr3[3] ^ (mult643[1] ^ mult643[3]);
            iArr3[2] = iArr3[2] ^ (mult643[0] ^ mult643[2]);
            iArr3[1] = iArr3[1] ^ mult643[1];
            iArr3[0] = mult643[0] ^ iArr3[0];
        }
        return iArr3;
    }

    private static int[] mult256(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[4];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(4, iArr.length));
        int[] iArr5 = new int[4];
        if (iArr.length > 4) {
            System.arraycopy(iArr, 4, iArr5, 0, Math.min(4, iArr.length - 4));
        }
        int[] iArr6 = new int[4];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(4, iArr2.length));
        int[] iArr7 = new int[4];
        if (iArr2.length > 4) {
            System.arraycopy(iArr2, 4, iArr7, 0, Math.min(4, iArr2.length - 4));
        }
        if (iArr5[3] != 0 || iArr5[2] != 0 || iArr7[3] != 0 || iArr7[2] != 0) {
            int[] mult128 = mult128(iArr5, iArr7);
            iArr3[15] = iArr3[15] ^ mult128[7];
            iArr3[14] = iArr3[14] ^ mult128[6];
            iArr3[13] = iArr3[13] ^ mult128[5];
            iArr3[12] = iArr3[12] ^ mult128[4];
            iArr3[11] = iArr3[11] ^ (mult128[3] ^ mult128[7]);
            iArr3[10] = iArr3[10] ^ (mult128[2] ^ mult128[6]);
            iArr3[9] = iArr3[9] ^ (mult128[1] ^ mult128[5]);
            iArr3[8] = iArr3[8] ^ (mult128[0] ^ mult128[4]);
            iArr3[7] = iArr3[7] ^ mult128[3];
            iArr3[6] = iArr3[6] ^ mult128[2];
            iArr3[5] = iArr3[5] ^ mult128[1];
            iArr3[4] = mult128[0] ^ iArr3[4];
        } else if (iArr5[1] != 0 || iArr7[1] != 0) {
            int[] mult64 = mult64(iArr5, iArr7);
            iArr3[11] = iArr3[11] ^ mult64[3];
            iArr3[10] = iArr3[10] ^ mult64[2];
            iArr3[9] = iArr3[9] ^ mult64[1];
            iArr3[8] = iArr3[8] ^ mult64[0];
            iArr3[7] = iArr3[7] ^ mult64[3];
            iArr3[6] = iArr3[6] ^ mult64[2];
            iArr3[5] = iArr3[5] ^ mult64[1];
            iArr3[4] = mult64[0] ^ iArr3[4];
        } else if (!(iArr5[0] == 0 && iArr7[0] == 0)) {
            int[] mult32 = mult32(iArr5[0], iArr7[0]);
            iArr3[9] = iArr3[9] ^ mult32[1];
            iArr3[8] = iArr3[8] ^ mult32[0];
            iArr3[5] = iArr3[5] ^ mult32[1];
            iArr3[4] = mult32[0] ^ iArr3[4];
        }
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        iArr5[2] = iArr5[2] ^ iArr4[2];
        iArr5[3] = iArr5[3] ^ iArr4[3];
        iArr7[0] = iArr7[0] ^ iArr6[0];
        iArr7[1] = iArr7[1] ^ iArr6[1];
        iArr7[2] = iArr7[2] ^ iArr6[2];
        iArr7[3] = iArr7[3] ^ iArr6[3];
        int[] mult1282 = mult128(iArr5, iArr7);
        iArr3[11] = iArr3[11] ^ mult1282[7];
        iArr3[10] = iArr3[10] ^ mult1282[6];
        iArr3[9] = iArr3[9] ^ mult1282[5];
        iArr3[8] = iArr3[8] ^ mult1282[4];
        iArr3[7] = iArr3[7] ^ mult1282[3];
        iArr3[6] = iArr3[6] ^ mult1282[2];
        iArr3[5] = iArr3[5] ^ mult1282[1];
        iArr3[4] = mult1282[0] ^ iArr3[4];
        int[] mult1283 = mult128(iArr4, iArr6);
        iArr3[11] = iArr3[11] ^ mult1283[7];
        iArr3[10] = iArr3[10] ^ mult1283[6];
        iArr3[9] = iArr3[9] ^ mult1283[5];
        iArr3[8] = iArr3[8] ^ mult1283[4];
        iArr3[7] = iArr3[7] ^ (mult1283[3] ^ mult1283[7]);
        iArr3[6] = iArr3[6] ^ (mult1283[2] ^ mult1283[6]);
        iArr3[5] = iArr3[5] ^ (mult1283[1] ^ mult1283[5]);
        iArr3[4] = iArr3[4] ^ (mult1283[0] ^ mult1283[4]);
        iArr3[3] = iArr3[3] ^ mult1283[3];
        iArr3[2] = iArr3[2] ^ mult1283[2];
        iArr3[1] = iArr3[1] ^ mult1283[1];
        iArr3[0] = mult1283[0] ^ iArr3[0];
        return iArr3;
    }

    private static int[] mult32(int i, int i2) {
        int[] iArr = new int[2];
        if (i == 0 || i2 == 0) {
            return iArr;
        }
        long j = ((long) i2) & 4294967295L;
        long j2 = 0;
        for (int i3 = 1; i3 <= 32; i3++) {
            if ((bitMask[i3 - 1] & i) != 0) {
                j2 ^= j;
            }
            j <<= 1;
        }
        iArr[1] = (int) (j2 >>> 32);
        iArr[0] = (int) (j2 & 4294967295L);
        return iArr;
    }

    private static int[] mult512(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[32];
        int[] iArr4 = new int[8];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(8, iArr.length));
        int[] iArr5 = new int[8];
        if (iArr.length > 8) {
            System.arraycopy(iArr, 8, iArr5, 0, Math.min(8, iArr.length - 8));
        }
        int[] iArr6 = new int[8];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(8, iArr2.length));
        int[] iArr7 = new int[8];
        if (iArr2.length > 8) {
            System.arraycopy(iArr2, 8, iArr7, 0, Math.min(8, iArr2.length - 8));
        }
        int[] mult256 = mult256(iArr5, iArr7);
        iArr3[31] = iArr3[31] ^ mult256[15];
        iArr3[30] = iArr3[30] ^ mult256[14];
        iArr3[29] = iArr3[29] ^ mult256[13];
        iArr3[28] = iArr3[28] ^ mult256[12];
        iArr3[27] = iArr3[27] ^ mult256[11];
        iArr3[26] = iArr3[26] ^ mult256[10];
        iArr3[25] = iArr3[25] ^ mult256[9];
        iArr3[24] = iArr3[24] ^ mult256[8];
        iArr3[23] = iArr3[23] ^ (mult256[7] ^ mult256[15]);
        iArr3[22] = iArr3[22] ^ (mult256[6] ^ mult256[14]);
        iArr3[21] = iArr3[21] ^ (mult256[5] ^ mult256[13]);
        iArr3[20] = iArr3[20] ^ (mult256[4] ^ mult256[12]);
        iArr3[19] = iArr3[19] ^ (mult256[3] ^ mult256[11]);
        iArr3[18] = iArr3[18] ^ (mult256[2] ^ mult256[10]);
        iArr3[17] = iArr3[17] ^ (mult256[1] ^ mult256[9]);
        iArr3[16] = iArr3[16] ^ (mult256[0] ^ mult256[8]);
        iArr3[15] = iArr3[15] ^ mult256[7];
        iArr3[14] = iArr3[14] ^ mult256[6];
        iArr3[13] = iArr3[13] ^ mult256[5];
        iArr3[12] = iArr3[12] ^ mult256[4];
        iArr3[11] = iArr3[11] ^ mult256[3];
        iArr3[10] = iArr3[10] ^ mult256[2];
        iArr3[9] = iArr3[9] ^ mult256[1];
        iArr3[8] = mult256[0] ^ iArr3[8];
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        iArr5[2] = iArr5[2] ^ iArr4[2];
        iArr5[3] = iArr5[3] ^ iArr4[3];
        iArr5[4] = iArr5[4] ^ iArr4[4];
        iArr5[5] = iArr5[5] ^ iArr4[5];
        iArr5[6] = iArr5[6] ^ iArr4[6];
        iArr5[7] = iArr5[7] ^ iArr4[7];
        iArr7[0] = iArr7[0] ^ iArr6[0];
        iArr7[1] = iArr7[1] ^ iArr6[1];
        iArr7[2] = iArr7[2] ^ iArr6[2];
        iArr7[3] = iArr7[3] ^ iArr6[3];
        iArr7[4] = iArr7[4] ^ iArr6[4];
        iArr7[5] = iArr7[5] ^ iArr6[5];
        iArr7[6] = iArr7[6] ^ iArr6[6];
        iArr7[7] = iArr7[7] ^ iArr6[7];
        int[] mult2562 = mult256(iArr5, iArr7);
        iArr3[23] = iArr3[23] ^ mult2562[15];
        iArr3[22] = iArr3[22] ^ mult2562[14];
        iArr3[21] = iArr3[21] ^ mult2562[13];
        iArr3[20] = iArr3[20] ^ mult2562[12];
        iArr3[19] = iArr3[19] ^ mult2562[11];
        iArr3[18] = iArr3[18] ^ mult2562[10];
        iArr3[17] = iArr3[17] ^ mult2562[9];
        iArr3[16] = iArr3[16] ^ mult2562[8];
        iArr3[15] = iArr3[15] ^ mult2562[7];
        iArr3[14] = iArr3[14] ^ mult2562[6];
        iArr3[13] = iArr3[13] ^ mult2562[5];
        iArr3[12] = iArr3[12] ^ mult2562[4];
        iArr3[11] = iArr3[11] ^ mult2562[3];
        iArr3[10] = iArr3[10] ^ mult2562[2];
        iArr3[9] = iArr3[9] ^ mult2562[1];
        iArr3[8] = mult2562[0] ^ iArr3[8];
        int[] mult2563 = mult256(iArr4, iArr6);
        iArr3[23] = iArr3[23] ^ mult2563[15];
        iArr3[22] = iArr3[22] ^ mult2563[14];
        iArr3[21] = iArr3[21] ^ mult2563[13];
        iArr3[20] = iArr3[20] ^ mult2563[12];
        iArr3[19] = iArr3[19] ^ mult2563[11];
        iArr3[18] = iArr3[18] ^ mult2563[10];
        iArr3[17] = iArr3[17] ^ mult2563[9];
        iArr3[16] = iArr3[16] ^ mult2563[8];
        iArr3[15] = iArr3[15] ^ (mult2563[7] ^ mult2563[15]);
        iArr3[14] = iArr3[14] ^ (mult2563[6] ^ mult2563[14]);
        iArr3[13] = iArr3[13] ^ (mult2563[5] ^ mult2563[13]);
        iArr3[12] = iArr3[12] ^ (mult2563[4] ^ mult2563[12]);
        iArr3[11] = iArr3[11] ^ (mult2563[3] ^ mult2563[11]);
        iArr3[10] = iArr3[10] ^ (mult2563[2] ^ mult2563[10]);
        iArr3[9] = iArr3[9] ^ (mult2563[1] ^ mult2563[9]);
        iArr3[8] = iArr3[8] ^ (mult2563[0] ^ mult2563[8]);
        iArr3[7] = iArr3[7] ^ mult2563[7];
        iArr3[6] = iArr3[6] ^ mult2563[6];
        iArr3[5] = iArr3[5] ^ mult2563[5];
        iArr3[4] = iArr3[4] ^ mult2563[4];
        iArr3[3] = iArr3[3] ^ mult2563[3];
        iArr3[2] = iArr3[2] ^ mult2563[2];
        iArr3[1] = iArr3[1] ^ mult2563[1];
        iArr3[0] = mult2563[0] ^ iArr3[0];
        return iArr3;
    }

    private static int[] mult64(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[4];
        int i = iArr[0];
        int i2 = iArr.length > 1 ? iArr[1] : 0;
        int i3 = iArr2[0];
        int i4 = iArr2.length > 1 ? iArr2[1] : 0;
        if (!(i2 == 0 && i4 == 0)) {
            int[] mult32 = mult32(i2, i4);
            iArr3[3] = iArr3[3] ^ mult32[1];
            iArr3[2] = iArr3[2] ^ (mult32[0] ^ mult32[1]);
            iArr3[1] = mult32[0] ^ iArr3[1];
        }
        int[] mult322 = mult32(i2 ^ i, i4 ^ i3);
        iArr3[2] = iArr3[2] ^ mult322[1];
        iArr3[1] = mult322[0] ^ iArr3[1];
        int[] mult323 = mult32(i, i3);
        iArr3[2] = iArr3[2] ^ mult323[1];
        iArr3[1] = iArr3[1] ^ (mult323[0] ^ mult323[1]);
        iArr3[0] = mult323[0] ^ iArr3[0];
        return iArr3;
    }

    private GF2Polynomial upper(int i) {
        int min = Math.min(i, this.blocks - i);
        GF2Polynomial gF2Polynomial = new GF2Polynomial(min << 5);
        if (this.blocks >= i) {
            System.arraycopy(this.value, i, gF2Polynomial.value, 0, min);
        }
        return gF2Polynomial;
    }

    private void zeroUnusedBits() {
        if ((this.len & 31) != 0) {
            int[] iArr = this.value;
            int i = this.blocks - 1;
            iArr[i] = iArr[i] & reverseRightMask[this.len & 31];
        }
    }

    public GF2Polynomial add(GF2Polynomial gF2Polynomial) {
        return xor(gF2Polynomial);
    }

    public void addToThis(GF2Polynomial gF2Polynomial) {
        expandN(gF2Polynomial.len);
        xorThisBy(gF2Polynomial);
    }

    public void assignAll() {
        for (int i = 0; i < this.blocks; i++) {
            this.value[i] = -1;
        }
        zeroUnusedBits();
    }

    public void assignOne() {
        for (int i = 1; i < this.blocks; i++) {
            this.value[i] = 0;
        }
        this.value[0] = 1;
    }

    public void assignX() {
        for (int i = 1; i < this.blocks; i++) {
            this.value[i] = 0;
        }
        this.value[0] = 2;
    }

    public void assignZero() {
        for (int i = 0; i < this.blocks; i++) {
            this.value[i] = 0;
        }
    }

    public Object clone() {
        return new GF2Polynomial(this);
    }

    public GF2Polynomial[] divide(GF2Polynomial gF2Polynomial) throws RuntimeException {
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[2];
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.len);
        GF2Polynomial gF2Polynomial3 = new GF2Polynomial(this);
        GF2Polynomial gF2Polynomial4 = new GF2Polynomial(gF2Polynomial);
        if (gF2Polynomial4.isZero()) {
            throw new RuntimeException();
        }
        gF2Polynomial3.reduceN();
        gF2Polynomial4.reduceN();
        if (gF2Polynomial3.len < gF2Polynomial4.len) {
            gF2PolynomialArr[0] = new GF2Polynomial(0);
            gF2PolynomialArr[1] = gF2Polynomial3;
        } else {
            int i = gF2Polynomial3.len - gF2Polynomial4.len;
            gF2Polynomial2.expandN(i + 1);
            while (i >= 0) {
                gF2Polynomial3.subtractFromThis(gF2Polynomial4.shiftLeft(i));
                gF2Polynomial3.reduceN();
                gF2Polynomial2.xorBit(i);
                i = gF2Polynomial3.len - gF2Polynomial4.len;
            }
            gF2PolynomialArr[0] = gF2Polynomial2;
            gF2PolynomialArr[1] = gF2Polynomial3;
        }
        return gF2PolynomialArr;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2Polynomial)) {
            return false;
        }
        GF2Polynomial gF2Polynomial = (GF2Polynomial) obj;
        if (this.len != gF2Polynomial.len) {
            return false;
        }
        for (int i = 0; i < this.blocks; i++) {
            if (this.value[i] != gF2Polynomial.value[i]) {
                return false;
            }
        }
        return true;
    }

    public void expandN(int i) {
        if (this.len < i) {
            this.len = i;
            int i2 = ((i - 1) >>> 5) + 1;
            if (this.blocks >= i2) {
                return;
            }
            if (this.value.length >= i2) {
                for (int i3 = this.blocks; i3 < i2; i3++) {
                    this.value[i3] = 0;
                }
                this.blocks = i2;
                return;
            }
            int[] iArr = new int[i2];
            System.arraycopy(this.value, 0, iArr, 0, this.blocks);
            this.blocks = i2;
            this.value = null;
            this.value = iArr;
        }
    }

    public GF2Polynomial gcd(GF2Polynomial gF2Polynomial) throws RuntimeException {
        if (isZero() && gF2Polynomial.isZero()) {
            throw new ArithmeticException("Both operands of gcd equal zero.");
        } else if (isZero()) {
            return new GF2Polynomial(gF2Polynomial);
        } else {
            if (gF2Polynomial.isZero()) {
                return new GF2Polynomial(this);
            }
            GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this);
            GF2Polynomial gF2Polynomial3 = new GF2Polynomial(gF2Polynomial);
            while (!gF2Polynomial3.isZero()) {
                GF2Polynomial remainder = gF2Polynomial2.remainder(gF2Polynomial3);
                gF2Polynomial2 = gF2Polynomial3;
                gF2Polynomial3 = remainder;
            }
            return gF2Polynomial2;
        }
    }

    public int getBit(int i) {
        if (i >= 0) {
            return (i <= this.len + -1 && (this.value[i >>> 5] & bitMask[i & 31]) != 0) ? 1 : 0;
        }
        throw new RuntimeException();
    }

    public int getLength() {
        return this.len;
    }

    public int hashCode() {
        return this.len + this.value.hashCode();
    }

    public GF2Polynomial increase() {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this);
        gF2Polynomial.increaseThis();
        return gF2Polynomial;
    }

    public void increaseThis() {
        xorBit(0);
    }

    public boolean isIrreducible() {
        if (isZero()) {
            return false;
        }
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this);
        gF2Polynomial.reduceN();
        int i = gF2Polynomial.len - 1;
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(gF2Polynomial.len, "X");
        for (int i2 = 1; i2 <= (i >> 1); i2++) {
            gF2Polynomial2.squareThisPreCalc();
            gF2Polynomial2 = gF2Polynomial2.remainder(gF2Polynomial);
            GF2Polynomial add = gF2Polynomial2.add(new GF2Polynomial(32, "X"));
            if (add.isZero() || !gF2Polynomial.gcd(add).isOne()) {
                return false;
            }
        }
        return true;
    }

    public boolean isOne() {
        for (int i = 1; i < this.blocks; i++) {
            if (this.value[i] != 0) {
                return false;
            }
        }
        return this.value[0] == 1;
    }

    public boolean isZero() {
        if (this.len == 0) {
            return true;
        }
        for (int i = 0; i < this.blocks; i++) {
            if (this.value[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public GF2Polynomial multiply(GF2Polynomial gF2Polynomial) {
        int max = Math.max(this.len, gF2Polynomial.len);
        expandN(max);
        gF2Polynomial.expandN(max);
        return karaMult(gF2Polynomial);
    }

    public GF2Polynomial multiplyClassic(GF2Polynomial gF2Polynomial) {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(Math.max(this.len, gF2Polynomial.len) << 1);
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[32];
        gF2PolynomialArr[0] = new GF2Polynomial(this);
        for (int i = 1; i <= 31; i++) {
            gF2PolynomialArr[i] = gF2PolynomialArr[i - 1].shiftLeft();
        }
        for (int i2 = 0; i2 < gF2Polynomial.blocks; i2++) {
            for (int i3 = 0; i3 <= 31; i3++) {
                if ((gF2Polynomial.value[i2] & bitMask[i3]) != 0) {
                    gF2Polynomial2.xorThisBy(gF2PolynomialArr[i3]);
                }
            }
            for (int i4 = 0; i4 <= 31; i4++) {
                gF2PolynomialArr[i4].shiftBlocksLeft();
            }
        }
        return gF2Polynomial2;
    }

    public GF2Polynomial quotient(GF2Polynomial gF2Polynomial) throws RuntimeException {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.len);
        GF2Polynomial gF2Polynomial3 = new GF2Polynomial(this);
        GF2Polynomial gF2Polynomial4 = new GF2Polynomial(gF2Polynomial);
        if (gF2Polynomial4.isZero()) {
            throw new RuntimeException();
        }
        gF2Polynomial3.reduceN();
        gF2Polynomial4.reduceN();
        if (gF2Polynomial3.len < gF2Polynomial4.len) {
            return new GF2Polynomial(0);
        }
        int i = gF2Polynomial3.len - gF2Polynomial4.len;
        gF2Polynomial2.expandN(i + 1);
        while (i >= 0) {
            gF2Polynomial3.subtractFromThis(gF2Polynomial4.shiftLeft(i));
            gF2Polynomial3.reduceN();
            gF2Polynomial2.xorBit(i);
            i = gF2Polynomial3.len - gF2Polynomial4.len;
        }
        return gF2Polynomial2;
    }

    public void randomize() {
        for (int i = 0; i < this.blocks; i++) {
            this.value[i] = rand.nextInt();
        }
        zeroUnusedBits();
    }

    public void randomize(Random random) {
        for (int i = 0; i < this.blocks; i++) {
            this.value[i] = random.nextInt();
        }
        zeroUnusedBits();
    }

    public void reduceN() {
        int i = this.blocks;
        while (true) {
            i--;
            if (this.value[i] != 0 || i <= 0) {
                int i2 = this.value[i];
                int i3 = 0;
            }
        }
        int i22 = this.value[i];
        int i32 = 0;
        while (i22 != 0) {
            i22 >>>= 1;
            i32++;
        }
        this.len = (i << 5) + i32;
        this.blocks = i + 1;
    }

    /* access modifiers changed from: 0000 */
    public void reducePentanomial(int i, int[] iArr) {
        int i2 = i >>> 5;
        int i3 = 32 - (i & 31);
        int i4 = (i - iArr[0]) >>> 5;
        int i5 = 32 - ((i - iArr[0]) & 31);
        int i6 = (i - iArr[1]) >>> 5;
        int i7 = 32 - ((i - iArr[1]) & 31);
        int i8 = (i - iArr[2]) >>> 5;
        int i9 = 32 - ((i - iArr[2]) & 31);
        for (int i10 = ((i << 1) - 2) >>> 5; i10 > i2; i10--) {
            long j = ((long) this.value[i10]) & 4294967295L;
            int[] iArr2 = this.value;
            int i11 = (i10 - i2) - 1;
            iArr2[i11] = iArr2[i11] ^ ((int) (j << i3));
            int[] iArr3 = this.value;
            int i12 = i10 - i2;
            iArr3[i12] = (int) (((long) iArr3[i12]) ^ (j >>> (32 - i3)));
            int[] iArr4 = this.value;
            int i13 = (i10 - i4) - 1;
            iArr4[i13] = iArr4[i13] ^ ((int) (j << i5));
            int[] iArr5 = this.value;
            int i14 = i10 - i4;
            iArr5[i14] = (int) (((long) iArr5[i14]) ^ (j >>> (32 - i5)));
            int[] iArr6 = this.value;
            int i15 = (i10 - i6) - 1;
            iArr6[i15] = iArr6[i15] ^ ((int) (j << i7));
            int[] iArr7 = this.value;
            int i16 = i10 - i6;
            iArr7[i16] = (int) (((long) iArr7[i16]) ^ (j >>> (32 - i7)));
            int[] iArr8 = this.value;
            int i17 = (i10 - i8) - 1;
            iArr8[i17] = iArr8[i17] ^ ((int) (j << i9));
            int[] iArr9 = this.value;
            int i18 = i10 - i8;
            iArr9[i18] = (int) ((j >>> (32 - i9)) ^ ((long) iArr9[i18]));
            this.value[i10] = 0;
        }
        long j2 = ((long) this.value[i2]) & 4294967295L & (4294967295 << (i & 31));
        int[] iArr10 = this.value;
        iArr10[0] = (int) (((long) iArr10[0]) ^ (j2 >>> (32 - i3)));
        if ((i2 - i4) - 1 >= 0) {
            int[] iArr11 = this.value;
            int i19 = (i2 - i4) - 1;
            iArr11[i19] = iArr11[i19] ^ ((int) (j2 << i5));
        }
        int[] iArr12 = this.value;
        int i20 = i2 - i4;
        iArr12[i20] = (int) (((long) iArr12[i20]) ^ (j2 >>> (32 - i5)));
        if ((i2 - i6) - 1 >= 0) {
            int[] iArr13 = this.value;
            int i21 = (i2 - i6) - 1;
            iArr13[i21] = iArr13[i21] ^ ((int) (j2 << i7));
        }
        int[] iArr14 = this.value;
        int i22 = i2 - i6;
        iArr14[i22] = (int) (((long) iArr14[i22]) ^ (j2 >>> (32 - i7)));
        if ((i2 - i8) - 1 >= 0) {
            int[] iArr15 = this.value;
            int i23 = (i2 - i8) - 1;
            iArr15[i23] = iArr15[i23] ^ ((int) (j2 << i9));
        }
        int[] iArr16 = this.value;
        int i24 = i2 - i8;
        iArr16[i24] = (int) (((long) iArr16[i24]) ^ (j2 >>> (32 - i9)));
        int[] iArr17 = this.value;
        iArr17[i2] = iArr17[i2] & reverseRightMask[i & 31];
        this.blocks = ((i - 1) >>> 5) + 1;
        this.len = i;
    }

    /* access modifiers changed from: 0000 */
    public void reduceTrinomial(int i, int i2) {
        int i3 = i >>> 5;
        int i4 = 32 - (i & 31);
        int i5 = (i - i2) >>> 5;
        int i6 = 32 - ((i - i2) & 31);
        for (int i7 = ((i << 1) - 2) >>> 5; i7 > i3; i7--) {
            long j = ((long) this.value[i7]) & 4294967295L;
            int[] iArr = this.value;
            int i8 = (i7 - i3) - 1;
            iArr[i8] = iArr[i8] ^ ((int) (j << i4));
            int[] iArr2 = this.value;
            int i9 = i7 - i3;
            iArr2[i9] = (int) (((long) iArr2[i9]) ^ (j >>> (32 - i4)));
            int[] iArr3 = this.value;
            int i10 = (i7 - i5) - 1;
            iArr3[i10] = iArr3[i10] ^ ((int) (j << i6));
            int[] iArr4 = this.value;
            int i11 = i7 - i5;
            iArr4[i11] = (int) ((j >>> (32 - i6)) ^ ((long) iArr4[i11]));
            this.value[i7] = 0;
        }
        long j2 = ((long) this.value[i3]) & 4294967295L & (4294967295 << (i & 31));
        int[] iArr5 = this.value;
        iArr5[0] = (int) (((long) iArr5[0]) ^ (j2 >>> (32 - i4)));
        if ((i3 - i5) - 1 >= 0) {
            int[] iArr6 = this.value;
            int i12 = (i3 - i5) - 1;
            iArr6[i12] = iArr6[i12] ^ ((int) (j2 << i6));
        }
        int[] iArr7 = this.value;
        int i13 = i3 - i5;
        iArr7[i13] = (int) ((j2 >>> (32 - i6)) ^ ((long) iArr7[i13]));
        int[] iArr8 = this.value;
        iArr8[i3] = iArr8[i3] & reverseRightMask[i & 31];
        this.blocks = ((i - 1) >>> 5) + 1;
        this.len = i;
    }

    public GF2Polynomial remainder(GF2Polynomial gF2Polynomial) throws RuntimeException {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this);
        GF2Polynomial gF2Polynomial3 = new GF2Polynomial(gF2Polynomial);
        if (gF2Polynomial3.isZero()) {
            throw new RuntimeException();
        }
        gF2Polynomial2.reduceN();
        gF2Polynomial3.reduceN();
        if (gF2Polynomial2.len >= gF2Polynomial3.len) {
            for (int i = gF2Polynomial2.len - gF2Polynomial3.len; i >= 0; i = gF2Polynomial2.len - gF2Polynomial3.len) {
                gF2Polynomial2.subtractFromThis(gF2Polynomial3.shiftLeft(i));
                gF2Polynomial2.reduceN();
            }
        }
        return gF2Polynomial2;
    }

    public void resetBit(int i) throws RuntimeException {
        if (i < 0) {
            throw new RuntimeException();
        } else if (i <= this.len - 1) {
            int[] iArr = this.value;
            int i2 = i >>> 5;
            iArr[i2] = iArr[i2] & (bitMask[i & 31] ^ -1);
        }
    }

    public void setBit(int i) throws RuntimeException {
        if (i < 0 || i > this.len - 1) {
            throw new RuntimeException();
        }
        int[] iArr = this.value;
        int i2 = i >>> 5;
        iArr[i2] = iArr[i2] | bitMask[i & 31];
    }

    /* access modifiers changed from: 0000 */
    public void shiftBlocksLeft() {
        this.blocks++;
        this.len += 32;
        if (this.blocks <= this.value.length) {
            for (int i = this.blocks - 1; i >= 1; i--) {
                this.value[i] = this.value[i - 1];
            }
            this.value[0] = 0;
            return;
        }
        int[] iArr = new int[this.blocks];
        System.arraycopy(this.value, 0, iArr, 1, this.blocks - 1);
        this.value = null;
        this.value = iArr;
    }

    public GF2Polynomial shiftLeft() {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.len + 1, this.value);
        int i = gF2Polynomial.blocks;
        while (true) {
            i--;
            if (i >= 1) {
                int[] iArr = gF2Polynomial.value;
                iArr[i] = iArr[i] << 1;
                int[] iArr2 = gF2Polynomial.value;
                iArr2[i] = iArr2[i] | (gF2Polynomial.value[i - 1] >>> 31);
            } else {
                int[] iArr3 = gF2Polynomial.value;
                iArr3[0] = iArr3[0] << 1;
                return gF2Polynomial;
            }
        }
    }

    public GF2Polynomial shiftLeft(int i) {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.len + i, this.value);
        if (i >= 32) {
            gF2Polynomial.doShiftBlocksLeft(i >>> 5);
        }
        int i2 = i & 31;
        if (i2 != 0) {
            int i3 = gF2Polynomial.blocks;
            while (true) {
                i3--;
                if (i3 < 1) {
                    break;
                }
                int[] iArr = gF2Polynomial.value;
                iArr[i3] = iArr[i3] << i2;
                int[] iArr2 = gF2Polynomial.value;
                iArr2[i3] = iArr2[i3] | (gF2Polynomial.value[i3 - 1] >>> (32 - i2));
            }
            int[] iArr3 = gF2Polynomial.value;
            iArr3[0] = iArr3[0] << i2;
        }
        return gF2Polynomial;
    }

    public void shiftLeftAddThis(GF2Polynomial gF2Polynomial, int i) {
        if (i == 0) {
            addToThis(gF2Polynomial);
            return;
        }
        expandN(gF2Polynomial.len + i);
        int i2 = i >>> 5;
        for (int i3 = gF2Polynomial.blocks - 1; i3 >= 0; i3--) {
            if (i3 + i2 + 1 < this.blocks && (i & 31) != 0) {
                int[] iArr = this.value;
                int i4 = i3 + i2 + 1;
                iArr[i4] = iArr[i4] ^ (gF2Polynomial.value[i3] >>> (32 - (i & 31)));
            }
            int[] iArr2 = this.value;
            int i5 = i3 + i2;
            iArr2[i5] = iArr2[i5] ^ (gF2Polynomial.value[i3] << (i & 31));
        }
    }

    public void shiftLeftThis() {
        if ((this.len & 31) == 0) {
            this.len++;
            this.blocks++;
            if (this.blocks > this.value.length) {
                int[] iArr = new int[this.blocks];
                System.arraycopy(this.value, 0, iArr, 0, this.value.length);
                this.value = null;
                this.value = iArr;
            }
            for (int i = this.blocks - 1; i >= 1; i--) {
                int[] iArr2 = this.value;
                iArr2[i] = iArr2[i] | (this.value[i - 1] >>> 31);
                int[] iArr3 = this.value;
                int i2 = i - 1;
                iArr3[i2] = iArr3[i2] << 1;
            }
            return;
        }
        this.len++;
        for (int i3 = this.blocks - 1; i3 >= 1; i3--) {
            int[] iArr4 = this.value;
            iArr4[i3] = iArr4[i3] << 1;
            int[] iArr5 = this.value;
            iArr5[i3] = iArr5[i3] | (this.value[i3 - 1] >>> 31);
        }
        int[] iArr6 = this.value;
        iArr6[0] = iArr6[0] << 1;
    }

    public GF2Polynomial shiftRight() {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.len - 1);
        System.arraycopy(this.value, 0, gF2Polynomial.value, 0, gF2Polynomial.blocks);
        for (int i = 0; i <= gF2Polynomial.blocks - 2; i++) {
            int[] iArr = gF2Polynomial.value;
            iArr[i] = iArr[i] >>> 1;
            int[] iArr2 = gF2Polynomial.value;
            iArr2[i] = iArr2[i] | (gF2Polynomial.value[i + 1] << 31);
        }
        int[] iArr3 = gF2Polynomial.value;
        int i2 = gF2Polynomial.blocks - 1;
        iArr3[i2] = iArr3[i2] >>> 1;
        if (gF2Polynomial.blocks < this.blocks) {
            int[] iArr4 = gF2Polynomial.value;
            int i3 = gF2Polynomial.blocks - 1;
            iArr4[i3] = iArr4[i3] | (this.value[gF2Polynomial.blocks] << 31);
        }
        return gF2Polynomial;
    }

    public void shiftRightThis() {
        this.len--;
        this.blocks = ((this.len - 1) >>> 5) + 1;
        for (int i = 0; i <= this.blocks - 2; i++) {
            int[] iArr = this.value;
            iArr[i] = iArr[i] >>> 1;
            int[] iArr2 = this.value;
            iArr2[i] = iArr2[i] | (this.value[i + 1] << 31);
        }
        int[] iArr3 = this.value;
        int i2 = this.blocks - 1;
        iArr3[i2] = iArr3[i2] >>> 1;
        if ((this.len & 31) == 0) {
            int[] iArr4 = this.value;
            int i3 = this.blocks - 1;
            iArr4[i3] = iArr4[i3] | (this.value[this.blocks] << 31);
        }
    }

    public void squareThisBitwise() {
        if (!isZero()) {
            int[] iArr = new int[(this.blocks << 1)];
            for (int i = this.blocks - 1; i >= 0; i--) {
                int i2 = this.value[i];
                int i3 = 1;
                for (int i4 = 0; i4 < 16; i4++) {
                    if ((i2 & 1) != 0) {
                        int i5 = i << 1;
                        iArr[i5] = iArr[i5] | i3;
                    }
                    if ((65536 & i2) != 0) {
                        int i6 = (i << 1) + 1;
                        iArr[i6] = iArr[i6] | i3;
                    }
                    i3 <<= 2;
                    i2 >>>= 1;
                }
            }
            this.value = null;
            this.value = iArr;
            this.blocks = iArr.length;
            this.len = (this.len << 1) - 1;
        }
    }

    public void squareThisPreCalc() {
        if (!isZero()) {
            if (this.value.length >= (this.blocks << 1)) {
                for (int i = this.blocks - 1; i >= 0; i--) {
                    this.value[(i << 1) + 1] = squaringTable[(this.value[i] & 16711680) >>> 16] | (squaringTable[(this.value[i] & ViewCompat.MEASURED_STATE_MASK) >>> 24] << 16);
                    this.value[i << 1] = squaringTable[this.value[i] & 255] | (squaringTable[(this.value[i] & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8] << 16);
                }
                this.blocks <<= 1;
                this.len = (this.len << 1) - 1;
                return;
            }
            int[] iArr = new int[(this.blocks << 1)];
            for (int i2 = 0; i2 < this.blocks; i2++) {
                iArr[i2 << 1] = squaringTable[this.value[i2] & 255] | (squaringTable[(this.value[i2] & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8] << 16);
                iArr[(i2 << 1) + 1] = squaringTable[(this.value[i2] & 16711680) >>> 16] | (squaringTable[(this.value[i2] & ViewCompat.MEASURED_STATE_MASK) >>> 24] << 16);
            }
            this.value = null;
            this.value = iArr;
            this.blocks <<= 1;
            this.len = (this.len << 1) - 1;
        }
    }

    public GF2Polynomial subtract(GF2Polynomial gF2Polynomial) {
        return xor(gF2Polynomial);
    }

    public void subtractFromThis(GF2Polynomial gF2Polynomial) {
        expandN(gF2Polynomial.len);
        xorThisBy(gF2Polynomial);
    }

    public boolean testBit(int i) {
        if (i >= 0) {
            return i <= this.len + -1 && (this.value[i >>> 5] & bitMask[i & 31]) != 0;
        }
        throw new RuntimeException();
    }

    public byte[] toByteArray() {
        int i = ((this.len - 1) >> 3) + 1;
        int i2 = i & 3;
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < (i >> 2); i3++) {
            int i4 = (i - (i3 << 2)) - 1;
            bArr[i4] = (byte) (this.value[i3] & 255);
            bArr[i4 - 1] = (byte) ((this.value[i3] & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8);
            bArr[i4 - 2] = (byte) ((this.value[i3] & 16711680) >>> 16);
            bArr[i4 - 3] = (byte) ((this.value[i3] & ViewCompat.MEASURED_STATE_MASK) >>> 24);
        }
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = ((i2 - i5) - 1) << 3;
            bArr[i5] = (byte) ((this.value[this.blocks - 1] & (255 << i6)) >>> i6);
        }
        return bArr;
    }

    public BigInteger toFlexiBigInt() {
        return (this.len == 0 || isZero()) ? new BigInteger(0, new byte[0]) : new BigInteger(1, toByteArray());
    }

    public int[] toIntegerArray() {
        int[] iArr = new int[this.blocks];
        System.arraycopy(this.value, 0, iArr, 0, this.blocks);
        return iArr;
    }

    public String toString(int i) {
        String str;
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        String[] strArr = {"0000", "0001", "0010", "0011", "0100", "0101", "0110", "0111", Constants.DEFAULT_UIN, "1001", "1010", "1011", "1100", "1101", "1110", "1111"};
        String str2 = new String();
        if (i == 16) {
            str = str2;
            int i2 = this.blocks - 1;
            while (i2 >= 0) {
                i2--;
                str = ((((((((str + cArr[(this.value[i2] >>> 28) & 15]) + cArr[(this.value[i2] >>> 24) & 15]) + cArr[(this.value[i2] >>> 20) & 15]) + cArr[(this.value[i2] >>> 16) & 15]) + cArr[(this.value[i2] >>> 12) & 15]) + cArr[(this.value[i2] >>> 8) & 15]) + cArr[(this.value[i2] >>> 4) & 15]) + cArr[this.value[i2] & 15]) + Token.SEPARATOR;
            }
        } else {
            String str3 = str2;
            int i3 = this.blocks - 1;
            while (i3 >= 0) {
                i3--;
                str3 = ((((((((str + strArr[(this.value[i3] >>> 28) & 15]) + strArr[(this.value[i3] >>> 24) & 15]) + strArr[(this.value[i3] >>> 20) & 15]) + strArr[(this.value[i3] >>> 16) & 15]) + strArr[(this.value[i3] >>> 12) & 15]) + strArr[(this.value[i3] >>> 8) & 15]) + strArr[(this.value[i3] >>> 4) & 15]) + strArr[this.value[i3] & 15]) + Token.SEPARATOR;
            }
        }
        return str;
    }

    public boolean vectorMult(GF2Polynomial gF2Polynomial) throws RuntimeException {
        boolean z = false;
        if (this.len != gF2Polynomial.len) {
            throw new RuntimeException();
        }
        for (int i = 0; i < this.blocks; i++) {
            int i2 = this.value[i] & gF2Polynomial.value[i];
            z = (((z ^ parity[i2 & 255]) ^ parity[(i2 >>> 8) & 255]) ^ parity[(i2 >>> 16) & 255]) ^ parity[(i2 >>> 24) & 255];
        }
        return z;
    }

    public GF2Polynomial xor(GF2Polynomial gF2Polynomial) {
        GF2Polynomial gF2Polynomial2;
        int i = 0;
        int min = Math.min(this.blocks, gF2Polynomial.blocks);
        if (this.len >= gF2Polynomial.len) {
            gF2Polynomial2 = new GF2Polynomial(this);
            while (i < min) {
                int[] iArr = gF2Polynomial2.value;
                iArr[i] = iArr[i] ^ gF2Polynomial.value[i];
                i++;
            }
        } else {
            gF2Polynomial2 = new GF2Polynomial(gF2Polynomial);
            while (i < min) {
                int[] iArr2 = gF2Polynomial2.value;
                iArr2[i] = iArr2[i] ^ this.value[i];
                i++;
            }
        }
        gF2Polynomial2.zeroUnusedBits();
        return gF2Polynomial2;
    }

    public void xorBit(int i) throws RuntimeException {
        if (i < 0 || i > this.len - 1) {
            throw new RuntimeException();
        }
        int[] iArr = this.value;
        int i2 = i >>> 5;
        iArr[i2] = iArr[i2] ^ bitMask[i & 31];
    }

    public void xorThisBy(GF2Polynomial gF2Polynomial) {
        for (int i = 0; i < Math.min(this.blocks, gF2Polynomial.blocks); i++) {
            int[] iArr = this.value;
            iArr[i] = iArr[i] ^ gF2Polynomial.value[i];
        }
        zeroUnusedBits();
    }
}
