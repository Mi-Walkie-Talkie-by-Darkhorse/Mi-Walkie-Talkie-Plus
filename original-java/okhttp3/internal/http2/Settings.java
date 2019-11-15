package okhttp3.internal.http2;

import java.util.Arrays;

public final class Settings {
    static final int COUNT = 10;
    static final int DEFAULT_INITIAL_WINDOW_SIZE = 65535;
    static final int ENABLE_PUSH = 2;
    static final int HEADER_TABLE_SIZE = 1;
    static final int INITIAL_WINDOW_SIZE = 7;
    static final int MAX_CONCURRENT_STREAMS = 4;
    static final int MAX_FRAME_SIZE = 5;
    static final int MAX_HEADER_LIST_SIZE = 6;
    private int set;
    private final int[] values = new int[10];

    /* access modifiers changed from: 0000 */
    public void clear() {
        this.set = 0;
        Arrays.fill(this.values, 0);
    }

    /* access modifiers changed from: 0000 */
    public Settings set(int i, int i2) {
        if (i < this.values.length) {
            this.set = (1 << i) | this.set;
            this.values[i] = i2;
        }
        return this;
    }

    /* access modifiers changed from: 0000 */
    public boolean isSet(int i) {
        if (((1 << i) & this.set) != 0) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public int get(int i) {
        return this.values[i];
    }

    /* access modifiers changed from: 0000 */
    public int size() {
        return Integer.bitCount(this.set);
    }

    /* access modifiers changed from: 0000 */
    public int getHeaderTableSize() {
        if ((2 & this.set) != 0) {
            return this.values[1];
        }
        return -1;
    }

    /* access modifiers changed from: 0000 */
    public boolean getEnablePush(boolean z) {
        int i = (4 & this.set) != 0 ? this.values[2] : z ? 1 : 0;
        if (i == 1) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public int getMaxConcurrentStreams(int i) {
        return (16 & this.set) != 0 ? this.values[4] : i;
    }

    /* access modifiers changed from: 0000 */
    public int getMaxFrameSize(int i) {
        return (32 & this.set) != 0 ? this.values[5] : i;
    }

    /* access modifiers changed from: 0000 */
    public int getMaxHeaderListSize(int i) {
        return (64 & this.set) != 0 ? this.values[6] : i;
    }

    /* access modifiers changed from: 0000 */
    public int getInitialWindowSize() {
        if ((128 & this.set) != 0) {
            return this.values[7];
        }
        return 65535;
    }

    /* access modifiers changed from: 0000 */
    public void merge(Settings settings) {
        for (int i = 0; i < 10; i++) {
            if (settings.isSet(i)) {
                set(i, settings.get(i));
            }
        }
    }
}
