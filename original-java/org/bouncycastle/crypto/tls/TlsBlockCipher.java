package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.security.SecureRandom;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

public class TlsBlockCipher implements TlsCipher {
    protected TlsContext context;
    protected BlockCipher decryptCipher;
    protected BlockCipher encryptCipher;
    protected boolean encryptThenMAC;
    protected byte[] randomData = new byte[256];
    protected TlsMac readMac;
    protected boolean useExplicitIV;
    protected TlsMac writeMac;

    public TlsBlockCipher(TlsContext tlsContext, BlockCipher blockCipher, BlockCipher blockCipher2, Digest digest, Digest digest2, int i) throws IOException {
        int blockSize;
        byte[] bArr;
        byte[] bArr2;
        ParametersWithIV parametersWithIV;
        ParametersWithIV parametersWithIV2;
        this.context = tlsContext;
        tlsContext.getNonceRandomGenerator().nextBytes(this.randomData);
        this.useExplicitIV = TlsUtils.isTLSv11(tlsContext);
        this.encryptThenMAC = tlsContext.getSecurityParameters().encryptThenMAC;
        int digestSize = (i * 2) + digest.getDigestSize() + digest2.getDigestSize();
        int i2 = !this.useExplicitIV ? digestSize + blockCipher.getBlockSize() + blockCipher2.getBlockSize() : digestSize;
        byte[] calculateKeyBlock = TlsUtils.calculateKeyBlock(tlsContext, i2);
        TlsMac tlsMac = new TlsMac(tlsContext, digest, calculateKeyBlock, 0, digest.getDigestSize());
        int digestSize2 = 0 + digest.getDigestSize();
        TlsMac tlsMac2 = new TlsMac(tlsContext, digest2, calculateKeyBlock, digestSize2, digest2.getDigestSize());
        int digestSize3 = digest2.getDigestSize() + digestSize2;
        KeyParameter keyParameter = new KeyParameter(calculateKeyBlock, digestSize3, i);
        int i3 = digestSize3 + i;
        KeyParameter keyParameter2 = new KeyParameter(calculateKeyBlock, i3, i);
        int i4 = i3 + i;
        if (this.useExplicitIV) {
            bArr = new byte[blockCipher.getBlockSize()];
            bArr2 = new byte[blockCipher2.getBlockSize()];
            blockSize = i4;
        } else {
            byte[] copyOfRange = Arrays.copyOfRange(calculateKeyBlock, i4, blockCipher.getBlockSize() + i4);
            int blockSize2 = i4 + blockCipher.getBlockSize();
            byte[] copyOfRange2 = Arrays.copyOfRange(calculateKeyBlock, blockSize2, blockCipher2.getBlockSize() + blockSize2);
            blockSize = blockCipher2.getBlockSize() + blockSize2;
            bArr = copyOfRange;
            bArr2 = copyOfRange2;
        }
        if (blockSize != i2) {
            throw new TlsFatalAlert(80);
        }
        if (tlsContext.isServer()) {
            this.writeMac = tlsMac2;
            this.readMac = tlsMac;
            this.encryptCipher = blockCipher2;
            this.decryptCipher = blockCipher;
            parametersWithIV = new ParametersWithIV(keyParameter2, bArr2);
            parametersWithIV2 = new ParametersWithIV(keyParameter, bArr);
        } else {
            this.writeMac = tlsMac;
            this.readMac = tlsMac2;
            this.encryptCipher = blockCipher;
            this.decryptCipher = blockCipher2;
            parametersWithIV = new ParametersWithIV(keyParameter, bArr);
            parametersWithIV2 = new ParametersWithIV(keyParameter2, bArr2);
        }
        this.encryptCipher.init(true, parametersWithIV);
        this.decryptCipher.init(false, parametersWithIV2);
    }

    /* access modifiers changed from: protected */
    public int checkPaddingConstantTime(byte[] bArr, int i, int i2, int i3, int i4) {
        int i5;
        byte b;
        int i6 = i + i2;
        byte b2 = bArr[i6 - 1];
        int i7 = (b2 & 255) + 1;
        if ((!TlsUtils.isSSL(this.context) || i7 <= i3) && i4 + i7 <= i2) {
            int i8 = i6 - i7;
            byte b3 = 0;
            while (true) {
                int i9 = i8 + 1;
                b = (byte) ((bArr[i8] ^ b2) | b3);
                if (i9 >= i6) {
                    break;
                }
                b3 = b;
                i8 = i9;
            }
            if (b != 0) {
                i5 = i7;
                i7 = 0;
            } else {
                i5 = i7;
            }
        } else {
            b = 0;
            i5 = 0;
            i7 = 0;
        }
        byte[] bArr2 = this.randomData;
        while (i5 < 256) {
            b = (byte) (b | (bArr2[i5] ^ b2));
            i5++;
        }
        bArr2[0] = (byte) (b ^ bArr2[0]);
        return i7;
    }

    /* access modifiers changed from: protected */
    public int chooseExtraPadBlocks(SecureRandom secureRandom, int i) {
        return Math.min(lowestBitSet(secureRandom.nextInt()), i);
    }

    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int blockSize = this.decryptCipher.getBlockSize();
        int size = this.readMac.getSize();
        int max = this.encryptThenMAC ? blockSize + size : Math.max(blockSize, size + 1);
        if (this.useExplicitIV) {
            max += blockSize;
        }
        if (i2 < max) {
            throw new TlsFatalAlert(50);
        }
        int i5 = this.encryptThenMAC ? i2 - size : i2;
        if (i5 % blockSize != 0) {
            throw new TlsFatalAlert(21);
        }
        if (this.encryptThenMAC) {
            int i6 = i + i2;
            if (!Arrays.constantTimeAreEqual(this.readMac.calculateMac(j, s, bArr, i, i2 - size), Arrays.copyOfRange(bArr, i6 - size, i6))) {
                throw new TlsFatalAlert(20);
            }
        }
        if (this.useExplicitIV) {
            this.decryptCipher.init(false, new ParametersWithIV(null, bArr, i, blockSize));
            i4 = i + blockSize;
            i3 = i5 - blockSize;
        } else {
            i3 = i5;
            i4 = i;
        }
        for (int i7 = 0; i7 < i3; i7 += blockSize) {
            this.decryptCipher.processBlock(bArr, i4 + i7, bArr, i4 + i7);
        }
        int checkPaddingConstantTime = checkPaddingConstantTime(bArr, i4, i3, blockSize, this.encryptThenMAC ? 0 : size);
        boolean z = checkPaddingConstantTime == 0;
        int i8 = i3 - checkPaddingConstantTime;
        if (!this.encryptThenMAC) {
            i8 -= size;
            int i9 = i4 + i8;
            z |= !Arrays.constantTimeAreEqual(this.readMac.calculateMacConstantTime(j, s, bArr, i4, i8, i3 - size, this.randomData), Arrays.copyOfRange(bArr, i9, i9 + size));
        }
        if (z) {
            throw new TlsFatalAlert(20);
        }
        return Arrays.copyOfRange(bArr, i4, i4 + i8);
    }

    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int blockSize = this.encryptCipher.getBlockSize();
        int size = this.writeMac.getSize();
        ProtocolVersion serverVersion = this.context.getServerVersion();
        int i5 = (blockSize - 1) - ((!this.encryptThenMAC ? i2 + size : i2) % blockSize);
        if (!serverVersion.isDTLS() && !serverVersion.isSSL()) {
            i5 += chooseExtraPadBlocks(this.context.getSecureRandom(), (255 - i5) / blockSize) * blockSize;
        }
        int i6 = size + i2 + i5 + 1;
        if (this.useExplicitIV) {
            i6 += blockSize;
        }
        byte[] bArr2 = new byte[i6];
        if (this.useExplicitIV) {
            byte[] bArr3 = new byte[blockSize];
            this.context.getNonceRandomGenerator().nextBytes(bArr3);
            this.encryptCipher.init(true, new ParametersWithIV(null, bArr3));
            System.arraycopy(bArr3, 0, bArr2, 0, blockSize);
            i3 = 0 + blockSize;
        } else {
            i3 = 0;
        }
        System.arraycopy(bArr, i, bArr2, i3, i2);
        int i7 = i3 + i2;
        if (!this.encryptThenMAC) {
            byte[] calculateMac = this.writeMac.calculateMac(j, s, bArr, i, i2);
            System.arraycopy(calculateMac, 0, bArr2, i7, calculateMac.length);
            i4 = calculateMac.length + i7;
        } else {
            i4 = i7;
        }
        int i8 = i4;
        int i9 = 0;
        while (i9 <= i5) {
            int i10 = i8 + 1;
            bArr2[i8] = (byte) i5;
            i9++;
            i8 = i10;
        }
        while (i3 < i8) {
            this.encryptCipher.processBlock(bArr2, i3, bArr2, i3);
            i3 += blockSize;
        }
        if (this.encryptThenMAC) {
            byte[] calculateMac2 = this.writeMac.calculateMac(j, s, bArr2, 0, i8);
            System.arraycopy(calculateMac2, 0, bArr2, i8, calculateMac2.length);
            int length = calculateMac2.length + i8;
        }
        return bArr2;
    }

    public int getPlaintextLimit(int i) {
        int i2;
        int blockSize = this.encryptCipher.getBlockSize();
        int size = this.writeMac.getSize();
        if (this.useExplicitIV) {
            i -= blockSize;
        }
        if (this.encryptThenMAC) {
            int i3 = i - size;
            i2 = i3 - (i3 % blockSize);
        } else {
            i2 = (i - (i % blockSize)) - size;
        }
        return i2 - 1;
    }

    public TlsMac getReadMac() {
        return this.readMac;
    }

    public TlsMac getWriteMac() {
        return this.writeMac;
    }

    /* access modifiers changed from: protected */
    public int lowestBitSet(int i) {
        if (i == 0) {
            return 32;
        }
        int i2 = 0;
        while ((i & 1) == 0) {
            i2++;
            i >>= 1;
        }
        return i2;
    }
}
