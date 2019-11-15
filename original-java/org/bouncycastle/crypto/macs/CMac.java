package org.bouncycastle.crypto.macs;

import com.ifengyu.im.protobuf.IMBaseDefine.GroupCmdID;
import com.ifengyu.im.protobuf.IMBaseDefine.MessageCmdID;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.ISO7816d4Padding;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

public class CMac implements Mac {
    private byte[] Lu;
    private byte[] Lu2;
    private byte[] ZEROES;
    private byte[] buf;
    private int bufOff;
    private BlockCipher cipher;
    private byte[] mac;
    private int macSize;
    private byte[] poly;

    public CMac(BlockCipher blockCipher) {
        this(blockCipher, blockCipher.getBlockSize() * 8);
    }

    public CMac(BlockCipher blockCipher, int i) {
        if (i % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        } else if (i > blockCipher.getBlockSize() * 8) {
            throw new IllegalArgumentException("MAC size must be less or equal to " + (blockCipher.getBlockSize() * 8));
        } else {
            this.cipher = new CBCBlockCipher(blockCipher);
            this.macSize = i / 8;
            this.poly = lookupPoly(blockCipher.getBlockSize());
            this.mac = new byte[blockCipher.getBlockSize()];
            this.buf = new byte[blockCipher.getBlockSize()];
            this.ZEROES = new byte[blockCipher.getBlockSize()];
            this.bufOff = 0;
        }
    }

    private byte[] doubleLu(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        byte b = (-shiftLeft(bArr, bArr2)) & 255;
        int length = bArr.length - 3;
        bArr2[length] = (byte) (bArr2[length] ^ (this.poly[1] & b));
        int length2 = bArr.length - 2;
        bArr2[length2] = (byte) (bArr2[length2] ^ (this.poly[2] & b));
        int length3 = bArr.length - 1;
        bArr2[length3] = (byte) ((b & this.poly[3]) ^ bArr2[length3]);
        return bArr2;
    }

    private static byte[] lookupPoly(int i) {
        int i2 = 27;
        switch (i * 8) {
            case 64:
            case 320:
                break;
            case 128:
                i2 = 135;
                break;
            case 160:
                i2 = 45;
                break;
            case 192:
                i2 = 135;
                break;
            case 224:
                i2 = MessageCmdID.CID_MSG_LIST_REQUEST_VALUE;
                break;
            case 256:
                i2 = GroupCmdID.CID_GROUP_JOIN_CONFERENCE_REQUEST_VALUE;
                break;
            case 384:
                i2 = 4109;
                break;
            case 448:
                i2 = 2129;
                break;
            case 512:
                i2 = 293;
                break;
            case 768:
                i2 = 655377;
                break;
            case 1024:
                i2 = 524355;
                break;
            case 2048:
                i2 = 548865;
                break;
            default:
                throw new IllegalArgumentException("Unknown block size for CMAC: " + (i * 8));
        }
        return Pack.intToBigEndian(i2);
    }

    private static int shiftLeft(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = 0;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            byte b = bArr[length] & 255;
            bArr2[length] = (byte) (i | (b << 1));
            i = (b >>> 7) & 1;
        }
    }

    public int doFinal(byte[] bArr, int i) {
        byte[] bArr2;
        if (this.bufOff == this.cipher.getBlockSize()) {
            bArr2 = this.Lu;
        } else {
            new ISO7816d4Padding().addPadding(this.buf, this.bufOff);
            bArr2 = this.Lu2;
        }
        for (int i2 = 0; i2 < this.mac.length; i2++) {
            byte[] bArr3 = this.buf;
            bArr3[i2] = (byte) (bArr3[i2] ^ bArr2[i2]);
        }
        this.cipher.processBlock(this.buf, 0, this.mac, 0);
        System.arraycopy(this.mac, 0, bArr, i, this.macSize);
        reset();
        return this.macSize;
    }

    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName();
    }

    public int getMacSize() {
        return this.macSize;
    }

    public void init(CipherParameters cipherParameters) {
        validate(cipherParameters);
        this.cipher.init(true, cipherParameters);
        byte[] bArr = new byte[this.ZEROES.length];
        this.cipher.processBlock(this.ZEROES, 0, bArr, 0);
        this.Lu = doubleLu(bArr);
        this.Lu2 = doubleLu(this.Lu);
        reset();
    }

    public void reset() {
        for (int i = 0; i < this.buf.length; i++) {
            this.buf[i] = 0;
        }
        this.bufOff = 0;
        this.cipher.reset();
    }

    public void update(byte b) {
        if (this.bufOff == this.buf.length) {
            this.cipher.processBlock(this.buf, 0, this.mac, 0);
            this.bufOff = 0;
        }
        byte[] bArr = this.buf;
        int i = this.bufOff;
        this.bufOff = i + 1;
        bArr[i] = b;
    }

    public void update(byte[] bArr, int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = this.cipher.getBlockSize();
        int i3 = blockSize - this.bufOff;
        if (i2 > i3) {
            System.arraycopy(bArr, i, this.buf, this.bufOff, i3);
            this.cipher.processBlock(this.buf, 0, this.mac, 0);
            this.bufOff = 0;
            i2 -= i3;
            i += i3;
            while (i2 > blockSize) {
                this.cipher.processBlock(bArr, i, this.mac, 0);
                i2 -= blockSize;
                i += blockSize;
            }
        }
        System.arraycopy(bArr, i, this.buf, this.bufOff, i2);
        this.bufOff += i2;
    }

    /* access modifiers changed from: 0000 */
    public void validate(CipherParameters cipherParameters) {
        if (cipherParameters != null && !(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("CMac mode only permits key to be set.");
        }
    }
}
