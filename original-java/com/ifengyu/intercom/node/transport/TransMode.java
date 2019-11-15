package com.ifengyu.intercom.node.transport;

public enum TransMode {
    NORMAL(0),
    UPDATE(1);
    
    private int c;

    private TransMode(int i) {
        this.c = i;
    }

    public static TransMode a(int i) {
        if (i >= 0 && i < values().length) {
            return values()[i];
        }
        throw new IndexOutOfBoundsException("Invalid ordinal");
    }

    public static boolean b(int i) {
        if (i < 0 || i >= values().length) {
            return false;
        }
        return true;
    }
}
