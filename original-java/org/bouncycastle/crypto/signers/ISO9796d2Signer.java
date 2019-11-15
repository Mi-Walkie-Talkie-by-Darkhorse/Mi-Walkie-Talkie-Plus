package org.bouncycastle.crypto.signers;

import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.SignerWithRecovery;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.util.Arrays;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class ISO9796d2Signer implements SignerWithRecovery {
    public static final int TRAILER_IMPLICIT = 188;
    public static final int TRAILER_RIPEMD128 = 13004;
    public static final int TRAILER_RIPEMD160 = 12748;
    public static final int TRAILER_SHA1 = 13260;
    public static final int TRAILER_SHA256 = 13516;
    public static final int TRAILER_SHA384 = 14028;
    public static final int TRAILER_SHA512 = 13772;
    public static final int TRAILER_WHIRLPOOL = 14284;
    private byte[] block;
    private AsymmetricBlockCipher cipher;
    private Digest digest;
    private boolean fullMessage;
    private int keyBits;
    private byte[] mBuf;
    private int messageLength;
    private byte[] preBlock;
    private byte[] preSig;
    private byte[] recoveredMessage;
    private int trailer;

    public ISO9796d2Signer(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest2) {
        this(asymmetricBlockCipher, digest2, false);
    }

    public ISO9796d2Signer(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest2, boolean z) {
        this.cipher = asymmetricBlockCipher;
        this.digest = digest2;
        if (z) {
            this.trailer = 188;
            return;
        }
        Integer trailer2 = ISOTrailers.getTrailer(digest2);
        if (trailer2 != null) {
            this.trailer = trailer2.intValue();
            return;
        }
        throw new IllegalArgumentException("no valid trailer for digest: " + digest2.getAlgorithmName());
    }

    private void clearBlock(byte[] bArr) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = 0;
        }
    }

    private boolean isSameAs(byte[] bArr, byte[] bArr2) {
        boolean z;
        boolean z2 = true;
        if (this.messageLength > this.mBuf.length) {
            if (this.mBuf.length > bArr2.length) {
                z2 = false;
            }
            z = z2;
            for (int i = 0; i != this.mBuf.length; i++) {
                if (bArr[i] != bArr2[i]) {
                    z = false;
                }
            }
        } else {
            if (this.messageLength != bArr2.length) {
                z2 = false;
            }
            z = z2;
            for (int i2 = 0; i2 != bArr2.length; i2++) {
                if (bArr[i2] != bArr2[i2]) {
                    z = false;
                }
            }
        }
        return z;
    }

    private boolean returnFalse(byte[] bArr) {
        clearBlock(this.mBuf);
        clearBlock(bArr);
        return false;
    }

    public byte[] generateSignature() throws CryptoException {
        int i;
        int length;
        byte b;
        int i2;
        int digestSize = this.digest.getDigestSize();
        if (this.trailer == 188) {
            i = 8;
            length = (this.block.length - digestSize) - 1;
            this.digest.doFinal(this.block, length);
            this.block[this.block.length - 1] = PSSSigner.TRAILER_IMPLICIT;
        } else {
            i = 16;
            length = (this.block.length - digestSize) - 2;
            this.digest.doFinal(this.block, length);
            this.block[this.block.length - 2] = (byte) (this.trailer >>> 8);
            this.block[this.block.length - 1] = (byte) this.trailer;
        }
        int i3 = ((i + ((digestSize + this.messageLength) * 8)) + 4) - this.keyBits;
        if (i3 > 0) {
            int i4 = this.messageLength - ((i3 + 7) / 8);
            b = 96;
            int i5 = length - i4;
            System.arraycopy(this.mBuf, 0, this.block, i5, i4);
            this.recoveredMessage = new byte[i4];
            i2 = i5;
        } else {
            b = 64;
            int i6 = length - this.messageLength;
            System.arraycopy(this.mBuf, 0, this.block, i6, this.messageLength);
            this.recoveredMessage = new byte[this.messageLength];
            i2 = i6;
        }
        if (i2 - 1 > 0) {
            for (int i7 = i2 - 1; i7 != 0; i7--) {
                this.block[i7] = -69;
            }
            byte[] bArr = this.block;
            int i8 = i2 - 1;
            bArr[i8] = (byte) (bArr[i8] ^ 1);
            this.block[0] = 11;
            byte[] bArr2 = this.block;
            bArr2[0] = (byte) (bArr2[0] | b);
        } else {
            this.block[0] = 10;
            byte[] bArr3 = this.block;
            bArr3[0] = (byte) (bArr3[0] | b);
        }
        byte[] processBlock = this.cipher.processBlock(this.block, 0, this.block.length);
        this.fullMessage = (b & HttpConstants.SP) == 0;
        System.arraycopy(this.mBuf, 0, this.recoveredMessage, 0, this.recoveredMessage.length);
        clearBlock(this.mBuf);
        clearBlock(this.block);
        return processBlock;
    }

    public byte[] getRecoveredMessage() {
        return this.recoveredMessage;
    }

    public boolean hasFullMessage() {
        return this.fullMessage;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        RSAKeyParameters rSAKeyParameters = (RSAKeyParameters) cipherParameters;
        this.cipher.init(z, rSAKeyParameters);
        this.keyBits = rSAKeyParameters.getModulus().bitLength();
        this.block = new byte[((this.keyBits + 7) / 8)];
        if (this.trailer == 188) {
            this.mBuf = new byte[((this.block.length - this.digest.getDigestSize()) - 2)];
        } else {
            this.mBuf = new byte[((this.block.length - this.digest.getDigestSize()) - 3)];
        }
        reset();
    }

    public void reset() {
        this.digest.reset();
        this.messageLength = 0;
        clearBlock(this.mBuf);
        if (this.recoveredMessage != null) {
            clearBlock(this.recoveredMessage);
        }
        this.recoveredMessage = null;
        this.fullMessage = false;
        if (this.preSig != null) {
            this.preSig = null;
            clearBlock(this.preBlock);
            this.preBlock = null;
        }
    }

    public void update(byte b) {
        this.digest.update(b);
        if (this.messageLength < this.mBuf.length) {
            this.mBuf[this.messageLength] = b;
        }
        this.messageLength++;
    }

    public void update(byte[] bArr, int i, int i2) {
        while (i2 > 0 && this.messageLength < this.mBuf.length) {
            update(bArr[i]);
            i++;
            i2--;
        }
        this.digest.update(bArr, i, i2);
        this.messageLength += i2;
    }

    public void updateWithRecoveredMessage(byte[] bArr) throws InvalidCipherTextException {
        int i;
        byte[] processBlock = this.cipher.processBlock(bArr, 0, bArr.length);
        if (((processBlock[0] & 192) ^ 64) != 0) {
            throw new InvalidCipherTextException("malformed signature");
        } else if (((processBlock[processBlock.length - 1] & 15) ^ 12) != 0) {
            throw new InvalidCipherTextException("malformed signature");
        } else {
            if (((processBlock[processBlock.length - 1] & 255) ^ PSSSigner.TRAILER_IMPLICIT) == 0) {
                i = 1;
            } else {
                byte b = ((processBlock[processBlock.length - 2] & 255) << 8) | (processBlock[processBlock.length - 1] & 255);
                Integer trailer2 = ISOTrailers.getTrailer(this.digest);
                if (trailer2 == null) {
                    throw new IllegalArgumentException("unrecognised hash in signature");
                } else if (b != trailer2.intValue()) {
                    throw new IllegalStateException("signer initialised with wrong digest for trailer " + b);
                } else {
                    i = 2;
                }
            }
            int i2 = 0;
            while (i2 != processBlock.length && ((processBlock[i2] & 15) ^ 10) != 0) {
                i2++;
            }
            int i3 = i2 + 1;
            int length = (processBlock.length - i) - this.digest.getDigestSize();
            if (length - i3 <= 0) {
                throw new InvalidCipherTextException("malformed block");
            }
            if ((processBlock[0] & HttpConstants.SP) == 0) {
                this.fullMessage = true;
                this.recoveredMessage = new byte[(length - i3)];
                System.arraycopy(processBlock, i3, this.recoveredMessage, 0, this.recoveredMessage.length);
            } else {
                this.fullMessage = false;
                this.recoveredMessage = new byte[(length - i3)];
                System.arraycopy(processBlock, i3, this.recoveredMessage, 0, this.recoveredMessage.length);
            }
            this.preSig = bArr;
            this.preBlock = processBlock;
            this.digest.update(this.recoveredMessage, 0, this.recoveredMessage.length);
            this.messageLength = this.recoveredMessage.length;
            System.arraycopy(this.recoveredMessage, 0, this.mBuf, 0, this.recoveredMessage.length);
        }
    }

    public boolean verifySignature(byte[] bArr) {
        byte[] bArr2;
        int i;
        if (this.preSig == null) {
            try {
                bArr2 = this.cipher.processBlock(bArr, 0, bArr.length);
            } catch (Exception e) {
                return false;
            }
        } else if (!Arrays.areEqual(this.preSig, bArr)) {
            throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
        } else {
            bArr2 = this.preBlock;
            this.preSig = null;
            this.preBlock = null;
        }
        if (((bArr2[0] & 192) ^ 64) != 0) {
            return returnFalse(bArr2);
        }
        if (((bArr2[bArr2.length - 1] & 15) ^ 12) != 0) {
            return returnFalse(bArr2);
        }
        if (((bArr2[bArr2.length - 1] & 255) ^ PSSSigner.TRAILER_IMPLICIT) == 0) {
            i = 1;
        } else {
            byte b = ((bArr2[bArr2.length - 2] & 255) << 8) | (bArr2[bArr2.length - 1] & 255);
            Integer trailer2 = ISOTrailers.getTrailer(this.digest);
            if (trailer2 == null) {
                throw new IllegalArgumentException("unrecognised hash in signature");
            } else if (b != trailer2.intValue()) {
                throw new IllegalStateException("signer initialised with wrong digest for trailer " + b);
            } else {
                i = 2;
            }
        }
        int i2 = 0;
        while (i2 != bArr2.length && ((bArr2[i2] & 15) ^ 10) != 0) {
            i2++;
        }
        int i3 = i2 + 1;
        byte[] bArr3 = new byte[this.digest.getDigestSize()];
        int length = (bArr2.length - i) - bArr3.length;
        if (length - i3 <= 0) {
            return returnFalse(bArr2);
        }
        if ((bArr2[0] & HttpConstants.SP) == 0) {
            this.fullMessage = true;
            if (this.messageLength > length - i3) {
                return returnFalse(bArr2);
            }
            this.digest.reset();
            this.digest.update(bArr2, i3, length - i3);
            this.digest.doFinal(bArr3, 0);
            boolean z = true;
            for (int i4 = 0; i4 != bArr3.length; i4++) {
                int i5 = length + i4;
                bArr2[i5] = (byte) (bArr2[i5] ^ bArr3[i4]);
                if (bArr2[length + i4] != 0) {
                    z = false;
                }
            }
            if (!z) {
                return returnFalse(bArr2);
            }
            this.recoveredMessage = new byte[(length - i3)];
            System.arraycopy(bArr2, i3, this.recoveredMessage, 0, this.recoveredMessage.length);
        } else {
            this.fullMessage = false;
            this.digest.doFinal(bArr3, 0);
            boolean z2 = true;
            for (int i6 = 0; i6 != bArr3.length; i6++) {
                int i7 = length + i6;
                bArr2[i7] = (byte) (bArr2[i7] ^ bArr3[i6]);
                if (bArr2[length + i6] != 0) {
                    z2 = false;
                }
            }
            if (!z2) {
                return returnFalse(bArr2);
            }
            this.recoveredMessage = new byte[(length - i3)];
            System.arraycopy(bArr2, i3, this.recoveredMessage, 0, this.recoveredMessage.length);
        }
        if (this.messageLength != 0 && !isSameAs(this.mBuf, this.recoveredMessage)) {
            return returnFalse(bArr2);
        }
        clearBlock(this.mBuf);
        clearBlock(bArr2);
        return true;
    }
}
