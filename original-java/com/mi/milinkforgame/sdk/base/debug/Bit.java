package com.mi.milinkforgame.sdk.base.debug;

public final class Bit {
    public static final int add(int i, int i2) {
        return i | i2;
    }

    public static final boolean has(int i, int i2) {
        return i2 == (i & i2);
    }

    public static final int remove(int i, int i2) {
        return (i & i2) ^ i;
    }

    public static final int log2(int i) {
        return (int) (Math.log((double) i) / Math.log(2.0d));
    }
}
