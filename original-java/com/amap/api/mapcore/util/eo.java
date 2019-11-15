package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import com.amap.api.maps.model.CameraPosition;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: CompassView */
public class eo extends LinearLayout {
    Bitmap a;
    Bitmap b;
    Bitmap c;
    ImageView d;
    l e;
    Matrix f = new Matrix();

    public void a() {
        try {
            removeAllViews();
            if (this.a != null) {
                this.a.recycle();
            }
            if (this.b != null) {
                this.b.recycle();
            }
            if (this.c != null) {
                this.c.recycle();
            }
            if (this.f != null) {
                this.f.reset();
                this.f = null;
            }
            this.c = null;
            this.a = null;
            this.b = null;
        } catch (Throwable th) {
            gf.b(th, "CompassView", "destroy");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public eo(Context context, l lVar) {
        super(context);
        this.e = lVar;
        try {
            this.c = ee.a(context, "maps_dav_compass_needle_large.png");
            this.b = ee.a(this.c, g.a * 0.8f);
            this.c = ee.a(this.c, g.a * 0.7f);
            if (this.b != null || this.c != null) {
                this.a = Bitmap.createBitmap(this.b.getWidth(), this.b.getHeight(), Config.ARGB_8888);
                Canvas canvas = new Canvas(this.a);
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                paint.setFilterBitmap(true);
                canvas.drawBitmap(this.c, ((float) (this.b.getWidth() - this.c.getWidth())) / 2.0f, ((float) (this.b.getHeight() - this.c.getHeight())) / 2.0f, paint);
                this.d = new ImageView(context);
                this.d.setScaleType(ScaleType.MATRIX);
                this.d.setImageBitmap(this.a);
                this.d.setClickable(true);
                b();
                this.d.setOnTouchListener(new OnTouchListener() {
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        try {
                            if (eo.this.e.isMaploaded()) {
                                if (motionEvent.getAction() == 0) {
                                    eo.this.d.setImageBitmap(eo.this.b);
                                } else if (motionEvent.getAction() == 1) {
                                    eo.this.d.setImageBitmap(eo.this.a);
                                    CameraPosition cameraPosition = eo.this.e.getCameraPosition();
                                    eo.this.e.b(aa.a(new CameraPosition(cameraPosition.target, cameraPosition.zoom, 0.0f, 0.0f)));
                                }
                            }
                        } catch (Throwable th) {
                            gf.b(th, "CompassView", "onTouch");
                            ThrowableExtension.printStackTrace(th);
                        }
                        return false;
                    }
                });
                addView(this.d);
            }
        } catch (Throwable th) {
            gf.b(th, "CompassView", "create");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void b() {
        try {
            if (this.e != null && this.d != null) {
                float p = this.e.p(1);
                float n = this.e.n(1);
                if (this.f == null) {
                    this.f = new Matrix();
                }
                this.f.reset();
                this.f.postRotate(-n, ((float) this.d.getDrawable().getBounds().width()) / 2.0f, ((float) this.d.getDrawable().getBounds().height()) / 2.0f);
                this.f.postScale(1.0f, (float) Math.cos((((double) p) * 3.141592653589793d) / 180.0d), ((float) this.d.getDrawable().getBounds().width()) / 2.0f, ((float) this.d.getDrawable().getBounds().height()) / 2.0f);
                this.d.setImageMatrix(this.f);
            }
        } catch (Throwable th) {
            gf.b(th, "CompassView", "invalidateAngle");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void a(boolean z) {
        if (z) {
            setVisibility(0);
            b();
            return;
        }
        setVisibility(8);
    }
}
