package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.view.View;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: WaterMarkerView */
public class et extends View {
    private Bitmap a;
    private Bitmap b;
    private Bitmap c;
    private Bitmap d;
    private Paint e = new Paint();
    private boolean f = false;
    private int g = 0;
    private int h = 0;
    private l i;
    private int j = 0;
    private int k = 10;
    private int l = 0;
    private int m = 0;
    private int n = 10;
    private int o = 8;
    private int p = 0;
    private boolean q = false;
    private float r = 0.0f;
    private float s = 0.0f;
    private boolean t = true;

    public void a() {
        try {
            if (this.a != null) {
                this.a.recycle();
            }
            if (this.b != null) {
                this.b.recycle();
            }
            this.a = null;
            this.b = null;
            if (this.c != null) {
                this.c.recycle();
                this.c = null;
            }
            if (this.d != null) {
                this.d.recycle();
                this.d = null;
            }
            this.e = null;
        } catch (Throwable th) {
            gf.b(th, "WaterMarkerView", "destory");
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x00c8 A[SYNTHETIC, Splitter:B:33:0x00c8] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00cd A[SYNTHETIC, Splitter:B:36:0x00cd] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public et(android.content.Context r7, com.amap.api.mapcore.util.l r8) {
        /*
            r6 = this;
            r1 = 0
            r5 = 10
            r4 = 1
            r3 = 0
            r2 = 0
            r6.<init>(r7)
            android.graphics.Paint r0 = new android.graphics.Paint
            r0.<init>()
            r6.e = r0
            r6.f = r2
            r6.g = r2
            r6.h = r2
            r6.j = r2
            r6.k = r5
            r6.l = r2
            r6.m = r2
            r6.n = r5
            r0 = 8
            r6.o = r0
            r6.p = r2
            r6.q = r2
            r6.r = r3
            r6.s = r3
            r6.t = r4
            r6.i = r8
            android.content.res.AssetManager r0 = com.amap.api.mapcore.util.dz.a(r7)     // Catch:{ Throwable -> 0x00a3, all -> 0x00c4 }
            java.lang.String r2 = "ap.data"
            java.io.InputStream r2 = r0.open(r2)     // Catch:{ Throwable -> 0x00a3, all -> 0x00c4 }
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r2)     // Catch:{ Throwable -> 0x00dd }
            r6.c = r0     // Catch:{ Throwable -> 0x00dd }
            android.graphics.Bitmap r0 = r6.c     // Catch:{ Throwable -> 0x00dd }
            float r3 = com.amap.api.mapcore.util.g.a     // Catch:{ Throwable -> 0x00dd }
            android.graphics.Bitmap r0 = com.amap.api.mapcore.util.ee.a(r0, r3)     // Catch:{ Throwable -> 0x00dd }
            r6.a = r0     // Catch:{ Throwable -> 0x00dd }
            r2.close()     // Catch:{ Throwable -> 0x00dd }
            android.content.res.AssetManager r0 = com.amap.api.mapcore.util.dz.a(r7)     // Catch:{ Throwable -> 0x00dd }
            java.lang.String r3 = "ap1.data"
            java.io.InputStream r1 = r0.open(r3)     // Catch:{ Throwable -> 0x00dd }
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r1)     // Catch:{ Throwable -> 0x00dd }
            r6.d = r0     // Catch:{ Throwable -> 0x00dd }
            android.graphics.Bitmap r0 = r6.d     // Catch:{ Throwable -> 0x00dd }
            float r3 = com.amap.api.mapcore.util.g.a     // Catch:{ Throwable -> 0x00dd }
            android.graphics.Bitmap r0 = com.amap.api.mapcore.util.ee.a(r0, r3)     // Catch:{ Throwable -> 0x00dd }
            r6.b = r0     // Catch:{ Throwable -> 0x00dd }
            r1.close()     // Catch:{ Throwable -> 0x00dd }
            android.graphics.Bitmap r0 = r6.b     // Catch:{ Throwable -> 0x00dd }
            int r0 = r0.getWidth()     // Catch:{ Throwable -> 0x00dd }
            r6.h = r0     // Catch:{ Throwable -> 0x00dd }
            android.graphics.Bitmap r0 = r6.b     // Catch:{ Throwable -> 0x00dd }
            int r0 = r0.getHeight()     // Catch:{ Throwable -> 0x00dd }
            r6.g = r0     // Catch:{ Throwable -> 0x00dd }
            android.graphics.Paint r0 = r6.e     // Catch:{ Throwable -> 0x00dd }
            r3 = 1
            r0.setAntiAlias(r3)     // Catch:{ Throwable -> 0x00dd }
            android.graphics.Paint r0 = r6.e     // Catch:{ Throwable -> 0x00dd }
            r3 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            r0.setColor(r3)     // Catch:{ Throwable -> 0x00dd }
            android.graphics.Paint r0 = r6.e     // Catch:{ Throwable -> 0x00dd }
            android.graphics.Paint$Style r3 = android.graphics.Paint.Style.STROKE     // Catch:{ Throwable -> 0x00dd }
            r0.setStyle(r3)     // Catch:{ Throwable -> 0x00dd }
            if (r2 == 0) goto L_0x0093
            r2.close()     // Catch:{ Throwable -> 0x0099 }
        L_0x0093:
            if (r1 == 0) goto L_0x0098
            r1.close()     // Catch:{ Throwable -> 0x009e }
        L_0x0098:
            return
        L_0x0099:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0093
        L_0x009e:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0098
        L_0x00a3:
            r0 = move-exception
            r2 = r1
        L_0x00a5:
            java.lang.String r3 = "WaterMarkerView"
            java.lang.String r4 = "create"
            com.amap.api.mapcore.util.gf.b(r0, r3, r4)     // Catch:{ all -> 0x00db }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00db }
            if (r2 == 0) goto L_0x00b4
            r2.close()     // Catch:{ Throwable -> 0x00bf }
        L_0x00b4:
            if (r1 == 0) goto L_0x0098
            r1.close()     // Catch:{ Throwable -> 0x00ba }
            goto L_0x0098
        L_0x00ba:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0098
        L_0x00bf:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x00b4
        L_0x00c4:
            r0 = move-exception
            r2 = r1
        L_0x00c6:
            if (r2 == 0) goto L_0x00cb
            r2.close()     // Catch:{ Throwable -> 0x00d1 }
        L_0x00cb:
            if (r1 == 0) goto L_0x00d0
            r1.close()     // Catch:{ Throwable -> 0x00d6 }
        L_0x00d0:
            throw r0
        L_0x00d1:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x00cb
        L_0x00d6:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00d0
        L_0x00db:
            r0 = move-exception
            goto L_0x00c6
        L_0x00dd:
            r0 = move-exception
            goto L_0x00a5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.et.<init>(android.content.Context, com.amap.api.mapcore.util.l):void");
    }

    public Bitmap b() {
        if (this.f) {
            return this.b;
        }
        return this.a;
    }

    public Point c() {
        return new Point(this.k, this.l - 2);
    }

    public void a(int i2) {
        this.m = 0;
        this.j = i2;
        d();
    }

    public void b(int i2) {
        this.m = 1;
        this.o = i2;
        d();
    }

    public void c(int i2) {
        this.m = 1;
        this.n = i2;
        d();
    }

    public float d(int i2) {
        switch (i2) {
            case 0:
                return this.r;
            case 1:
                return 1.0f - this.r;
            case 2:
                return 1.0f - this.s;
            default:
                return 0.0f;
        }
    }

    public void a(int i2, float f2) {
        this.m = 2;
        this.p = i2;
        float max = Math.max(0.0f, Math.min(f2, 1.0f));
        switch (i2) {
            case 0:
                this.r = max;
                this.t = true;
                break;
            case 1:
                this.r = 1.0f - max;
                this.t = false;
                break;
            case 2:
                this.s = 1.0f - max;
                break;
        }
        d();
    }

    public void d() {
        if (getWidth() != 0 && getHeight() != 0) {
            e();
            postInvalidate();
        }
    }

    public void onDraw(Canvas canvas) {
        try {
            if (getWidth() != 0 && getHeight() != 0 && this.b != null) {
                if (!this.q) {
                    e();
                    this.q = true;
                }
                canvas.drawBitmap(b(), (float) this.k, (float) this.l, this.e);
            }
        } catch (Throwable th) {
            gf.b(th, "WaterMarkerView", "onDraw");
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void e() {
        switch (this.m) {
            case 0:
                g();
                break;
            case 2:
                f();
                break;
        }
        this.k = this.n;
        this.l = (getHeight() - this.o) - this.g;
        if (this.k < 0) {
            this.k = 0;
        }
        if (this.l < 0) {
            this.l = 0;
        }
    }

    private void f() {
        if (this.t) {
            this.n = (int) (((float) getWidth()) * this.r);
        } else {
            this.n = (int) ((((float) getWidth()) * this.r) - ((float) this.h));
        }
        this.o = (int) (((float) getHeight()) * this.s);
    }

    private void g() {
        if (this.j == 1) {
            this.n = (getWidth() - this.h) / 2;
        } else if (this.j == 2) {
            this.n = (getWidth() - this.h) - 10;
        } else {
            this.n = 10;
        }
        this.o = 8;
    }
}
