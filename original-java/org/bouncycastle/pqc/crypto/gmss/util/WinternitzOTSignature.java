package org.bouncycastle.pqc.crypto.gmss.util;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.Digest;

public class WinternitzOTSignature {
    private int checksumsize;
    private GMSSRandom gmssRandom = new GMSSRandom(this.messDigestOTS);
    private int keysize;
    private int mdsize = this.messDigestOTS.getDigestSize();
    private Digest messDigestOTS;
    private int messagesize;
    private byte[][] privateKeyOTS;
    private int w;

    public WinternitzOTSignature(byte[] bArr, Digest digest, int i) {
        this.w = i;
        this.messDigestOTS = digest;
        this.messagesize = (int) Math.ceil(((double) (this.mdsize << 3)) / ((double) i));
        this.checksumsize = getLog((this.messagesize << i) + 1);
        this.keysize = this.messagesize + ((int) Math.ceil(((double) this.checksumsize) / ((double) i)));
        this.privateKeyOTS = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.keysize, this.mdsize});
        byte[] bArr2 = new byte[this.mdsize];
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        for (int i2 = 0; i2 < this.keysize; i2++) {
            this.privateKeyOTS[i2] = this.gmssRandom.nextSeed(bArr2);
        }
    }

    public int getLog(int i) {
        int i2 = 1;
        int i3 = 2;
        while (i3 < i) {
            i3 <<= 1;
            i2++;
        }
        return i2;
    }

    public byte[][] getPrivateKey() {
        return this.privateKeyOTS;
    }

    public byte[] getPublicKey() {
        byte[] bArr = new byte[(this.keysize * this.mdsize)];
        byte[] bArr2 = new byte[this.mdsize];
        int i = 1 << this.w;
        for (int i2 = 0; i2 < this.keysize; i2++) {
            this.messDigestOTS.update(this.privateKeyOTS[i2], 0, this.privateKeyOTS[i2].length);
            byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
            this.messDigestOTS.doFinal(bArr3, 0);
            for (int i3 = 2; i3 < i; i3++) {
                this.messDigestOTS.update(bArr3, 0, bArr3.length);
                bArr3 = new byte[this.messDigestOTS.getDigestSize()];
                this.messDigestOTS.doFinal(bArr3, 0);
            }
            System.arraycopy(bArr3, 0, bArr, this.mdsize * i2, this.mdsize);
        }
        this.messDigestOTS.update(bArr, 0, bArr.length);
        byte[] bArr4 = new byte[this.messDigestOTS.getDigestSize()];
        this.messDigestOTS.doFinal(bArr4, 0);
        return bArr4;
    }

    /* JADX WARNING: type inference failed for: r10v28, types: [int] */
    /* JADX WARNING: type inference failed for: r6v69 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] getSignature(byte[] r24) {
        /*
            r23 = this;
            r0 = r23
            int r4 = r0.keysize
            r0 = r23
            int r5 = r0.mdsize
            int r4 = r4 * r5
            byte[] r13 = new byte[r4]
            r0 = r23
            int r4 = r0.mdsize
            byte[] r4 = new byte[r4]
            r7 = 0
            r6 = 0
            r0 = r23
            org.bouncycastle.crypto.Digest r4 = r0.messDigestOTS
            r5 = 0
            r0 = r24
            int r8 = r0.length
            r0 = r24
            r4.update(r0, r5, r8)
            r0 = r23
            org.bouncycastle.crypto.Digest r4 = r0.messDigestOTS
            int r4 = r4.getDigestSize()
            byte[] r14 = new byte[r4]
            r0 = r23
            org.bouncycastle.crypto.Digest r4 = r0.messDigestOTS
            r5 = 0
            r4.doFinal(r14, r5)
            r4 = 8
            r0 = r23
            int r5 = r0.w
            int r4 = r4 % r5
            if (r4 != 0) goto L_0x0117
            r4 = 8
            r0 = r23
            int r5 = r0.w
            int r11 = r4 / r5
            r4 = 1
            r0 = r23
            int r5 = r0.w
            int r4 = r4 << r5
            int r12 = r4 + -1
            r0 = r23
            int r4 = r0.mdsize
            byte[] r5 = new byte[r4]
            r4 = 0
        L_0x0052:
            int r8 = r14.length
            if (r4 >= r8) goto L_0x00ba
            r8 = 0
            r9 = r8
        L_0x0057:
            if (r9 >= r11) goto L_0x00b7
            byte r8 = r14[r4]
            r8 = r8 & r12
            int r10 = r6 + r8
            r0 = r23
            byte[][] r6 = r0.privateKeyOTS
            r6 = r6[r7]
            r15 = 0
            r16 = 0
            r0 = r23
            int r0 = r0.mdsize
            r17 = r0
            r0 = r16
            r1 = r17
            java.lang.System.arraycopy(r6, r15, r5, r0, r1)
            r6 = r8
        L_0x0075:
            if (r6 <= 0) goto L_0x0099
            r0 = r23
            org.bouncycastle.crypto.Digest r8 = r0.messDigestOTS
            r15 = 0
            int r0 = r5.length
            r16 = r0
            r0 = r16
            r8.update(r5, r15, r0)
            r0 = r23
            org.bouncycastle.crypto.Digest r5 = r0.messDigestOTS
            int r5 = r5.getDigestSize()
            byte[] r5 = new byte[r5]
            r0 = r23
            org.bouncycastle.crypto.Digest r8 = r0.messDigestOTS
            r15 = 0
            r8.doFinal(r5, r15)
            int r6 = r6 + -1
            goto L_0x0075
        L_0x0099:
            r6 = 0
            r0 = r23
            int r8 = r0.mdsize
            int r8 = r8 * r7
            r0 = r23
            int r15 = r0.mdsize
            java.lang.System.arraycopy(r5, r6, r13, r8, r15)
            byte r6 = r14[r4]
            r0 = r23
            int r8 = r0.w
            int r6 = r6 >>> r8
            byte r6 = (byte) r6
            r14[r4] = r6
            int r7 = r7 + 1
            int r6 = r9 + 1
            r9 = r6
            r6 = r10
            goto L_0x0057
        L_0x00b7:
            int r4 = r4 + 1
            goto L_0x0052
        L_0x00ba:
            r0 = r23
            int r4 = r0.messagesize
            r0 = r23
            int r8 = r0.w
            int r4 = r4 << r8
            int r6 = r4 - r6
            r4 = 0
        L_0x00c6:
            r0 = r23
            int r8 = r0.checksumsize
            if (r4 >= r8) goto L_0x0450
            r8 = r6 & r12
            r0 = r23
            byte[][] r9 = r0.privateKeyOTS
            r9 = r9[r7]
            r10 = 0
            r11 = 0
            r0 = r23
            int r14 = r0.mdsize
            java.lang.System.arraycopy(r9, r10, r5, r11, r14)
        L_0x00dd:
            if (r8 <= 0) goto L_0x00fd
            r0 = r23
            org.bouncycastle.crypto.Digest r9 = r0.messDigestOTS
            r10 = 0
            int r11 = r5.length
            r9.update(r5, r10, r11)
            r0 = r23
            org.bouncycastle.crypto.Digest r5 = r0.messDigestOTS
            int r5 = r5.getDigestSize()
            byte[] r5 = new byte[r5]
            r0 = r23
            org.bouncycastle.crypto.Digest r9 = r0.messDigestOTS
            r10 = 0
            r9.doFinal(r5, r10)
            int r8 = r8 + -1
            goto L_0x00dd
        L_0x00fd:
            r8 = 0
            r0 = r23
            int r9 = r0.mdsize
            int r9 = r9 * r7
            r0 = r23
            int r10 = r0.mdsize
            java.lang.System.arraycopy(r5, r8, r13, r9, r10)
            r0 = r23
            int r8 = r0.w
            int r6 = r6 >>> r8
            int r7 = r7 + 1
            r0 = r23
            int r8 = r0.w
            int r4 = r4 + r8
            goto L_0x00c6
        L_0x0117:
            r0 = r23
            int r4 = r0.w
            r5 = 8
            if (r4 >= r5) goto L_0x02c7
            r0 = r23
            int r4 = r0.mdsize
            r0 = r23
            int r5 = r0.w
            int r15 = r4 / r5
            r4 = 1
            r0 = r23
            int r5 = r0.w
            int r4 = r4 << r5
            int r16 = r4 + -1
            r0 = r23
            int r4 = r0.mdsize
            byte[] r8 = new byte[r4]
            r5 = 0
            r4 = 0
            r12 = r4
            r9 = r6
            r10 = r7
        L_0x013c:
            if (r12 >= r15) goto L_0x01e9
            r6 = 0
            r4 = 0
        L_0x0141:
            r0 = r23
            int r11 = r0.w
            if (r4 >= r11) goto L_0x0159
            byte r11 = r14[r5]
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r17 = r4 << 3
            int r11 = r11 << r17
            long r0 = (long) r11
            r18 = r0
            long r6 = r6 ^ r18
            int r5 = r5 + 1
            int r4 = r4 + 1
            goto L_0x0141
        L_0x0159:
            r4 = 0
            r11 = r10
            r10 = r9
            r21 = r8
            r8 = r6
            r7 = r4
            r4 = r21
        L_0x0162:
            r6 = 8
            if (r7 >= r6) goto L_0x01e1
            r0 = r16
            long r0 = (long) r0
            r18 = r0
            long r18 = r18 & r8
            r0 = r18
            int r6 = (int) r0
            int r10 = r10 + r6
            r0 = r23
            byte[][] r0 = r0.privateKeyOTS
            r17 = r0
            r17 = r17[r11]
            r18 = 0
            r19 = 0
            r0 = r23
            int r0 = r0.mdsize
            r20 = r0
            r0 = r17
            r1 = r18
            r2 = r19
            r3 = r20
            java.lang.System.arraycopy(r0, r1, r4, r2, r3)
        L_0x018e:
            if (r6 <= 0) goto L_0x01c0
            r0 = r23
            org.bouncycastle.crypto.Digest r0 = r0.messDigestOTS
            r17 = r0
            r18 = 0
            int r0 = r4.length
            r19 = r0
            r0 = r17
            r1 = r18
            r2 = r19
            r0.update(r4, r1, r2)
            r0 = r23
            org.bouncycastle.crypto.Digest r4 = r0.messDigestOTS
            int r4 = r4.getDigestSize()
            byte[] r4 = new byte[r4]
            r0 = r23
            org.bouncycastle.crypto.Digest r0 = r0.messDigestOTS
            r17 = r0
            r18 = 0
            r0 = r17
            r1 = r18
            r0.doFinal(r4, r1)
            int r6 = r6 + -1
            goto L_0x018e
        L_0x01c0:
            r6 = 0
            r0 = r23
            int r0 = r0.mdsize
            r17 = r0
            int r17 = r17 * r11
            r0 = r23
            int r0 = r0.mdsize
            r18 = r0
            r0 = r17
            r1 = r18
            java.lang.System.arraycopy(r4, r6, r13, r0, r1)
            r0 = r23
            int r6 = r0.w
            long r8 = r8 >>> r6
            int r11 = r11 + 1
            int r6 = r7 + 1
            r7 = r6
            goto L_0x0162
        L_0x01e1:
            int r6 = r12 + 1
            r12 = r6
            r8 = r4
            r9 = r10
            r10 = r11
            goto L_0x013c
        L_0x01e9:
            r0 = r23
            int r4 = r0.mdsize
            r0 = r23
            int r6 = r0.w
            int r11 = r4 % r6
            r6 = 0
            r4 = 0
        L_0x01f6:
            if (r4 >= r11) goto L_0x0209
            byte r12 = r14[r5]
            r12 = r12 & 255(0xff, float:3.57E-43)
            int r15 = r4 << 3
            int r12 = r12 << r15
            long r0 = (long) r12
            r18 = r0
            long r6 = r6 ^ r18
            int r5 = r5 + 1
            int r4 = r4 + 1
            goto L_0x01f6
        L_0x0209:
            int r11 = r11 << 3
            r4 = 0
            r5 = r8
            r21 = r6
            r6 = r4
            r7 = r10
            r10 = r9
            r8 = r21
        L_0x0214:
            if (r6 >= r11) goto L_0x026a
            r0 = r16
            long r14 = (long) r0
            long r14 = r14 & r8
            int r4 = (int) r14
            int r10 = r10 + r4
            r0 = r23
            byte[][] r12 = r0.privateKeyOTS
            r12 = r12[r7]
            r14 = 0
            r15 = 0
            r0 = r23
            int r0 = r0.mdsize
            r17 = r0
            r0 = r17
            java.lang.System.arraycopy(r12, r14, r5, r15, r0)
        L_0x022f:
            if (r4 <= 0) goto L_0x024f
            r0 = r23
            org.bouncycastle.crypto.Digest r12 = r0.messDigestOTS
            r14 = 0
            int r15 = r5.length
            r12.update(r5, r14, r15)
            r0 = r23
            org.bouncycastle.crypto.Digest r5 = r0.messDigestOTS
            int r5 = r5.getDigestSize()
            byte[] r5 = new byte[r5]
            r0 = r23
            org.bouncycastle.crypto.Digest r12 = r0.messDigestOTS
            r14 = 0
            r12.doFinal(r5, r14)
            int r4 = r4 + -1
            goto L_0x022f
        L_0x024f:
            r4 = 0
            r0 = r23
            int r12 = r0.mdsize
            int r12 = r12 * r7
            r0 = r23
            int r14 = r0.mdsize
            java.lang.System.arraycopy(r5, r4, r13, r12, r14)
            r0 = r23
            int r4 = r0.w
            long r8 = r8 >>> r4
            int r7 = r7 + 1
            r0 = r23
            int r4 = r0.w
            int r4 = r4 + r6
            r6 = r4
            goto L_0x0214
        L_0x026a:
            r0 = r23
            int r4 = r0.messagesize
            r0 = r23
            int r6 = r0.w
            int r4 = r4 << r6
            int r6 = r4 - r10
            r4 = 0
        L_0x0276:
            r0 = r23
            int r8 = r0.checksumsize
            if (r4 >= r8) goto L_0x0450
            r8 = r6 & r16
            r0 = r23
            byte[][] r9 = r0.privateKeyOTS
            r9 = r9[r7]
            r10 = 0
            r11 = 0
            r0 = r23
            int r12 = r0.mdsize
            java.lang.System.arraycopy(r9, r10, r5, r11, r12)
        L_0x028d:
            if (r8 <= 0) goto L_0x02ad
            r0 = r23
            org.bouncycastle.crypto.Digest r9 = r0.messDigestOTS
            r10 = 0
            int r11 = r5.length
            r9.update(r5, r10, r11)
            r0 = r23
            org.bouncycastle.crypto.Digest r5 = r0.messDigestOTS
            int r5 = r5.getDigestSize()
            byte[] r5 = new byte[r5]
            r0 = r23
            org.bouncycastle.crypto.Digest r9 = r0.messDigestOTS
            r10 = 0
            r9.doFinal(r5, r10)
            int r8 = r8 + -1
            goto L_0x028d
        L_0x02ad:
            r8 = 0
            r0 = r23
            int r9 = r0.mdsize
            int r9 = r9 * r7
            r0 = r23
            int r10 = r0.mdsize
            java.lang.System.arraycopy(r5, r8, r13, r9, r10)
            r0 = r23
            int r8 = r0.w
            int r6 = r6 >>> r8
            int r7 = r7 + 1
            r0 = r23
            int r8 = r0.w
            int r4 = r4 + r8
            goto L_0x0276
        L_0x02c7:
            r0 = r23
            int r4 = r0.w
            r5 = 57
            if (r4 >= r5) goto L_0x0450
            r0 = r23
            int r4 = r0.mdsize
            int r4 = r4 << 3
            r0 = r23
            int r5 = r0.w
            int r12 = r4 - r5
            r4 = 1
            r0 = r23
            int r5 = r0.w
            int r4 = r4 << r5
            int r15 = r4 + -1
            r0 = r23
            int r4 = r0.mdsize
            byte[] r8 = new byte[r4]
            r4 = 0
            r5 = r4
            r9 = r6
            r10 = r7
        L_0x02ed:
            if (r5 > r12) goto L_0x0374
            int r4 = r5 >>> 3
            int r16 = r5 % 8
            r0 = r23
            int r6 = r0.w
            int r11 = r5 + r6
            int r5 = r11 + 7
            int r17 = r5 >>> 3
            r6 = 0
            r5 = 0
        L_0x0300:
            r0 = r17
            if (r4 >= r0) goto L_0x031c
            byte r18 = r14[r4]
            r0 = r18
            r0 = r0 & 255(0xff, float:3.57E-43)
            r18 = r0
            int r19 = r5 << 3
            int r18 = r18 << r19
            r0 = r18
            long r0 = (long) r0
            r18 = r0
            long r6 = r6 ^ r18
            int r5 = r5 + 1
            int r4 = r4 + 1
            goto L_0x0300
        L_0x031c:
            long r4 = r6 >>> r16
            long r6 = (long) r15
            long r4 = r4 & r6
            long r6 = (long) r9
            long r6 = r6 + r4
            int r9 = (int) r6
            r0 = r23
            byte[][] r6 = r0.privateKeyOTS
            r6 = r6[r10]
            r7 = 0
            r16 = 0
            r0 = r23
            int r0 = r0.mdsize
            r17 = r0
            r0 = r16
            r1 = r17
            java.lang.System.arraycopy(r6, r7, r8, r0, r1)
        L_0x0339:
            r6 = 0
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 <= 0) goto L_0x0362
            r0 = r23
            org.bouncycastle.crypto.Digest r6 = r0.messDigestOTS
            r7 = 0
            int r0 = r8.length
            r16 = r0
            r0 = r16
            r6.update(r8, r7, r0)
            r0 = r23
            org.bouncycastle.crypto.Digest r6 = r0.messDigestOTS
            int r6 = r6.getDigestSize()
            byte[] r8 = new byte[r6]
            r0 = r23
            org.bouncycastle.crypto.Digest r6 = r0.messDigestOTS
            r7 = 0
            r6.doFinal(r8, r7)
            r6 = 1
            long r4 = r4 - r6
            goto L_0x0339
        L_0x0362:
            r4 = 0
            r0 = r23
            int r5 = r0.mdsize
            int r5 = r5 * r10
            r0 = r23
            int r6 = r0.mdsize
            java.lang.System.arraycopy(r8, r4, r13, r5, r6)
            int r10 = r10 + 1
            r5 = r11
            goto L_0x02ed
        L_0x0374:
            int r4 = r5 >>> 3
            r0 = r23
            int r6 = r0.mdsize
            if (r4 >= r6) goto L_0x0451
            int r11 = r5 % 8
            r6 = 0
            r5 = 0
        L_0x0381:
            r0 = r23
            int r12 = r0.mdsize
            if (r4 >= r12) goto L_0x0399
            byte r12 = r14[r4]
            r12 = r12 & 255(0xff, float:3.57E-43)
            int r16 = r5 << 3
            int r12 = r12 << r16
            long r0 = (long) r12
            r16 = r0
            long r6 = r6 ^ r16
            int r5 = r5 + 1
            int r4 = r4 + 1
            goto L_0x0381
        L_0x0399:
            long r4 = r6 >>> r11
            long r6 = (long) r15
            long r6 = r6 & r4
            long r4 = (long) r9
            long r4 = r4 + r6
            int r5 = (int) r4
            r0 = r23
            byte[][] r4 = r0.privateKeyOTS
            r4 = r4[r10]
            r9 = 0
            r11 = 0
            r0 = r23
            int r12 = r0.mdsize
            java.lang.System.arraycopy(r4, r9, r8, r11, r12)
            r4 = r8
        L_0x03b0:
            r8 = 0
            int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r8 <= 0) goto L_0x03d5
            r0 = r23
            org.bouncycastle.crypto.Digest r8 = r0.messDigestOTS
            r9 = 0
            int r11 = r4.length
            r8.update(r4, r9, r11)
            r0 = r23
            org.bouncycastle.crypto.Digest r4 = r0.messDigestOTS
            int r4 = r4.getDigestSize()
            byte[] r4 = new byte[r4]
            r0 = r23
            org.bouncycastle.crypto.Digest r8 = r0.messDigestOTS
            r9 = 0
            r8.doFinal(r4, r9)
            r8 = 1
            long r6 = r6 - r8
            goto L_0x03b0
        L_0x03d5:
            r6 = 0
            r0 = r23
            int r7 = r0.mdsize
            int r7 = r7 * r10
            r0 = r23
            int r8 = r0.mdsize
            java.lang.System.arraycopy(r4, r6, r13, r7, r8)
            int r6 = r10 + 1
        L_0x03e4:
            r0 = r23
            int r7 = r0.messagesize
            r0 = r23
            int r8 = r0.w
            int r7 = r7 << r8
            int r7 = r7 - r5
            r5 = 0
            r21 = r5
            r5 = r4
            r4 = r21
            r22 = r7
            r7 = r6
            r6 = r22
        L_0x03f9:
            r0 = r23
            int r8 = r0.checksumsize
            if (r4 >= r8) goto L_0x0450
            r8 = r6 & r15
            long r8 = (long) r8
            r0 = r23
            byte[][] r10 = r0.privateKeyOTS
            r10 = r10[r7]
            r11 = 0
            r12 = 0
            r0 = r23
            int r14 = r0.mdsize
            java.lang.System.arraycopy(r10, r11, r5, r12, r14)
        L_0x0411:
            r10 = 0
            int r10 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r10 <= 0) goto L_0x0436
            r0 = r23
            org.bouncycastle.crypto.Digest r10 = r0.messDigestOTS
            r11 = 0
            int r12 = r5.length
            r10.update(r5, r11, r12)
            r0 = r23
            org.bouncycastle.crypto.Digest r5 = r0.messDigestOTS
            int r5 = r5.getDigestSize()
            byte[] r5 = new byte[r5]
            r0 = r23
            org.bouncycastle.crypto.Digest r10 = r0.messDigestOTS
            r11 = 0
            r10.doFinal(r5, r11)
            r10 = 1
            long r8 = r8 - r10
            goto L_0x0411
        L_0x0436:
            r8 = 0
            r0 = r23
            int r9 = r0.mdsize
            int r9 = r9 * r7
            r0 = r23
            int r10 = r0.mdsize
            java.lang.System.arraycopy(r5, r8, r13, r9, r10)
            r0 = r23
            int r8 = r0.w
            int r6 = r6 >>> r8
            int r7 = r7 + 1
            r0 = r23
            int r8 = r0.w
            int r4 = r4 + r8
            goto L_0x03f9
        L_0x0450:
            return r13
        L_0x0451:
            r4 = r8
            r5 = r9
            r6 = r10
            goto L_0x03e4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.gmss.util.WinternitzOTSignature.getSignature(byte[]):byte[]");
    }
}
