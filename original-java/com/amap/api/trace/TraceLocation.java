package com.amap.api.trace;

public class TraceLocation {
    private double a;
    private double b;
    private float c;
    private float d;
    private long e;

    public TraceLocation(double d2, double d3, float f, float f2, long j) {
        this.a = a(d2);
        this.b = a(d3);
        this.c = (float) ((int) ((3600.0f * f) / 1000.0f));
        this.d = (float) ((int) f2);
        this.e = j;
    }

    public TraceLocation() {
    }

    public double getLatitude() {
        return this.a;
    }

    public void setLatitude(double d2) {
        this.a = a(d2);
    }

    public double getLongitude() {
        return this.b;
    }

    public void setLongitude(double d2) {
        this.b = a(d2);
    }

    public float getSpeed() {
        return this.c;
    }

    public void setSpeed(float f) {
        this.c = (float) ((int) ((3600.0f * f) / 1000.0f));
    }

    public float getBearing() {
        return this.d;
    }

    public void setBearing(float f) {
        this.d = (float) ((int) f);
    }

    public long getTime() {
        return this.e;
    }

    public void setTime(long j) {
        this.e = j;
    }

    private static double a(double d2) {
        return ((double) Math.round(d2 * 1000000.0d)) / 1000000.0d;
    }

    public TraceLocation copy() {
        TraceLocation traceLocation = new TraceLocation();
        traceLocation.d = this.d;
        traceLocation.a = this.a;
        traceLocation.b = this.b;
        traceLocation.c = this.c;
        traceLocation.e = this.e;
        return traceLocation;
    }

    public String toString() {
        return this.a + ",longtitude " + this.b + ",speed " + this.c + ",bearing " + this.d + ",time " + this.e;
    }
}
