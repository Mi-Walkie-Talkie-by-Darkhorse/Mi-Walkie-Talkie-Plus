package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;
import org.bouncycastle.crypto.params.KDFCounterParameters;
import org.bouncycastle.crypto.params.KeyParameter;

public class KDFCounterBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private byte[] fixedInputDataCtrPrefix;
    private byte[] fixedInputData_afterCtr;
    private int generatedBytes;
    private final int h;
    private byte[] ios;
    private byte[] k = new byte[this.h];
    private int maxSizeExcl;
    private final Mac prf;

    public KDFCounterBytesGenerator(Mac mac) {
        this.prf = mac;
        this.h = mac.getMacSize();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x001d, code lost:
        r5.ios[r5.ios.length - 3] = (byte) (r0 >>> 16);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0029, code lost:
        r5.ios[r5.ios.length - 2] = (byte) (r0 >>> 8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0035, code lost:
        r5.ios[r5.ios.length - 1] = (byte) r0;
        r5.prf.update(r5.fixedInputDataCtrPrefix, 0, r5.fixedInputDataCtrPrefix.length);
        r5.prf.update(r5.ios, 0, r5.ios.length);
        r5.prf.update(r5.fixedInputData_afterCtr, 0, r5.fixedInputData_afterCtr.length);
        r5.prf.doFinal(r5.k, 0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0064, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void generateNext() {
        /*
            r5 = this;
            r4 = 0
            int r0 = r5.generatedBytes
            int r1 = r5.h
            int r0 = r0 / r1
            int r0 = r0 + 1
            byte[] r1 = r5.ios
            int r1 = r1.length
            switch(r1) {
                case 1: goto L_0x0035;
                case 2: goto L_0x0029;
                case 3: goto L_0x001d;
                case 4: goto L_0x0016;
                default: goto L_0x000e;
            }
        L_0x000e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Unsupported size of counter i"
            r0.<init>(r1)
            throw r0
        L_0x0016:
            byte[] r1 = r5.ios
            int r2 = r0 >>> 24
            byte r2 = (byte) r2
            r1[r4] = r2
        L_0x001d:
            byte[] r1 = r5.ios
            byte[] r2 = r5.ios
            int r2 = r2.length
            int r2 = r2 + -3
            int r3 = r0 >>> 16
            byte r3 = (byte) r3
            r1[r2] = r3
        L_0x0029:
            byte[] r1 = r5.ios
            byte[] r2 = r5.ios
            int r2 = r2.length
            int r2 = r2 + -2
            int r3 = r0 >>> 8
            byte r3 = (byte) r3
            r1[r2] = r3
        L_0x0035:
            byte[] r1 = r5.ios
            byte[] r2 = r5.ios
            int r2 = r2.length
            int r2 = r2 + -1
            byte r0 = (byte) r0
            r1[r2] = r0
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.fixedInputDataCtrPrefix
            byte[] r2 = r5.fixedInputDataCtrPrefix
            int r2 = r2.length
            r0.update(r1, r4, r2)
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.ios
            byte[] r2 = r5.ios
            int r2 = r2.length
            r0.update(r1, r4, r2)
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.fixedInputData_afterCtr
            byte[] r2 = r5.fixedInputData_afterCtr
            int r2 = r2.length
            r0.update(r1, r4, r2)
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.k
            r0.doFinal(r1, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.generators.KDFCounterBytesGenerator.generateNext():void");
    }

    public int generateBytes(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException {
        int i3 = this.generatedBytes + i2;
        if (i3 < 0 || i3 >= this.maxSizeExcl) {
            throw new DataLengthException("Current KDFCTR may only be used for " + this.maxSizeExcl + " bytes");
        }
        if (this.generatedBytes % this.h == 0) {
            generateNext();
        }
        int i4 = this.generatedBytes % this.h;
        int min = Math.min(this.h - (this.generatedBytes % this.h), i2);
        System.arraycopy(this.k, i4, bArr, i, min);
        this.generatedBytes += min;
        int i5 = i2 - min;
        int i6 = min + i;
        while (i5 > 0) {
            generateNext();
            int min2 = Math.min(this.h, i5);
            System.arraycopy(this.k, 0, bArr, i6, min2);
            this.generatedBytes += min2;
            i5 -= min2;
            i6 += min2;
        }
        return i2;
    }

    public Mac getMac() {
        return this.prf;
    }

    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof KDFCounterParameters)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        KDFCounterParameters kDFCounterParameters = (KDFCounterParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFCounterParameters.getKI()));
        this.fixedInputDataCtrPrefix = kDFCounterParameters.getFixedInputDataCounterPrefix();
        this.fixedInputData_afterCtr = kDFCounterParameters.getFixedInputDataCounterSuffix();
        int r = kDFCounterParameters.getR();
        this.ios = new byte[(r / 8)];
        BigInteger multiply = TWO.pow(r).multiply(BigInteger.valueOf((long) this.h));
        this.maxSizeExcl = multiply.compareTo(INTEGER_MAX) == 1 ? Integer.MAX_VALUE : multiply.intValue();
        this.generatedBytes = 0;
    }
}
