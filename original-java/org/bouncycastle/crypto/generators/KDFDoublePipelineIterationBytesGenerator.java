package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;
import org.bouncycastle.crypto.params.KDFDoublePipelineIterationParameters;
import org.bouncycastle.crypto.params.KeyParameter;

public class KDFDoublePipelineIterationBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private byte[] a = new byte[this.h];
    private byte[] fixedInputData;
    private int generatedBytes;
    private final int h;
    private byte[] ios;
    private byte[] k = new byte[this.h];
    private int maxSizeExcl;
    private final Mac prf;
    private boolean useCounter;

    public KDFDoublePipelineIterationBytesGenerator(Mac mac) {
        this.prf = mac;
        this.h = mac.getMacSize();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0052, code lost:
        r5.ios[r5.ios.length - 3] = (byte) (r0 >>> 16);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x005e, code lost:
        r5.ios[r5.ios.length - 2] = (byte) (r0 >>> 8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x006a, code lost:
        r5.ios[r5.ios.length - 1] = (byte) r0;
        r5.prf.update(r5.ios, 0, r5.ios.length);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void generateNext() {
        /*
            r5 = this;
            r4 = 0
            int r0 = r5.generatedBytes
            if (r0 != 0) goto L_0x0039
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.fixedInputData
            byte[] r2 = r5.fixedInputData
            int r2 = r2.length
            r0.update(r1, r4, r2)
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.a
            r0.doFinal(r1, r4)
        L_0x0016:
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.a
            byte[] r2 = r5.a
            int r2 = r2.length
            r0.update(r1, r4, r2)
            boolean r0 = r5.useCounter
            if (r0 == 0) goto L_0x007e
            int r0 = r5.generatedBytes
            int r1 = r5.h
            int r0 = r0 / r1
            int r0 = r0 + 1
            byte[] r1 = r5.ios
            int r1 = r1.length
            switch(r1) {
                case 1: goto L_0x006a;
                case 2: goto L_0x005e;
                case 3: goto L_0x0052;
                case 4: goto L_0x004b;
                default: goto L_0x0031;
            }
        L_0x0031:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Unsupported size of counter i"
            r0.<init>(r1)
            throw r0
        L_0x0039:
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.a
            byte[] r2 = r5.a
            int r2 = r2.length
            r0.update(r1, r4, r2)
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.a
            r0.doFinal(r1, r4)
            goto L_0x0016
        L_0x004b:
            byte[] r1 = r5.ios
            int r2 = r0 >>> 24
            byte r2 = (byte) r2
            r1[r4] = r2
        L_0x0052:
            byte[] r1 = r5.ios
            byte[] r2 = r5.ios
            int r2 = r2.length
            int r2 = r2 + -3
            int r3 = r0 >>> 16
            byte r3 = (byte) r3
            r1[r2] = r3
        L_0x005e:
            byte[] r1 = r5.ios
            byte[] r2 = r5.ios
            int r2 = r2.length
            int r2 = r2 + -2
            int r3 = r0 >>> 8
            byte r3 = (byte) r3
            r1[r2] = r3
        L_0x006a:
            byte[] r1 = r5.ios
            byte[] r2 = r5.ios
            int r2 = r2.length
            int r2 = r2 + -1
            byte r0 = (byte) r0
            r1[r2] = r0
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.ios
            byte[] r2 = r5.ios
            int r2 = r2.length
            r0.update(r1, r4, r2)
        L_0x007e:
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.fixedInputData
            byte[] r2 = r5.fixedInputData
            int r2 = r2.length
            r0.update(r1, r4, r2)
            org.bouncycastle.crypto.Mac r0 = r5.prf
            byte[] r1 = r5.k
            r0.doFinal(r1, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.generators.KDFDoublePipelineIterationBytesGenerator.generateNext():void");
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
        int i = Integer.MAX_VALUE;
        if (!(derivationParameters instanceof KDFDoublePipelineIterationParameters)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        KDFDoublePipelineIterationParameters kDFDoublePipelineIterationParameters = (KDFDoublePipelineIterationParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFDoublePipelineIterationParameters.getKI()));
        this.fixedInputData = kDFDoublePipelineIterationParameters.getFixedInputData();
        int r = kDFDoublePipelineIterationParameters.getR();
        this.ios = new byte[(r / 8)];
        if (kDFDoublePipelineIterationParameters.useCounter()) {
            BigInteger multiply = TWO.pow(r).multiply(BigInteger.valueOf((long) this.h));
            if (multiply.compareTo(INTEGER_MAX) != 1) {
                i = multiply.intValue();
            }
            this.maxSizeExcl = i;
        } else {
            this.maxSizeExcl = Integer.MAX_VALUE;
        }
        this.useCounter = kDFDoublePipelineIterationParameters.useCounter();
        this.generatedBytes = 0;
    }
}
