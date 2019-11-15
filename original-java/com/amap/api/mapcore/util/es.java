package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.view.View;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.VirtualEarthProjection;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;

/* compiled from: ScaleView */
public class es extends View {
    private String a = "";
    private int b = 0;
    private l c;
    private Paint d;
    private Paint e;
    private Rect f;
    private Point g;
    private float h = 0.0f;
    private final int[] i = {10000000, 5000000, 2000000, 1000000, 500000, 200000, 100000, 50000, 30000, BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT, 10000, 5000, 2000, 1000, 500, 200, 100, 50, 25, 10, 5};

    public void a() {
        this.d = null;
        this.e = null;
        this.f = null;
        this.a = null;
    }

    public es(Context context, l lVar) {
        super(context);
        this.c = lVar;
        this.d = new Paint();
        this.f = new Rect();
        this.d.setAntiAlias(true);
        this.d.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.d.setStrokeWidth(2.0f * g.a);
        this.d.setStyle(Style.STROKE);
        this.e = new Paint();
        this.e.setAntiAlias(true);
        this.e.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.e.setTextSize(20.0f * g.a);
        this.h = (float) dz.a(context, 1.0f);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (this.a != null && !this.a.equals("") && this.b != 0) {
            Point k = this.c.k();
            if (k != null) {
                this.e.getTextBounds(this.a, 0, this.a.length(), this.f);
                int i2 = k.x;
                int height = (k.y - this.f.height()) + 5;
                canvas.drawText(this.a, (float) (((this.b - this.f.width()) / 2) + i2), (float) height, this.e);
                int height2 = height + (this.f.height() - 5);
                Canvas canvas2 = canvas;
                canvas2.drawLine((float) i2, ((float) height2) - (this.h * 2.0f), (float) i2, g.a + ((float) height2), this.d);
                canvas.drawLine((float) i2, (float) height2, (float) (this.b + i2), (float) height2, this.d);
                Canvas canvas3 = canvas;
                canvas3.drawLine((float) (this.b + i2), ((float) height2) - (this.h * 2.0f), (float) (this.b + i2), g.a + ((float) height2), this.d);
            }
        }
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(int i2) {
        this.b = i2;
    }

    public void a(boolean z) {
        if (z) {
            setVisibility(0);
            b();
            return;
        }
        a("");
        a(0);
        setVisibility(8);
    }

    public void b() {
        if (this.c != null) {
            try {
                float a2 = this.c.a(1);
                this.g = this.c.o(1);
                if (this.g != null) {
                    DPoint PixelsToLatLong = VirtualEarthProjection.PixelsToLatLong((long) this.g.x, (long) this.g.y, 20);
                    double cos = (double) ((float) ((((Math.cos((PixelsToLatLong.y * 3.141592653589793d) / 180.0d) * 2.0d) * 3.141592653589793d) * 6378137.0d) / (256.0d * Math.pow(2.0d, (double) a2))));
                    int r = (int) (((double) this.i[(int) a2]) / (((double) this.c.r()) * cos));
                    String a3 = ee.a(this.i[(int) a2]);
                    a(r);
                    a(a3);
                    PixelsToLatLong.recycle();
                    invalidate();
                }
            } catch (Throwable th) {
                gf.b(th, "AMapDelegateImpGLSurfaceView", "changeScaleState");
                ThrowableExtension.printStackTrace(th);
            }
        }
    }
}
