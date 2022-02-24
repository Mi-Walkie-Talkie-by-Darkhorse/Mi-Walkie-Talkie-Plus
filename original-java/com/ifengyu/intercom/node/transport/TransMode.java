package com.ifengyu.intercom.node.transport;

/* loaded from: classes2.dex */
public enum TransMode {
    NORMAL(0),
    UPDATE(1);

    TransMode(int i) {
    }

    public static boolean a(int i) {
        return i >= 0 && i < values().length;
    }

    public static TransMode b(int i) {
        if (i >= 0 && i < values().length) {
            return values()[i];
        }
        throw new IndexOutOfBoundsException("Invalid ordinal");
    }
}
