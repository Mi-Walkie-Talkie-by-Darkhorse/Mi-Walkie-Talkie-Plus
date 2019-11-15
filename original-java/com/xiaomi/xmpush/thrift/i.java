package com.xiaomi.xmpush.thrift;

public enum i {
    Baidu(0),
    Tencent(1),
    AutoNavi(2),
    Google(3),
    GPS(4);
    
    private final int f;

    private i(int i) {
        this.f = i;
    }

    public static i a(int i) {
        switch (i) {
            case 0:
                return Baidu;
            case 1:
                return Tencent;
            case 2:
                return AutoNavi;
            case 3:
                return Google;
            case 4:
                return GPS;
            default:
                return null;
        }
    }

    public int a() {
        return this.f;
    }
}
