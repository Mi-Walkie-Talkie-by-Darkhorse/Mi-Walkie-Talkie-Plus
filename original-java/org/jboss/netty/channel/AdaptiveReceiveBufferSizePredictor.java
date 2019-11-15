package org.jboss.netty.channel;

import java.util.ArrayList;

public class AdaptiveReceiveBufferSizePredictor implements ReceiveBufferSizePredictor {
    static final int DEFAULT_INITIAL = 1024;
    static final int DEFAULT_MAXIMUM = 65536;
    static final int DEFAULT_MINIMUM = 64;
    private static final int INDEX_DECREMENT = 1;
    private static final int INDEX_INCREMENT = 4;
    private static final int[] SIZE_TABLE;
    private boolean decreaseNow;
    private int index;
    private final int maxIndex;
    private final int minIndex;
    private int nextReceiveBufferSize;

    static {
        int i = 0;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 1; i2 <= 8; i2++) {
            arrayList.add(Integer.valueOf(i2));
        }
        for (int i3 = 4; i3 < 32; i3++) {
            long j = 1 << i3;
            long j2 = j >>> 4;
            long j3 = j - (j2 << 3);
            for (int i4 = 0; i4 < 8; i4++) {
                j3 += j2;
                if (j3 > 2147483647L) {
                    arrayList.add(Integer.valueOf(Integer.MAX_VALUE));
                } else {
                    arrayList.add(Integer.valueOf((int) j3));
                }
            }
        }
        SIZE_TABLE = new int[arrayList.size()];
        while (true) {
            int i5 = i;
            if (i5 < SIZE_TABLE.length) {
                SIZE_TABLE[i5] = ((Integer) arrayList.get(i5)).intValue();
                i = i5 + 1;
            } else {
                return;
            }
        }
    }

    private static int getSizeTableIndex(int i) {
        if (i <= 16) {
            return i - 1;
        }
        int i2 = 0;
        int i3 = i;
        do {
            i3 >>>= 1;
            i2++;
        } while (i3 != 0);
        int i4 = i2 << 3;
        int i5 = i4 - 25;
        for (int i6 = i4 - 18; i6 >= i5; i6--) {
            if (i >= SIZE_TABLE[i6]) {
                return i6;
            }
        }
        throw new Error("shouldn't reach here; please file a bug report.");
    }

    public AdaptiveReceiveBufferSizePredictor() {
        this(64, 1024, 65536);
    }

    public AdaptiveReceiveBufferSizePredictor(int i, int i2, int i3) {
        if (i <= 0) {
            throw new IllegalArgumentException("minimum: " + i);
        } else if (i2 < i) {
            throw new IllegalArgumentException("initial: " + i2);
        } else if (i3 < i2) {
            throw new IllegalArgumentException("maximum: " + i3);
        } else {
            int sizeTableIndex = getSizeTableIndex(i);
            if (SIZE_TABLE[sizeTableIndex] < i) {
                this.minIndex = sizeTableIndex + 1;
            } else {
                this.minIndex = sizeTableIndex;
            }
            int sizeTableIndex2 = getSizeTableIndex(i3);
            if (SIZE_TABLE[sizeTableIndex2] > i3) {
                this.maxIndex = sizeTableIndex2 - 1;
            } else {
                this.maxIndex = sizeTableIndex2;
            }
            this.index = getSizeTableIndex(i2);
            this.nextReceiveBufferSize = SIZE_TABLE[this.index];
        }
    }

    public int nextReceiveBufferSize() {
        return this.nextReceiveBufferSize;
    }

    public void previousReceiveBufferSize(int i) {
        if (i <= SIZE_TABLE[Math.max(0, (this.index - 1) - 1)]) {
            if (this.decreaseNow) {
                this.index = Math.max(this.index - 1, this.minIndex);
                this.nextReceiveBufferSize = SIZE_TABLE[this.index];
                this.decreaseNow = false;
                return;
            }
            this.decreaseNow = true;
        } else if (i >= this.nextReceiveBufferSize) {
            this.index = Math.min(this.index + 4, this.maxIndex);
            this.nextReceiveBufferSize = SIZE_TABLE[this.index];
            this.decreaseNow = false;
        }
    }
}
