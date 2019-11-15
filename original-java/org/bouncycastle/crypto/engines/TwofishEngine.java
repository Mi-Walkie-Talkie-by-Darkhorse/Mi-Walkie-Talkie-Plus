package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.jboss.netty.handler.codec.http.HttpConstants;

public final class TwofishEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;
    private static final int GF256_FDBK = 361;
    private static final int GF256_FDBK_2 = 180;
    private static final int GF256_FDBK_4 = 90;
    private static final int INPUT_WHITEN = 0;
    private static final int MAX_KEY_BITS = 256;
    private static final int MAX_ROUNDS = 16;
    private static final int OUTPUT_WHITEN = 4;
    private static final byte[][] P = {new byte[]{-87, 103, -77, -24, 4, -3, -93, 118, -102, -110, Byte.MIN_VALUE, 120, -28, -35, -47, 56, HttpConstants.CR, -58, 53, -104, 24, -9, -20, 108, 67, 117, 55, 38, -6, 19, -108, 72, -14, -48, -117, 48, -124, 84, -33, 35, 25, 91, HttpConstants.EQUALS, 89, -13, -82, -94, -126, 99, 1, -125, 46, -39, 81, -101, 124, -90, -21, -91, -66, 22, 12, -29, 97, -64, -116, HttpConstants.COLON, -11, 115, HttpConstants.COMMA, 37, 11, -69, 78, -119, 107, 83, 106, -76, -15, -31, -26, -67, 69, -30, -12, -74, 102, -52, -107, 3, 86, -44, 28, 30, -41, -5, -61, -114, -75, -23, -49, -65, -70, -22, 119, 57, -81, 51, -55, 98, 113, -127, 121, 9, -83, 36, -51, -7, -40, -27, -59, -71, 77, 68, 8, -122, -25, -95, 29, -86, -19, 6, 112, -78, -46, 65, 123, -96, 17, 49, -62, 39, -112, HttpConstants.SP, -10, 96, -1, -106, 92, -79, -85, -98, -100, 82, 27, 95, -109, 10, -17, -111, -123, 73, -18, 45, 79, -113, HttpConstants.SEMICOLON, 71, -121, 109, 70, -42, 62, 105, 100, 42, -50, -53, 47, -4, -105, 5, 122, -84, Byte.MAX_VALUE, -43, 26, 75, 14, -89, 90, 40, 20, 63, 41, -120, 60, 76, 2, -72, -38, -80, 23, 85, 31, -118, 125, 87, -57, -115, 116, -73, -60, -97, 114, 126, 21, HttpConstants.DOUBLE_QUOTE, 18, 88, 7, -103, 52, 110, 80, -34, 104, 101, PSSSigner.TRAILER_IMPLICIT, -37, -8, -56, -88, 43, 64, -36, -2, 50, -92, -54, Tnaf.POW_2_WIDTH, 33, -16, -45, 93, 15, 0, 111, -99, 54, 66, 74, 94, -63, -32}, new byte[]{117, -13, -58, -12, -37, 123, -5, -56, 74, -45, -26, 107, 69, 125, -24, 75, -42, 50, -40, -3, 55, 113, -15, -31, 48, 15, -8, 27, -121, -6, 6, 63, 94, -70, -82, 91, -118, 0, PSSSigner.TRAILER_IMPLICIT, -99, 109, -63, -79, 14, Byte.MIN_VALUE, 93, -46, -43, -96, -124, 7, 20, -75, -112, HttpConstants.COMMA, -93, -78, 115, 76, 84, -110, 116, 54, 81, 56, -80, -67, 90, -4, 96, 98, -106, 108, 66, -9, Tnaf.POW_2_WIDTH, 124, 40, 39, -116, 19, -107, -100, -57, 36, 70, HttpConstants.SEMICOLON, 112, -54, -29, -123, -53, 17, -48, -109, -72, -90, -125, HttpConstants.SP, -1, -97, 119, -61, -52, 3, 111, 8, -65, 64, -25, 43, -30, 121, 12, -86, -126, 65, HttpConstants.COLON, -22, -71, -28, -102, -92, -105, 126, -38, 122, 23, 102, -108, -95, 29, HttpConstants.EQUALS, -16, -34, -77, 11, 114, -89, 28, -17, -47, 83, 62, -113, 51, 38, 95, -20, 118, 42, 73, -127, -120, -18, 33, -60, 26, -21, -39, -59, 57, -103, -51, -83, 49, -117, 1, 24, 35, -35, 31, 78, 45, -7, 72, 79, -14, 101, -114, 120, 92, 88, 25, -115, -27, -104, 87, 103, Byte.MAX_VALUE, 5, 100, -81, 99, -74, -2, -11, -73, 60, -91, -50, -23, 104, 68, -32, 77, 67, 105, 41, 46, -84, 21, 89, -88, 10, -98, 110, 71, -33, 52, 53, 106, -49, -36, HttpConstants.DOUBLE_QUOTE, -55, -64, -101, -119, -44, -19, -85, 18, -94, HttpConstants.CR, 82, -69, 2, 47, -87, -41, 97, 30, -76, 80, 4, -10, -62, 22, 37, -122, 86, 85, 9, -66, -111}};
    private static final int P_00 = 1;
    private static final int P_01 = 0;
    private static final int P_02 = 0;
    private static final int P_03 = 1;
    private static final int P_04 = 1;
    private static final int P_10 = 0;
    private static final int P_11 = 0;
    private static final int P_12 = 1;
    private static final int P_13 = 1;
    private static final int P_14 = 0;
    private static final int P_20 = 1;
    private static final int P_21 = 1;
    private static final int P_22 = 0;
    private static final int P_23 = 0;
    private static final int P_24 = 0;
    private static final int P_30 = 0;
    private static final int P_31 = 1;
    private static final int P_32 = 1;
    private static final int P_33 = 0;
    private static final int P_34 = 1;
    private static final int ROUNDS = 16;
    private static final int ROUND_SUBKEYS = 8;
    private static final int RS_GF_FDBK = 333;
    private static final int SK_BUMP = 16843009;
    private static final int SK_ROTL = 9;
    private static final int SK_STEP = 33686018;
    private static final int TOTAL_SUBKEYS = 40;
    private boolean encrypting = false;
    private int[] gMDS0 = new int[256];
    private int[] gMDS1 = new int[256];
    private int[] gMDS2 = new int[256];
    private int[] gMDS3 = new int[256];
    private int[] gSBox;
    private int[] gSubKeys;
    private int k64Cnt = 0;
    private byte[] workingKey = null;

    public TwofishEngine() {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        int[] iArr3 = new int[2];
        for (int i = 0; i < 256; i++) {
            int i2 = P[0][i] & 255;
            iArr[0] = i2;
            iArr2[0] = Mx_X(i2) & 255;
            iArr3[0] = Mx_Y(i2) & 255;
            int i3 = P[1][i] & 255;
            iArr[1] = i3;
            iArr2[1] = Mx_X(i3) & 255;
            iArr3[1] = Mx_Y(i3) & 255;
            this.gMDS0[i] = iArr[1] | (iArr2[1] << 8) | (iArr3[1] << 16) | (iArr3[1] << 24);
            this.gMDS1[i] = iArr3[0] | (iArr3[0] << 8) | (iArr2[0] << 16) | (iArr[0] << 24);
            this.gMDS2[i] = iArr2[1] | (iArr3[1] << 8) | (iArr[1] << 16) | (iArr3[1] << 24);
            this.gMDS3[i] = iArr2[0] | (iArr[0] << 8) | (iArr3[0] << 16) | (iArr2[0] << 24);
        }
    }

    private void Bits32ToBytes(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
    }

    private int BytesTo32Bits(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << Tnaf.POW_2_WIDTH) | ((bArr[i + 3] & 255) << 24);
    }

    private int F32(int i, int[] iArr) {
        int b0 = b0(i);
        int b1 = b1(i);
        int b2 = b2(i);
        int b3 = b3(i);
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        switch (this.k64Cnt & 3) {
            case 0:
                b0 = (P[1][b0] & 255) ^ b0(i5);
                b1 = (P[0][b1] & 255) ^ b1(i5);
                b2 = (P[0][b2] & 255) ^ b2(i5);
                b3 = (P[1][b3] & 255) ^ b3(i5);
                break;
            case 1:
                return this.gMDS3[(P[1][b3] & 255) ^ b3(i2)] ^ (this.gMDS2[(P[1][b2] & 255) ^ b2(i2)] ^ (this.gMDS1[(P[0][b1] & 255) ^ b1(i2)] ^ this.gMDS0[(P[0][b0] & 255) ^ b0(i2)]));
            case 2:
                break;
            case 3:
                break;
            default:
                return 0;
        }
        b0 = (P[1][b0] & 255) ^ b0(i4);
        b1 = (P[1][b1] & 255) ^ b1(i4);
        b2 = (P[0][b2] & 255) ^ b2(i4);
        b3 = (P[0][b3] & 255) ^ b3(i4);
        return this.gMDS3[(P[1][(P[1][b3] & 255) ^ b3(i3)] & 255) ^ b3(i2)] ^ (this.gMDS2[(P[1][(P[0][b2] & 255) ^ b2(i3)] & 255) ^ b2(i2)] ^ (this.gMDS1[(P[0][(P[1][b1] & 255) ^ b1(i3)] & 255) ^ b1(i2)] ^ this.gMDS0[(P[0][(P[0][b0] & 255) ^ b0(i3)] & 255) ^ b0(i2)]));
    }

    private int Fe32_0(int i) {
        return ((this.gSBox[((i & 255) * 2) + 0] ^ this.gSBox[(((i >>> 8) & 255) * 2) + 1]) ^ this.gSBox[(((i >>> 16) & 255) * 2) + 512]) ^ this.gSBox[(((i >>> 24) & 255) * 2) + 513];
    }

    private int Fe32_3(int i) {
        return ((this.gSBox[(((i >>> 24) & 255) * 2) + 0] ^ this.gSBox[((i & 255) * 2) + 1]) ^ this.gSBox[(((i >>> 8) & 255) * 2) + 512]) ^ this.gSBox[(((i >>> 16) & 255) * 2) + 513];
    }

    private int LFSR1(int i) {
        return ((i & 1) != 0 ? 180 : 0) ^ (i >> 1);
    }

    private int LFSR2(int i) {
        int i2 = 0;
        int i3 = ((i & 2) != 0 ? 180 : 0) ^ (i >> 2);
        if ((i & 1) != 0) {
            i2 = 90;
        }
        return i2 ^ i3;
    }

    private int Mx_X(int i) {
        return LFSR2(i) ^ i;
    }

    private int Mx_Y(int i) {
        return (LFSR1(i) ^ i) ^ LFSR2(i);
    }

    private int RS_MDS_Encode(int i, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            i2 = RS_rem(i2);
        }
        int i4 = i2 ^ i;
        for (int i5 = 0; i5 < 4; i5++) {
            i4 = RS_rem(i4);
        }
        return i4;
    }

    private int RS_rem(int i) {
        int i2 = 0;
        int i3 = (i >>> 24) & 255;
        int i4 = (((i3 & 128) != 0 ? RS_GF_FDBK : 0) ^ (i3 << 1)) & 255;
        int i5 = i3 >>> 1;
        if ((i3 & 1) != 0) {
            i2 = CipherSuite.TLS_DH_anon_WITH_AES_128_GCM_SHA256;
        }
        int i6 = (i2 ^ i5) ^ i4;
        return ((i6 << 8) ^ ((i4 << 16) ^ ((i << 8) ^ (i6 << 24)))) ^ i3;
    }

    private int b0(int i) {
        return i & 255;
    }

    private int b1(int i) {
        return (i >>> 8) & 255;
    }

    private int b2(int i) {
        return (i >>> 16) & 255;
    }

    private int b3(int i) {
        return (i >>> 24) & 255;
    }

    private void decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int BytesTo32Bits = BytesTo32Bits(bArr, i) ^ this.gSubKeys[4];
        int BytesTo32Bits2 = BytesTo32Bits(bArr, i + 4) ^ this.gSubKeys[5];
        int BytesTo32Bits3 = BytesTo32Bits(bArr, i + 8) ^ this.gSubKeys[6];
        int BytesTo32Bits4 = BytesTo32Bits(bArr, i + 12) ^ this.gSubKeys[7];
        int i3 = 39;
        for (int i4 = 0; i4 < 16; i4 += 2) {
            int Fe32_0 = Fe32_0(BytesTo32Bits);
            int Fe32_3 = Fe32_3(BytesTo32Bits2);
            int i5 = i3 - 1;
            int i6 = (this.gSubKeys[i3] + ((Fe32_3 * 2) + Fe32_0)) ^ BytesTo32Bits4;
            int i7 = (BytesTo32Bits3 << 1) | (BytesTo32Bits3 >>> 31);
            int i8 = Fe32_0 + Fe32_3;
            int i9 = i5 - 1;
            BytesTo32Bits3 = (i8 + this.gSubKeys[i5]) ^ i7;
            BytesTo32Bits4 = (i6 >>> 1) | (i6 << 31);
            int Fe32_02 = Fe32_0(BytesTo32Bits3);
            int Fe32_32 = Fe32_3(BytesTo32Bits4);
            int i10 = i9 - 1;
            int i11 = BytesTo32Bits2 ^ (this.gSubKeys[i9] + ((Fe32_32 * 2) + Fe32_02));
            int i12 = Fe32_32 + Fe32_02;
            i3 = i10 - 1;
            BytesTo32Bits = ((BytesTo32Bits >>> 31) | (BytesTo32Bits << 1)) ^ (i12 + this.gSubKeys[i10]);
            BytesTo32Bits2 = (i11 << 31) | (i11 >>> 1);
        }
        Bits32ToBytes(this.gSubKeys[0] ^ BytesTo32Bits3, bArr2, i2);
        Bits32ToBytes(this.gSubKeys[1] ^ BytesTo32Bits4, bArr2, i2 + 4);
        Bits32ToBytes(this.gSubKeys[2] ^ BytesTo32Bits, bArr2, i2 + 8);
        Bits32ToBytes(this.gSubKeys[3] ^ BytesTo32Bits2, bArr2, i2 + 12);
    }

    private void encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int BytesTo32Bits = BytesTo32Bits(bArr, i) ^ this.gSubKeys[0];
        int BytesTo32Bits2 = BytesTo32Bits(bArr, i + 4) ^ this.gSubKeys[1];
        int BytesTo32Bits3 = BytesTo32Bits(bArr, i + 8) ^ this.gSubKeys[2];
        int BytesTo32Bits4 = this.gSubKeys[3] ^ BytesTo32Bits(bArr, i + 12);
        int i3 = 8;
        for (int i4 = 0; i4 < 16; i4 += 2) {
            int Fe32_0 = Fe32_0(BytesTo32Bits);
            int Fe32_3 = Fe32_3(BytesTo32Bits2);
            int i5 = i3 + 1;
            int i6 = (this.gSubKeys[i3] + (Fe32_0 + Fe32_3)) ^ BytesTo32Bits3;
            BytesTo32Bits3 = (i6 >>> 1) | (i6 << 31);
            int i7 = i5 + 1;
            BytesTo32Bits4 = (((Fe32_3 * 2) + Fe32_0) + this.gSubKeys[i5]) ^ ((BytesTo32Bits4 << 1) | (BytesTo32Bits4 >>> 31));
            int Fe32_02 = Fe32_0(BytesTo32Bits3);
            int Fe32_32 = Fe32_3(BytesTo32Bits4);
            int i8 = i7 + 1;
            int i9 = BytesTo32Bits ^ (this.gSubKeys[i7] + (Fe32_02 + Fe32_32));
            BytesTo32Bits = (i9 << 31) | (i9 >>> 1);
            int i10 = (Fe32_32 * 2) + Fe32_02;
            i3 = i8 + 1;
            BytesTo32Bits2 = ((BytesTo32Bits2 >>> 31) | (BytesTo32Bits2 << 1)) ^ (i10 + this.gSubKeys[i8]);
        }
        Bits32ToBytes(this.gSubKeys[4] ^ BytesTo32Bits3, bArr2, i2);
        Bits32ToBytes(this.gSubKeys[5] ^ BytesTo32Bits4, bArr2, i2 + 4);
        Bits32ToBytes(this.gSubKeys[6] ^ BytesTo32Bits, bArr2, i2 + 8);
        Bits32ToBytes(this.gSubKeys[7] ^ BytesTo32Bits2, bArr2, i2 + 12);
    }

    /* JADX WARNING: type inference failed for: r2v20 */
    /* JADX WARNING: type inference failed for: r4v1 */
    /* JADX WARNING: type inference failed for: r5v1 */
    /* JADX WARNING: type inference failed for: r6v4 */
    /* JADX WARNING: type inference failed for: r2v21 */
    /* JADX WARNING: type inference failed for: r4v2 */
    /* JADX WARNING: type inference failed for: r5v2 */
    /* JADX WARNING: type inference failed for: r6v6 */
    /* JADX WARNING: type inference failed for: r5v3 */
    /* JADX WARNING: type inference failed for: r4v3 */
    /* JADX WARNING: type inference failed for: r2v22 */
    /* JADX WARNING: type inference failed for: r6v18 */
    /* JADX WARNING: type inference failed for: r5v14 */
    /* JADX WARNING: type inference failed for: r4v12 */
    /* JADX WARNING: type inference failed for: r2v30 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void setKey(byte[] r18) {
        /*
            r17 = this;
            r2 = 4
            int[] r3 = new int[r2]
            r2 = 4
            int[] r4 = new int[r2]
            r2 = 4
            int[] r5 = new int[r2]
            r2 = 40
            int[] r2 = new int[r2]
            r0 = r17
            r0.gSubKeys = r2
            r0 = r17
            int r2 = r0.k64Cnt
            r6 = 1
            if (r2 >= r6) goto L_0x0020
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Key size less than 64 bits"
            r2.<init>(r3)
            throw r2
        L_0x0020:
            r0 = r17
            int r2 = r0.k64Cnt
            r6 = 4
            if (r2 <= r6) goto L_0x002f
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Key size larger than 256 bits"
            r2.<init>(r3)
            throw r2
        L_0x002f:
            r2 = 0
        L_0x0030:
            r0 = r17
            int r6 = r0.k64Cnt
            if (r2 >= r6) goto L_0x0064
            int r6 = r2 * 8
            r0 = r17
            r1 = r18
            int r7 = r0.BytesTo32Bits(r1, r6)
            r3[r2] = r7
            int r6 = r6 + 4
            r0 = r17
            r1 = r18
            int r6 = r0.BytesTo32Bits(r1, r6)
            r4[r2] = r6
            r0 = r17
            int r6 = r0.k64Cnt
            int r6 = r6 + -1
            int r6 = r6 - r2
            r7 = r3[r2]
            r8 = r4[r2]
            r0 = r17
            int r7 = r0.RS_MDS_Encode(r7, r8)
            r5[r6] = r7
            int r2 = r2 + 1
            goto L_0x0030
        L_0x0064:
            r2 = 0
        L_0x0065:
            r6 = 20
            if (r2 >= r6) goto L_0x009e
            r6 = 33686018(0x2020202, float:9.551468E-38)
            int r6 = r6 * r2
            r0 = r17
            int r7 = r0.F32(r6, r3)
            r8 = 16843009(0x1010101, float:2.3694278E-38)
            int r6 = r6 + r8
            r0 = r17
            int r6 = r0.F32(r6, r4)
            int r8 = r6 << 8
            int r6 = r6 >>> 24
            r6 = r6 | r8
            int r7 = r7 + r6
            r0 = r17
            int[] r8 = r0.gSubKeys
            int r9 = r2 * 2
            r8[r9] = r7
            int r6 = r6 + r7
            r0 = r17
            int[] r7 = r0.gSubKeys
            int r8 = r2 * 2
            int r8 = r8 + 1
            int r9 = r6 << 9
            int r6 = r6 >>> 23
            r6 = r6 | r9
            r7[r8] = r6
            int r2 = r2 + 1
            goto L_0x0065
        L_0x009e:
            r2 = 0
            r7 = r5[r2]
            r2 = 1
            r8 = r5[r2]
            r2 = 2
            r9 = r5[r2]
            r2 = 3
            r10 = r5[r2]
            r2 = 1024(0x400, float:1.435E-42)
            int[] r2 = new int[r2]
            r0 = r17
            r0.gSBox = r2
            r3 = 0
        L_0x00b3:
            r2 = 256(0x100, float:3.59E-43)
            if (r3 >= r2) goto L_0x0286
            r0 = r17
            int r2 = r0.k64Cnt
            r2 = r2 & 3
            switch(r2) {
                case 0: goto L_0x0143;
                case 1: goto L_0x00c3;
                case 2: goto L_0x028d;
                case 3: goto L_0x0287;
                default: goto L_0x00c0;
            }
        L_0x00c0:
            int r3 = r3 + 1
            goto L_0x00b3
        L_0x00c3:
            r0 = r17
            int[] r2 = r0.gSBox
            int r4 = r3 * 2
            r0 = r17
            int[] r5 = r0.gMDS0
            byte[][] r6 = P
            r11 = 0
            r6 = r6[r11]
            byte r6 = r6[r3]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r11 = r0.b0(r7)
            r6 = r6 ^ r11
            r5 = r5[r6]
            r2[r4] = r5
            r0 = r17
            int[] r2 = r0.gSBox
            int r4 = r3 * 2
            int r4 = r4 + 1
            r0 = r17
            int[] r5 = r0.gMDS1
            byte[][] r6 = P
            r11 = 0
            r6 = r6[r11]
            byte r6 = r6[r3]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r11 = r0.b1(r7)
            r6 = r6 ^ r11
            r5 = r5[r6]
            r2[r4] = r5
            r0 = r17
            int[] r2 = r0.gSBox
            int r4 = r3 * 2
            int r4 = r4 + 512
            r0 = r17
            int[] r5 = r0.gMDS2
            byte[][] r6 = P
            r11 = 1
            r6 = r6[r11]
            byte r6 = r6[r3]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r11 = r0.b2(r7)
            r6 = r6 ^ r11
            r5 = r5[r6]
            r2[r4] = r5
            r0 = r17
            int[] r2 = r0.gSBox
            int r4 = r3 * 2
            int r4 = r4 + 513
            r0 = r17
            int[] r5 = r0.gMDS3
            byte[][] r6 = P
            r11 = 1
            r6 = r6[r11]
            byte r6 = r6[r3]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r11 = r0.b3(r7)
            r6 = r6 ^ r11
            r5 = r5[r6]
            r2[r4] = r5
            goto L_0x00c0
        L_0x0143:
            byte[][] r2 = P
            r4 = 1
            r2 = r2[r4]
            byte r2 = r2[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r4 = r0.b0(r10)
            r6 = r2 ^ r4
            byte[][] r2 = P
            r4 = 0
            r2 = r2[r4]
            byte r2 = r2[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r4 = r0.b1(r10)
            r5 = r2 ^ r4
            byte[][] r2 = P
            r4 = 0
            r2 = r2[r4]
            byte r2 = r2[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r4 = r0.b2(r10)
            r4 = r4 ^ r2
            byte[][] r2 = P
            r11 = 1
            r2 = r2[r11]
            byte r2 = r2[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r11 = r0.b3(r10)
            r2 = r2 ^ r11
        L_0x0185:
            byte[][] r11 = P
            r12 = 1
            r11 = r11[r12]
            byte r6 = r11[r6]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r11 = r0.b0(r9)
            r6 = r6 ^ r11
            byte[][] r11 = P
            r12 = 1
            r11 = r11[r12]
            byte r5 = r11[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r11 = r0.b1(r9)
            r5 = r5 ^ r11
            byte[][] r11 = P
            r12 = 0
            r11 = r11[r12]
            byte r4 = r11[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r11 = r0.b2(r9)
            r4 = r4 ^ r11
            byte[][] r11 = P
            r12 = 0
            r11 = r11[r12]
            byte r2 = r11[r2]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r11 = r0.b3(r9)
            r2 = r2 ^ r11
        L_0x01c5:
            r0 = r17
            int[] r11 = r0.gSBox
            int r12 = r3 * 2
            r0 = r17
            int[] r13 = r0.gMDS0
            byte[][] r14 = P
            r15 = 0
            r14 = r14[r15]
            byte[][] r15 = P
            r16 = 0
            r15 = r15[r16]
            byte r6 = r15[r6]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r15 = r0.b0(r8)
            r6 = r6 ^ r15
            byte r6 = r14[r6]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r14 = r0.b0(r7)
            r6 = r6 ^ r14
            r6 = r13[r6]
            r11[r12] = r6
            r0 = r17
            int[] r6 = r0.gSBox
            int r11 = r3 * 2
            int r11 = r11 + 1
            r0 = r17
            int[] r12 = r0.gMDS1
            byte[][] r13 = P
            r14 = 0
            r13 = r13[r14]
            byte[][] r14 = P
            r15 = 1
            r14 = r14[r15]
            byte r5 = r14[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r14 = r0.b1(r8)
            r5 = r5 ^ r14
            byte r5 = r13[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r13 = r0.b1(r7)
            r5 = r5 ^ r13
            r5 = r12[r5]
            r6[r11] = r5
            r0 = r17
            int[] r5 = r0.gSBox
            int r6 = r3 * 2
            int r6 = r6 + 512
            r0 = r17
            int[] r11 = r0.gMDS2
            byte[][] r12 = P
            r13 = 1
            r12 = r12[r13]
            byte[][] r13 = P
            r14 = 0
            r13 = r13[r14]
            byte r4 = r13[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r13 = r0.b2(r8)
            r4 = r4 ^ r13
            byte r4 = r12[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r12 = r0.b2(r7)
            r4 = r4 ^ r12
            r4 = r11[r4]
            r5[r6] = r4
            r0 = r17
            int[] r4 = r0.gSBox
            int r5 = r3 * 2
            int r5 = r5 + 513
            r0 = r17
            int[] r6 = r0.gMDS3
            byte[][] r11 = P
            r12 = 1
            r11 = r11[r12]
            byte[][] r12 = P
            r13 = 1
            r12 = r12[r13]
            byte r2 = r12[r2]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r12 = r0.b3(r8)
            r2 = r2 ^ r12
            byte r2 = r11[r2]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r0 = r17
            int r11 = r0.b3(r7)
            r2 = r2 ^ r11
            r2 = r6[r2]
            r4[r5] = r2
            goto L_0x00c0
        L_0x0286:
            return
        L_0x0287:
            r2 = r3
            r4 = r3
            r5 = r3
            r6 = r3
            goto L_0x0185
        L_0x028d:
            r2 = r3
            r4 = r3
            r5 = r3
            r6 = r3
            goto L_0x01c5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.TwofishEngine.setKey(byte[]):void");
    }

    public String getAlgorithmName() {
        return "Twofish";
    }

    public int getBlockSize() {
        return 16;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.encrypting = z;
            this.workingKey = ((KeyParameter) cipherParameters).getKey();
            this.k64Cnt = this.workingKey.length / 8;
            setKey(this.workingKey);
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to Twofish init - " + cipherParameters.getClass().getName());
    }

    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.workingKey == null) {
            throw new IllegalStateException("Twofish not initialised");
        } else if (i + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i2 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            if (this.encrypting) {
                encryptBlock(bArr, i, bArr2, i2);
            } else {
                decryptBlock(bArr, i, bArr2, i2);
            }
            return 16;
        }
    }

    public void reset() {
        if (this.workingKey != null) {
            setKey(this.workingKey);
        }
    }
}
