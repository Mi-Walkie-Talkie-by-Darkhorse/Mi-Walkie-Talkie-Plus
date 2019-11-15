package com.xiaomi.xmpush.thrift;

public enum h {
    INT(1),
    LONG(2),
    STRING(3),
    BOOLEAN(4);
    
    private final int e;

    private h(int i) {
        this.e = i;
    }

    public static h a(int i) {
        switch (i) {
            case 1:
                return INT;
            case 2:
                return LONG;
            case 3:
                return STRING;
            case 4:
                return BOOLEAN;
            default:
                return null;
        }
    }
}
