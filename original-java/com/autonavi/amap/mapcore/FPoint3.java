package com.autonavi.amap.mapcore;

public class FPoint3 extends FPoint {
    public int colorIndex = -1;

    public FPoint3() {
    }

    public FPoint3(float f, float f2, int i) {
        super(f, f2);
        this.colorIndex = i;
    }

    public void setColorIndex(int i) {
        this.colorIndex = i;
    }
}
