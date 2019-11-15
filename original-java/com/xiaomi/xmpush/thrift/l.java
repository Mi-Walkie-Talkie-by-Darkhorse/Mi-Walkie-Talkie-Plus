package com.xiaomi.xmpush.thrift;

public enum l {
    Circle(0),
    Polygon(1);
    
    private final int c;

    private l(int i) {
        this.c = i;
    }

    public static l a(int i) {
        switch (i) {
            case 0:
                return Circle;
            case 1:
                return Polygon;
            default:
                return null;
        }
    }

    public int a() {
        return this.c;
    }
}
