package com.amap.api.maps.model;

public class MyTrafficStyle {
    private int a = -16735735;
    private int b = -35576;
    private int c = -1441006;
    private int d = -7208950;
    private float e = 0.8f;

    public int getSmoothColor() {
        return this.a;
    }

    public void setSmoothColor(int i) {
        this.a = i;
    }

    public int getSlowColor() {
        return this.b;
    }

    public void setSlowColor(int i) {
        this.b = i;
    }

    public int getCongestedColor() {
        return this.c;
    }

    public void setCongestedColor(int i) {
        this.c = i;
    }

    public int getSeriousCongestedColor() {
        return this.d;
    }

    public void setSeriousCongestedColor(int i) {
        this.d = i;
    }

    public float getRatio() {
        return this.e;
    }

    public void setRatio(float f) {
        this.e = f;
    }
}
