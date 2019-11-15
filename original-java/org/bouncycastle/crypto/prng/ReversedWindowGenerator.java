package org.bouncycastle.crypto.prng;

public class ReversedWindowGenerator implements RandomGenerator {
    private final RandomGenerator generator;
    private byte[] window;
    private int windowCount;

    public ReversedWindowGenerator(RandomGenerator randomGenerator, int i) {
        if (randomGenerator == null) {
            throw new IllegalArgumentException("generator cannot be null");
        } else if (i < 2) {
            throw new IllegalArgumentException("windowSize must be at least 2");
        } else {
            this.generator = randomGenerator;
            this.window = new byte[i];
        }
    }

    private void doNextBytes(byte[] bArr, int i, int i2) {
        int i3 = 0;
        synchronized (this) {
            while (i3 < i2) {
                if (this.windowCount < 1) {
                    this.generator.nextBytes(this.window, 0, this.window.length);
                    this.windowCount = this.window.length;
                }
                int i4 = i3 + 1;
                int i5 = i3 + i;
                byte[] bArr2 = this.window;
                int i6 = this.windowCount - 1;
                this.windowCount = i6;
                bArr[i5] = bArr2[i6];
                i3 = i4;
            }
        }
    }

    public void addSeedMaterial(long j) {
        synchronized (this) {
            this.windowCount = 0;
            this.generator.addSeedMaterial(j);
        }
    }

    public void addSeedMaterial(byte[] bArr) {
        synchronized (this) {
            this.windowCount = 0;
            this.generator.addSeedMaterial(bArr);
        }
    }

    public void nextBytes(byte[] bArr) {
        doNextBytes(bArr, 0, bArr.length);
    }

    public void nextBytes(byte[] bArr, int i, int i2) {
        doNextBytes(bArr, i, i2);
    }
}
