package org.bouncycastle.crypto.encodings;

import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class ISO9796d1Encoding implements AsymmetricBlockCipher {
    private static final BigInteger SIX = BigInteger.valueOf(6);
    private static final BigInteger SIXTEEN = BigInteger.valueOf(16);
    private static byte[] inverse = {8, 15, 6, 1, 5, 2, 11, 12, 3, 4, HttpConstants.CR, 10, 14, 9, 0, 7};
    private static byte[] shadows = {14, 3, 5, 8, 9, 4, 2, 15, 0, HttpConstants.CR, 11, 6, 7, 10, 12, 1};
    private int bitSize;
    private AsymmetricBlockCipher engine;
    private boolean forEncryption;
    private BigInteger modulus;
    private int padBits = 0;

    public ISO9796d1Encoding(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.engine = asymmetricBlockCipher;
    }

    private static byte[] convertOutputDecryptOnly(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] != 0) {
            return byteArray;
        }
        byte[] bArr = new byte[(byteArray.length - 1)];
        System.arraycopy(byteArray, 1, bArr, 0, bArr.length);
        return bArr;
    }

    private byte[] decodeBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        int i3 = (this.bitSize + 13) / 16;
        BigInteger bigInteger = new BigInteger(1, this.engine.processBlock(bArr, i, i2));
        if (!bigInteger.mod(SIXTEEN).equals(SIX)) {
            if (this.modulus.subtract(bigInteger).mod(SIXTEEN).equals(SIX)) {
                bigInteger = this.modulus.subtract(bigInteger);
            } else {
                throw new InvalidCipherTextException("resulting integer iS or (modulus - iS) is not congruent to 6 mod 16");
            }
        }
        byte[] convertOutputDecryptOnly = convertOutputDecryptOnly(bigInteger);
        if ((convertOutputDecryptOnly[convertOutputDecryptOnly.length - 1] & 15) != 6) {
            throw new InvalidCipherTextException("invalid forcing byte in block");
        }
        convertOutputDecryptOnly[convertOutputDecryptOnly.length - 1] = (byte) (((convertOutputDecryptOnly[convertOutputDecryptOnly.length - 1] & 255) >>> 4) | (inverse[(convertOutputDecryptOnly[convertOutputDecryptOnly.length - 2] & 255) >> 4] << 4));
        convertOutputDecryptOnly[0] = (byte) ((shadows[(convertOutputDecryptOnly[1] & 255) >>> 4] << 4) | shadows[convertOutputDecryptOnly[1] & 15]);
        int i4 = 0;
        boolean z = false;
        byte b = 1;
        for (int length = convertOutputDecryptOnly.length - 1; length >= convertOutputDecryptOnly.length - (i3 * 2); length -= 2) {
            byte b2 = (shadows[(convertOutputDecryptOnly[length] & 255) >>> 4] << 4) | shadows[convertOutputDecryptOnly[length] & 15];
            if (((convertOutputDecryptOnly[length - 1] ^ b2) & 255) != 0) {
                if (!z) {
                    b = (convertOutputDecryptOnly[length - 1] ^ b2) & 255;
                    i4 = length - 1;
                    z = true;
                } else {
                    throw new InvalidCipherTextException("invalid tsums in block");
                }
            }
        }
        convertOutputDecryptOnly[i4] = 0;
        byte[] bArr2 = new byte[((convertOutputDecryptOnly.length - i4) / 2)];
        for (int i5 = 0; i5 < bArr2.length; i5++) {
            bArr2[i5] = convertOutputDecryptOnly[(i5 * 2) + i4 + 1];
        }
        this.padBits = b - 1;
        return bArr2;
    }

    private byte[] encodeBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        int i3;
        byte[] bArr2 = new byte[((this.bitSize + 7) / 8)];
        int i4 = this.padBits + 1;
        int i5 = (this.bitSize + 13) / 16;
        int i6 = 0;
        while (i6 < i5) {
            if (i6 > i5 - i2) {
                System.arraycopy(bArr, (i + i2) - (i5 - i6), bArr2, bArr2.length - i5, i5 - i6);
            } else {
                System.arraycopy(bArr, i, bArr2, bArr2.length - (i6 + i2), i2);
            }
            i6 += i2;
        }
        for (int length = bArr2.length - (i5 * 2); length != bArr2.length; length += 2) {
            byte b = bArr2[(bArr2.length - i5) + (length / 2)];
            bArr2[length] = (byte) ((shadows[(b & 255) >>> 4] << 4) | shadows[b & 15]);
            bArr2[length + 1] = b;
        }
        int length2 = bArr2.length - (i2 * 2);
        bArr2[length2] = (byte) (i4 ^ bArr2[length2]);
        bArr2[bArr2.length - 1] = (byte) ((bArr2[bArr2.length - 1] << 4) | 6);
        int i7 = 8 - ((this.bitSize - 1) % 8);
        if (i7 != 8) {
            bArr2[0] = (byte) (bArr2[0] & (255 >>> i7));
            bArr2[0] = (byte) ((128 >>> i7) | bArr2[0]);
            i3 = 0;
        } else {
            bArr2[0] = 0;
            bArr2[1] = (byte) (bArr2[1] | 128);
            i3 = 1;
        }
        return this.engine.processBlock(bArr2, i3, bArr2.length - i3);
    }

    public int getInputBlockSize() {
        int inputBlockSize = this.engine.getInputBlockSize();
        return this.forEncryption ? (inputBlockSize + 1) / 2 : inputBlockSize;
    }

    public int getOutputBlockSize() {
        int outputBlockSize = this.engine.getOutputBlockSize();
        return this.forEncryption ? outputBlockSize : (outputBlockSize + 1) / 2;
    }

    public int getPadBits() {
        return this.padBits;
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        RSAKeyParameters rSAKeyParameters = cipherParameters instanceof ParametersWithRandom ? (RSAKeyParameters) ((ParametersWithRandom) cipherParameters).getParameters() : (RSAKeyParameters) cipherParameters;
        this.engine.init(z, cipherParameters);
        this.modulus = rSAKeyParameters.getModulus();
        this.bitSize = this.modulus.bitLength();
        this.forEncryption = z;
    }

    public byte[] processBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        return this.forEncryption ? encodeBlock(bArr, i, i2) : decodeBlock(bArr, i, i2);
    }

    public void setPadBits(int i) {
        if (i > 7) {
            throw new IllegalArgumentException("padBits > 7");
        }
        this.padBits = i;
    }
}
