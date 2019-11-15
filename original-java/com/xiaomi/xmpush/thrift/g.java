package com.xiaomi.xmpush.thrift;

public enum g {
    MISC_CONFIG(1),
    PLUGIN_CONFIG(2);
    
    private final int c;

    private g(int i) {
        this.c = i;
    }

    public static g a(int i) {
        switch (i) {
            case 1:
                return MISC_CONFIG;
            case 2:
                return PLUGIN_CONFIG;
            default:
                return null;
        }
    }

    public int a() {
        return this.c;
    }
}
