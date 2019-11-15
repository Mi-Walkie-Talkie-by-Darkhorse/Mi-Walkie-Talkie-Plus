package org.bouncycastle.crypto.engines;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.bouncycastle.util.Pack;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class AESLightEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;
    private static final byte[] S = {99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, 63, -9, -52, 52, -91, -27, -15, 113, -40, 49, 21, 4, -57, 35, -61, 24, -106, 5, -102, 7, 18, Byte.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, HttpConstants.COMMA, 26, 27, 110, 90, -96, 82, HttpConstants.SEMICOLON, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, HttpConstants.SP, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, Byte.MAX_VALUE, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, -38, 33, Tnaf.POW_2_WIDTH, -1, -13, -46, -51, 12, 19, -20, 95, -105, 68, 23, -60, -89, 126, HttpConstants.EQUALS, 100, 93, 25, 115, 96, -127, 79, -36, HttpConstants.DOUBLE_QUOTE, 42, -112, -120, 70, -18, -72, 20, -34, 94, 11, -37, -32, 50, HttpConstants.COLON, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, -58, -24, -35, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, 29, -98, -31, -8, -104, 17, 105, -39, -114, -108, -101, 30, -121, -23, -50, 85, 40, -33, -116, -95, -119, HttpConstants.CR, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22};
    private static final byte[] Si = {82, 9, 106, -43, 48, 54, -91, 56, -65, 64, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, HttpConstants.EQUALS, -18, 76, -107, 11, 66, -6, -61, 78, 8, 46, -95, 102, 40, -39, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, 22, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, 21, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, HttpConstants.COMMA, 30, -113, -54, 63, 15, 2, -63, -81, -67, 3, 1, 19, -118, 107, HttpConstants.COLON, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, HttpConstants.DOUBLE_QUOTE, -25, -83, 53, -123, -30, -7, 55, -24, 28, 117, -33, 110, 71, -15, 26, 113, 29, 41, -59, -119, 111, -73, 98, 14, -86, 24, -66, 27, -4, 86, 62, 75, -58, -46, 121, HttpConstants.SP, -102, -37, -64, -2, 120, -51, 90, -12, 31, -35, -88, 51, -120, 7, -57, 49, -79, 18, Tnaf.POW_2_WIDTH, 89, 39, Byte.MIN_VALUE, -20, 95, 96, 81, Byte.MAX_VALUE, -87, 25, -75, 74, HttpConstants.CR, 45, -27, 122, -97, -109, -55, -100, -17, -96, -32, HttpConstants.SEMICOLON, 77, -82, 42, -11, -80, -56, -21, -69, 60, -125, 83, -103, 97, 23, 43, 4, 126, -70, 119, -42, 38, -31, 105, 20, 99, 85, 33, 12, 125};
    private static final int m1 = -2139062144;
    private static final int m2 = 2139062143;
    private static final int m3 = 27;
    private static final int m4 = -1061109568;
    private static final int m5 = 1061109567;
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, CipherSuite.TLS_DHE_PSK_WITH_AES_256_GCM_SHA384, 77, 154, 47, 94, 188, 99, 198, CipherSuite.TLS_DH_DSS_WITH_SEED_CBC_SHA, 53, 106, 212, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384, 125, 250, 239, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA};
    private int C0;
    private int C1;
    private int C2;
    private int C3;
    private int ROUNDS;
    private int[][] WorkingKey = null;
    private boolean forEncryption;

    private static int FFmulX(int i) {
        return ((m2 & i) << 1) ^ (((m1 & i) >>> 7) * 27);
    }

    private static int FFmulX2(int i) {
        int i2 = m4 & i;
        int i3 = i2 ^ (i2 >>> 1);
        return (((m5 & i) << 2) ^ (i3 >>> 2)) ^ (i3 >>> 5);
    }

    private void decryptBlock(int[][] iArr) {
        int i = this.C0 ^ iArr[this.ROUNDS][0];
        int i2 = this.C1 ^ iArr[this.ROUNDS][1];
        int i3 = this.C2 ^ iArr[this.ROUNDS][2];
        int i4 = this.ROUNDS - 1;
        int i5 = this.C3 ^ iArr[this.ROUNDS][3];
        while (i4 > 1) {
            int inv_mcol = inv_mcol((((Si[i & 255] & 255) ^ ((Si[(i5 >> 8) & 255] & 255) << 8)) ^ ((Si[(i3 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(i2 >> 24) & 255] << 24)) ^ iArr[i4][0];
            int inv_mcol2 = inv_mcol((((Si[i2 & 255] & 255) ^ ((Si[(i >> 8) & 255] & 255) << 8)) ^ ((Si[(i5 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(i3 >> 24) & 255] << 24)) ^ iArr[i4][1];
            int inv_mcol3 = inv_mcol((((Si[i3 & 255] & 255) ^ ((Si[(i2 >> 8) & 255] & 255) << 8)) ^ ((Si[(i >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(i5 >> 24) & 255] << 24)) ^ iArr[i4][2];
            int i6 = i4 - 1;
            int inv_mcol4 = inv_mcol((((Si[i5 & 255] & 255) ^ ((Si[(i3 >> 8) & 255] & 255) << 8)) ^ ((Si[(i2 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(i >> 24) & 255] << 24)) ^ iArr[i4][3];
            i = inv_mcol((((Si[inv_mcol & 255] & 255) ^ ((Si[(inv_mcol4 >> 8) & 255] & 255) << 8)) ^ ((Si[(inv_mcol3 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(inv_mcol2 >> 24) & 255] << 24)) ^ iArr[i6][0];
            i2 = inv_mcol((((Si[inv_mcol2 & 255] & 255) ^ ((Si[(inv_mcol >> 8) & 255] & 255) << 8)) ^ ((Si[(inv_mcol4 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(inv_mcol3 >> 24) & 255] << 24)) ^ iArr[i6][1];
            i3 = iArr[i6][2] ^ inv_mcol((((Si[inv_mcol3 & 255] & 255) ^ ((Si[(inv_mcol2 >> 8) & 255] & 255) << 8)) ^ ((Si[(inv_mcol >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(inv_mcol4 >> 24) & 255] << 24));
            i4 = i6 - 1;
            i5 = inv_mcol((((Si[inv_mcol4 & 255] & 255) ^ ((Si[(inv_mcol3 >> 8) & 255] & 255) << 8)) ^ ((Si[(inv_mcol2 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(inv_mcol >> 24) & 255] << 24)) ^ iArr[i6][3];
        }
        int inv_mcol5 = inv_mcol((((Si[i & 255] & 255) ^ ((Si[(i5 >> 8) & 255] & 255) << 8)) ^ ((Si[(i3 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(i2 >> 24) & 255] << 24)) ^ iArr[i4][0];
        int inv_mcol6 = inv_mcol((((Si[i2 & 255] & 255) ^ ((Si[(i >> 8) & 255] & 255) << 8)) ^ ((Si[(i5 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(i3 >> 24) & 255] << 24)) ^ iArr[i4][1];
        int inv_mcol7 = inv_mcol((((Si[i3 & 255] & 255) ^ ((Si[(i2 >> 8) & 255] & 255) << 8)) ^ ((Si[(i >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(i5 >> 24) & 255] << 24)) ^ iArr[i4][2];
        int inv_mcol8 = inv_mcol((((Si[i5 & 255] & 255) ^ ((Si[(i3 >> 8) & 255] & 255) << 8)) ^ ((Si[(i2 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(i >> 24) & 255] << 24)) ^ iArr[i4][3];
        this.C0 = ((((Si[inv_mcol5 & 255] & 255) ^ ((Si[(inv_mcol8 >> 8) & 255] & 255) << 8)) ^ ((Si[(inv_mcol7 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(inv_mcol6 >> 24) & 255] << 24)) ^ iArr[0][0];
        this.C1 = ((((Si[inv_mcol6 & 255] & 255) ^ ((Si[(inv_mcol5 >> 8) & 255] & 255) << 8)) ^ ((Si[(inv_mcol8 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(inv_mcol7 >> 24) & 255] << 24)) ^ iArr[0][1];
        this.C2 = ((((Si[inv_mcol7 & 255] & 255) ^ ((Si[(inv_mcol6 >> 8) & 255] & 255) << 8)) ^ ((Si[(inv_mcol5 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(inv_mcol8 >> 24) & 255] << 24)) ^ iArr[0][2];
        this.C3 = ((((Si[inv_mcol8 & 255] & 255) ^ ((Si[(inv_mcol7 >> 8) & 255] & 255) << 8)) ^ ((Si[(inv_mcol6 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (Si[(inv_mcol5 >> 24) & 255] << 24)) ^ iArr[0][3];
    }

    private void encryptBlock(int[][] iArr) {
        int i = this.C0 ^ iArr[0][0];
        int i2 = this.C1 ^ iArr[0][1];
        int i3 = iArr[0][2] ^ this.C2;
        int i4 = this.C3 ^ iArr[0][3];
        int i5 = i;
        int i6 = i2;
        int i7 = i3;
        int i8 = 1;
        while (i8 < this.ROUNDS - 1) {
            int mcol = mcol((((S[i5 & 255] & 255) ^ ((S[(i6 >> 8) & 255] & 255) << 8)) ^ ((S[(i7 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(i4 >> 24) & 255] << 24)) ^ iArr[i8][0];
            int mcol2 = mcol((((S[i6 & 255] & 255) ^ ((S[(i7 >> 8) & 255] & 255) << 8)) ^ ((S[(i4 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(i5 >> 24) & 255] << 24)) ^ iArr[i8][1];
            int mcol3 = mcol((((S[i7 & 255] & 255) ^ ((S[(i4 >> 8) & 255] & 255) << 8)) ^ ((S[(i5 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(i6 >> 24) & 255] << 24)) ^ iArr[i8][2];
            int i9 = i8 + 1;
            int mcol4 = mcol((((S[i4 & 255] & 255) ^ ((S[(i5 >> 8) & 255] & 255) << 8)) ^ ((S[(i6 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(i7 >> 24) & 255] << 24)) ^ iArr[i8][3];
            i5 = mcol((((S[mcol & 255] & 255) ^ ((S[(mcol2 >> 8) & 255] & 255) << 8)) ^ ((S[(mcol3 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(mcol4 >> 24) & 255] << 24)) ^ iArr[i9][0];
            i6 = mcol((((S[mcol2 & 255] & 255) ^ ((S[(mcol3 >> 8) & 255] & 255) << 8)) ^ ((S[(mcol4 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(mcol >> 24) & 255] << 24)) ^ iArr[i9][1];
            i7 = iArr[i9][2] ^ mcol((((S[mcol3 & 255] & 255) ^ ((S[(mcol4 >> 8) & 255] & 255) << 8)) ^ ((S[(mcol >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(mcol2 >> 24) & 255] << 24));
            i8 = i9 + 1;
            i4 = mcol((((S[mcol4 & 255] & 255) ^ ((S[(mcol >> 8) & 255] & 255) << 8)) ^ ((S[(mcol2 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(mcol3 >> 24) & 255] << 24)) ^ iArr[i9][3];
        }
        int mcol5 = mcol((((S[i5 & 255] & 255) ^ ((S[(i6 >> 8) & 255] & 255) << 8)) ^ ((S[(i7 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(i4 >> 24) & 255] << 24)) ^ iArr[i8][0];
        int mcol6 = mcol((((S[i6 & 255] & 255) ^ ((S[(i7 >> 8) & 255] & 255) << 8)) ^ ((S[(i4 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(i5 >> 24) & 255] << 24)) ^ iArr[i8][1];
        int mcol7 = mcol((((S[i7 & 255] & 255) ^ ((S[(i4 >> 8) & 255] & 255) << 8)) ^ ((S[(i5 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(i6 >> 24) & 255] << 24)) ^ iArr[i8][2];
        int i10 = i8 + 1;
        int mcol8 = mcol((((S[i4 & 255] & 255) ^ ((S[(i5 >> 8) & 255] & 255) << 8)) ^ ((S[(i6 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(i7 >> 24) & 255] << 24)) ^ iArr[i8][3];
        this.C0 = ((((S[mcol5 & 255] & 255) ^ ((S[(mcol6 >> 8) & 255] & 255) << 8)) ^ ((S[(mcol7 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(mcol8 >> 24) & 255] << 24)) ^ iArr[i10][0];
        this.C1 = ((((S[mcol6 & 255] & 255) ^ ((S[(mcol7 >> 8) & 255] & 255) << 8)) ^ ((S[(mcol8 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(mcol5 >> 24) & 255] << 24)) ^ iArr[i10][1];
        this.C2 = ((((S[mcol7 & 255] & 255) ^ ((S[(mcol8 >> 8) & 255] & 255) << 8)) ^ ((S[(mcol5 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(mcol6 >> 24) & 255] << 24)) ^ iArr[i10][2];
        this.C3 = ((((S[mcol8 & 255] & 255) ^ ((S[(mcol5 >> 8) & 255] & 255) << 8)) ^ ((S[(mcol6 >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH)) ^ (S[(mcol7 >> 24) & 255] << 24)) ^ iArr[i10][3];
    }

    private int[][] generateWorkingKey(byte[] bArr, boolean z) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        int i = length >> 2;
        this.ROUNDS = i + 6;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, new int[]{this.ROUNDS + 1, 4});
        switch (i) {
            case 4:
                int littleEndianToInt = Pack.littleEndianToInt(bArr, 0);
                iArr[0][0] = littleEndianToInt;
                int littleEndianToInt2 = Pack.littleEndianToInt(bArr, 4);
                iArr[0][1] = littleEndianToInt2;
                int littleEndianToInt3 = Pack.littleEndianToInt(bArr, 8);
                iArr[0][2] = littleEndianToInt3;
                int littleEndianToInt4 = Pack.littleEndianToInt(bArr, 12);
                iArr[0][3] = littleEndianToInt4;
                for (int i2 = 1; i2 <= 10; i2++) {
                    littleEndianToInt ^= subWord(shift(littleEndianToInt4, 8)) ^ rcon[i2 - 1];
                    iArr[i2][0] = littleEndianToInt;
                    littleEndianToInt2 ^= littleEndianToInt;
                    iArr[i2][1] = littleEndianToInt2;
                    littleEndianToInt3 ^= littleEndianToInt2;
                    iArr[i2][2] = littleEndianToInt3;
                    littleEndianToInt4 ^= littleEndianToInt3;
                    iArr[i2][3] = littleEndianToInt4;
                }
                break;
            case 6:
                int littleEndianToInt5 = Pack.littleEndianToInt(bArr, 0);
                iArr[0][0] = littleEndianToInt5;
                int littleEndianToInt6 = Pack.littleEndianToInt(bArr, 4);
                iArr[0][1] = littleEndianToInt6;
                int littleEndianToInt7 = Pack.littleEndianToInt(bArr, 8);
                iArr[0][2] = littleEndianToInt7;
                int littleEndianToInt8 = Pack.littleEndianToInt(bArr, 12);
                iArr[0][3] = littleEndianToInt8;
                int littleEndianToInt9 = Pack.littleEndianToInt(bArr, 16);
                iArr[1][0] = littleEndianToInt9;
                int littleEndianToInt10 = Pack.littleEndianToInt(bArr, 20);
                iArr[1][1] = littleEndianToInt10;
                int i3 = 2;
                int subWord = littleEndianToInt5 ^ (subWord(shift(littleEndianToInt10, 8)) ^ 1);
                iArr[1][2] = subWord;
                int i4 = littleEndianToInt6 ^ subWord;
                iArr[1][3] = i4;
                int i5 = littleEndianToInt7 ^ i4;
                iArr[2][0] = i5;
                int i6 = littleEndianToInt8 ^ i5;
                iArr[2][1] = i6;
                int i7 = littleEndianToInt9 ^ i6;
                iArr[2][2] = i7;
                int i8 = littleEndianToInt10 ^ i7;
                iArr[2][3] = i8;
                for (int i9 = 3; i9 < 12; i9 += 3) {
                    int subWord2 = subWord(shift(i8, 8)) ^ i3;
                    int i10 = i3 << 1;
                    int i11 = subWord ^ subWord2;
                    iArr[i9][0] = i11;
                    int i12 = i4 ^ i11;
                    iArr[i9][1] = i12;
                    int i13 = i5 ^ i12;
                    iArr[i9][2] = i13;
                    int i14 = i6 ^ i13;
                    iArr[i9][3] = i14;
                    int i15 = i7 ^ i14;
                    iArr[i9 + 1][0] = i15;
                    int i16 = i8 ^ i15;
                    iArr[i9 + 1][1] = i16;
                    int subWord3 = subWord(shift(i16, 8)) ^ i10;
                    i3 = i10 << 1;
                    subWord = i11 ^ subWord3;
                    iArr[i9 + 1][2] = subWord;
                    i4 = i12 ^ subWord;
                    iArr[i9 + 1][3] = i4;
                    i5 = i13 ^ i4;
                    iArr[i9 + 2][0] = i5;
                    i6 = i14 ^ i5;
                    iArr[i9 + 2][1] = i6;
                    i7 = i15 ^ i6;
                    iArr[i9 + 2][2] = i7;
                    i8 = i16 ^ i7;
                    iArr[i9 + 2][3] = i8;
                }
                int subWord4 = (subWord(shift(i8, 8)) ^ i3) ^ subWord;
                iArr[12][0] = subWord4;
                int i17 = subWord4 ^ i4;
                iArr[12][1] = i17;
                int i18 = i17 ^ i5;
                iArr[12][2] = i18;
                iArr[12][3] = i18 ^ i6;
                break;
            case 8:
                int littleEndianToInt11 = Pack.littleEndianToInt(bArr, 0);
                iArr[0][0] = littleEndianToInt11;
                int littleEndianToInt12 = Pack.littleEndianToInt(bArr, 4);
                iArr[0][1] = littleEndianToInt12;
                int littleEndianToInt13 = Pack.littleEndianToInt(bArr, 8);
                iArr[0][2] = littleEndianToInt13;
                int littleEndianToInt14 = Pack.littleEndianToInt(bArr, 12);
                iArr[0][3] = littleEndianToInt14;
                int littleEndianToInt15 = Pack.littleEndianToInt(bArr, 16);
                iArr[1][0] = littleEndianToInt15;
                int littleEndianToInt16 = Pack.littleEndianToInt(bArr, 20);
                iArr[1][1] = littleEndianToInt16;
                int littleEndianToInt17 = Pack.littleEndianToInt(bArr, 24);
                iArr[1][2] = littleEndianToInt17;
                int littleEndianToInt18 = Pack.littleEndianToInt(bArr, 28);
                iArr[1][3] = littleEndianToInt18;
                int i19 = 1;
                for (int i20 = 2; i20 < 14; i20 += 2) {
                    int subWord5 = subWord(shift(littleEndianToInt18, 8)) ^ i19;
                    i19 <<= 1;
                    littleEndianToInt11 ^= subWord5;
                    iArr[i20][0] = littleEndianToInt11;
                    littleEndianToInt12 ^= littleEndianToInt11;
                    iArr[i20][1] = littleEndianToInt12;
                    littleEndianToInt13 ^= littleEndianToInt12;
                    iArr[i20][2] = littleEndianToInt13;
                    littleEndianToInt14 ^= littleEndianToInt13;
                    iArr[i20][3] = littleEndianToInt14;
                    littleEndianToInt15 ^= subWord(littleEndianToInt14);
                    iArr[i20 + 1][0] = littleEndianToInt15;
                    littleEndianToInt16 ^= littleEndianToInt15;
                    iArr[i20 + 1][1] = littleEndianToInt16;
                    littleEndianToInt17 ^= littleEndianToInt16;
                    iArr[i20 + 1][2] = littleEndianToInt17;
                    littleEndianToInt18 ^= littleEndianToInt17;
                    iArr[i20 + 1][3] = littleEndianToInt18;
                }
                int subWord6 = (subWord(shift(littleEndianToInt18, 8)) ^ i19) ^ littleEndianToInt11;
                iArr[14][0] = subWord6;
                int i21 = subWord6 ^ littleEndianToInt12;
                iArr[14][1] = i21;
                int i22 = i21 ^ littleEndianToInt13;
                iArr[14][2] = i22;
                iArr[14][3] = i22 ^ littleEndianToInt14;
                break;
            default:
                throw new IllegalStateException("Should never get here");
        }
        if (!z) {
            for (int i23 = 1; i23 < this.ROUNDS; i23++) {
                for (int i24 = 0; i24 < 4; i24++) {
                    iArr[i23][i24] = inv_mcol(iArr[i23][i24]);
                }
            }
        }
        return iArr;
    }

    private static int inv_mcol(int i) {
        int shift = shift(i, 8) ^ i;
        int FFmulX = FFmulX(shift) ^ i;
        int FFmulX2 = shift ^ FFmulX2(FFmulX);
        return (FFmulX2 ^ shift(FFmulX2, 16)) ^ FFmulX;
    }

    private static int mcol(int i) {
        int shift = shift(i, 8);
        int i2 = i ^ shift;
        return (shift ^ shift(i2, 16)) ^ FFmulX(i2);
    }

    private void packBlock(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = (byte) this.C0;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (this.C0 >> 8);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (this.C0 >> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (this.C0 >> 24);
        int i6 = i5 + 1;
        bArr[i5] = (byte) this.C1;
        int i7 = i6 + 1;
        bArr[i6] = (byte) (this.C1 >> 8);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (this.C1 >> 16);
        int i9 = i8 + 1;
        bArr[i8] = (byte) (this.C1 >> 24);
        int i10 = i9 + 1;
        bArr[i9] = (byte) this.C2;
        int i11 = i10 + 1;
        bArr[i10] = (byte) (this.C2 >> 8);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (this.C2 >> 16);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (this.C2 >> 24);
        int i14 = i13 + 1;
        bArr[i13] = (byte) this.C3;
        int i15 = i14 + 1;
        bArr[i14] = (byte) (this.C3 >> 8);
        int i16 = i15 + 1;
        bArr[i15] = (byte) (this.C3 >> 16);
        int i17 = i16 + 1;
        bArr[i16] = (byte) (this.C3 >> 24);
    }

    private static int shift(int i, int i2) {
        return (i >>> i2) | (i << (-i2));
    }

    private static int subWord(int i) {
        return (S[i & 255] & 255) | ((S[(i >> 8) & 255] & 255) << 8) | ((S[(i >> 16) & 255] & 255) << Tnaf.POW_2_WIDTH) | (S[(i >> 24) & 255] << 24);
    }

    private void unpackBlock(byte[] bArr, int i) {
        int i2 = i + 1;
        this.C0 = bArr[i] & 255;
        int i3 = i2 + 1;
        this.C0 = ((bArr[i2] & 255) << 8) | this.C0;
        int i4 = i3 + 1;
        this.C0 |= (bArr[i3] & 255) << Tnaf.POW_2_WIDTH;
        int i5 = i4 + 1;
        this.C0 |= bArr[i4] << 24;
        int i6 = i5 + 1;
        this.C1 = bArr[i5] & 255;
        int i7 = i6 + 1;
        this.C1 = ((bArr[i6] & 255) << 8) | this.C1;
        int i8 = i7 + 1;
        this.C1 |= (bArr[i7] & 255) << Tnaf.POW_2_WIDTH;
        int i9 = i8 + 1;
        this.C1 |= bArr[i8] << 24;
        int i10 = i9 + 1;
        this.C2 = bArr[i9] & 255;
        int i11 = i10 + 1;
        this.C2 = ((bArr[i10] & 255) << 8) | this.C2;
        int i12 = i11 + 1;
        this.C2 |= (bArr[i11] & 255) << Tnaf.POW_2_WIDTH;
        int i13 = i12 + 1;
        this.C2 |= bArr[i12] << 24;
        int i14 = i13 + 1;
        this.C3 = bArr[i13] & 255;
        int i15 = i14 + 1;
        this.C3 = ((bArr[i14] & 255) << 8) | this.C3;
        int i16 = i15 + 1;
        this.C3 |= (bArr[i15] & 255) << Tnaf.POW_2_WIDTH;
        int i17 = i16 + 1;
        this.C3 |= bArr[i16] << 24;
    }

    public String getAlgorithmName() {
        return "AES";
    }

    public int getBlockSize() {
        return 16;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.WorkingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey(), z);
            this.forEncryption = z;
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to AES init - " + cipherParameters.getClass().getName());
    }

    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.WorkingKey == null) {
            throw new IllegalStateException("AES engine not initialised");
        } else if (i + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i2 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            if (this.forEncryption) {
                unpackBlock(bArr, i);
                encryptBlock(this.WorkingKey);
                packBlock(bArr2, i2);
            } else {
                unpackBlock(bArr, i);
                decryptBlock(this.WorkingKey);
                packBlock(bArr2, i2);
            }
            return 16;
        }
    }

    public void reset() {
    }
}
