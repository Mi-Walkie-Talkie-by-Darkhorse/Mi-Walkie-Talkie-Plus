package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.amap.api.maps.model.LatLng;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: LocationView */
public class eq extends LinearLayout {
    Bitmap a;
    Bitmap b;
    Bitmap c;
    Bitmap d;
    Bitmap e;
    Bitmap f;
    ImageView g;
    l h;
    boolean i = false;

    public void a() {
        try {
            removeAllViews();
            if (this.a != null) {
                this.a.recycle();
            }
            if (this.b != null) {
                this.b.recycle();
            }
            if (this.b != null) {
                this.c.recycle();
            }
            this.a = null;
            this.b = null;
            this.c = null;
            if (this.d != null) {
                this.d.recycle();
                this.d = null;
            }
            if (this.e != null) {
                this.e.recycle();
                this.e = null;
            }
            if (this.f != null) {
                this.f.recycle();
                this.f = null;
            }
        } catch (Throwable th) {
            gf.b(th, "LocationView", "destroy");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public eq(Context context, l lVar) {
        super(context);
        this.h = lVar;
        try {
            this.d = ee.a(context, "location_selected.png");
            this.a = ee.a(this.d, g.a);
            this.e = ee.a(context, "location_pressed.png");
            this.b = ee.a(this.e, g.a);
            this.f = ee.a(context, "location_unselected.png");
            this.c = ee.a(this.f, g.a);
            this.g = new ImageView(context);
            this.g.setImageBitmap(this.a);
            this.g.setClickable(true);
            this.g.setPadding(0, 20, 20, 0);
            this.g.setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (eq.this.i) {
                        if (motionEvent.getAction() == 0) {
                            eq.this.g.setImageBitmap(eq.this.b);
                        } else if (motionEvent.getAction() == 1) {
                            try {
                                eq.this.g.setImageBitmap(eq.this.a);
                                eq.this.h.setMyLocationEnabled(true);
                                Location myLocation = eq.this.h.getMyLocation();
                                if (myLocation != null) {
                                    LatLng latLng = new LatLng(myLocation.getLatitude(), myLocation.getLongitude());
                                    eq.this.h.a(myLocation);
                                    eq.this.h.a(aa.a(latLng, eq.this.h.g()));
                                }
                            } catch (Throwable th) {
                                gf.b(th, "LocationView", "onTouch");
                                ThrowableExtension.printStackTrace(th);
                            }
                        }
                    }
                    return false;
                }
            });
            addView(this.g);
        } catch (Throwable th) {
            gf.b(th, "LocationView", "create");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void a(boolean z) {
        this.i = z;
        if (z) {
            try {
                this.g.setImageBitmap(this.a);
            } catch (Throwable th) {
                gf.b(th, "LocationView", "showSelect");
                ThrowableExtension.printStackTrace(th);
                return;
            }
        } else {
            this.g.setImageBitmap(this.c);
        }
        this.g.invalidate();
    }
}
