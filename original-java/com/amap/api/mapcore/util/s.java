package com.amap.api.mapcore.util;

import com.amap.api.maps.model.BitmapDescriptor;

/* compiled from: OverlayTextureItem */
public class s {
    private String a;
    private BitmapDescriptor b;
    private int c;
    private float d = 0.0f;
    private float e = 0.0f;
    private float f = 1.0f;
    private float g = 1.0f;
    private int h = 1;

    public float a() {
        return this.e;
    }

    public void a(float f2) {
        this.e = f2;
    }

    public float b() {
        return this.d;
    }

    public void b(float f2) {
        this.d = f2;
    }

    public float c() {
        return this.f;
    }

    public void c(float f2) {
        this.f = f2;
    }

    public float d() {
        return this.g;
    }

    public void d(float f2) {
        this.g = f2;
    }

    public s(BitmapDescriptor bitmapDescriptor, int i) {
        this.b = bitmapDescriptor;
        this.c = i;
        this.a = dx.a();
    }

    public BitmapDescriptor e() {
        return this.b;
    }

    public int f() {
        return this.c;
    }

    public void g() {
        this.h++;
    }

    public void h() {
        this.h--;
    }

    public int i() {
        return this.h;
    }

    public String j() {
        return this.a;
    }

    public void a(int i) {
        this.c = i;
    }
}
