package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;

/* compiled from: GLOverlayTextureManager */
public class j {
    private int a = -1;
    private int b = -1;
    private int c = -1;
    private int d = 0;
    private Bitmap e = null;
    private Bitmap f = null;
    private Bitmap g = null;

    public void a(Context context) {
        if (this.e == null || this.e.isRecycled()) {
            this.e = ee.a(context, "amap_sdk_lineTexture.png");
        }
        if (this.f == null || this.f.isRecycled()) {
            this.f = ee.a(context, "amap_sdk_lineDashTexture_square.png");
        }
        if (this.g == null || this.g.isRecycled()) {
            this.g = ee.a(context, "amap_sdk_lineDashTexture_circle.png");
        }
        this.a = ee.a(this.e);
        this.b = ee.a(this.f, true);
        this.c = ee.a(this.g, true);
        this.d = ee.a(512, 1024);
    }

    public int a() {
        return this.a;
    }

    public int a(int i) {
        if (i == 0) {
            return this.b;
        }
        return this.c;
    }

    public int b() {
        return this.d;
    }

    public void c() {
        GLES20.glDeleteTextures(3, new int[]{this.a, this.b, this.c, this.d}, 0);
    }

    public void d() {
        if (this.f != null) {
            this.f.recycle();
            this.f = null;
        }
        if (this.g != null) {
            this.g.recycle();
            this.g = null;
        }
        if (this.e != null) {
            this.e.recycle();
            this.e = null;
        }
    }
}
