package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.amap.api.mapcore.util.er.a;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: ZoomControllerView */
class eu extends LinearLayout {
    /* access modifiers changed from: private */
    public Bitmap a;
    private Bitmap b;
    /* access modifiers changed from: private */
    public Bitmap c;
    private Bitmap d;
    /* access modifiers changed from: private */
    public Bitmap e;
    /* access modifiers changed from: private */
    public Bitmap f;
    private Bitmap g;
    private Bitmap h;
    private Bitmap i;
    private Bitmap j;
    private Bitmap k;
    private Bitmap l;
    /* access modifiers changed from: private */
    public ImageView m;
    /* access modifiers changed from: private */
    public ImageView n;
    /* access modifiers changed from: private */
    public l o;

    public void a() {
        try {
            removeAllViews();
            this.a.recycle();
            this.b.recycle();
            this.c.recycle();
            this.d.recycle();
            this.e.recycle();
            this.f.recycle();
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
            this.f = null;
            if (this.g != null) {
                this.g.recycle();
                this.g = null;
            }
            if (this.h != null) {
                this.h.recycle();
                this.h = null;
            }
            if (this.i != null) {
                this.i.recycle();
                this.i = null;
            }
            if (this.j != null) {
                this.j.recycle();
                this.g = null;
            }
            if (this.k != null) {
                this.k.recycle();
                this.k = null;
            }
            if (this.l != null) {
                this.l.recycle();
                this.l = null;
            }
            this.m = null;
            this.n = null;
        } catch (Throwable th) {
            gf.b(th, "ZoomControllerView", "destory");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public eu(Context context, l lVar) {
        super(context);
        this.o = lVar;
        try {
            this.g = ee.a(context, "zoomin_selected.png");
            this.a = ee.a(this.g, g.a);
            this.h = ee.a(context, "zoomin_unselected.png");
            this.b = ee.a(this.h, g.a);
            this.i = ee.a(context, "zoomout_selected.png");
            this.c = ee.a(this.i, g.a);
            this.j = ee.a(context, "zoomout_unselected.png");
            this.d = ee.a(this.j, g.a);
            this.k = ee.a(context, "zoomin_pressed.png");
            this.e = ee.a(this.k, g.a);
            this.l = ee.a(context, "zoomout_pressed.png");
            this.f = ee.a(this.l, g.a);
            this.m = new ImageView(context);
            this.m.setImageBitmap(this.a);
            this.m.setClickable(true);
            this.n = new ImageView(context);
            this.n.setImageBitmap(this.c);
            this.n.setClickable(true);
            this.m.setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    try {
                        if (eu.this.o.g() < eu.this.o.getMaxZoomLevel() && eu.this.o.isMaploaded()) {
                            if (motionEvent.getAction() == 0) {
                                eu.this.m.setImageBitmap(eu.this.e);
                            } else if (motionEvent.getAction() == 1) {
                                eu.this.m.setImageBitmap(eu.this.a);
                                eu.this.o.b(aa.a());
                            }
                        }
                    } catch (RemoteException e) {
                        gf.b((Throwable) e, "ZoomControllerView", "zoomin ontouch");
                        ThrowableExtension.printStackTrace(e);
                    } catch (Throwable th) {
                        ThrowableExtension.printStackTrace(th);
                    }
                    return false;
                }
            });
            this.n.setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    try {
                        if (eu.this.o.g() > eu.this.o.getMinZoomLevel() && eu.this.o.isMaploaded()) {
                            if (motionEvent.getAction() == 0) {
                                eu.this.n.setImageBitmap(eu.this.f);
                            } else if (motionEvent.getAction() == 1) {
                                eu.this.n.setImageBitmap(eu.this.c);
                                eu.this.o.b(aa.b());
                            }
                        }
                    } catch (Throwable th) {
                        gf.b(th, "ZoomControllerView", "zoomout ontouch");
                        ThrowableExtension.printStackTrace(th);
                    }
                    return false;
                }
            });
            this.m.setPadding(0, 0, 20, -2);
            this.n.setPadding(0, 0, 20, 20);
            setOrientation(1);
            addView(this.m);
            addView(this.n);
        } catch (Throwable th) {
            gf.b(th, "ZoomControllerView", "create");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void a(float f2) {
        try {
            if (f2 < this.o.getMaxZoomLevel() && f2 > this.o.getMinZoomLevel()) {
                this.m.setImageBitmap(this.a);
                this.n.setImageBitmap(this.c);
            } else if (f2 == this.o.getMinZoomLevel()) {
                this.n.setImageBitmap(this.d);
                this.m.setImageBitmap(this.a);
            } else if (f2 == this.o.getMaxZoomLevel()) {
                this.m.setImageBitmap(this.b);
                this.n.setImageBitmap(this.c);
            }
        } catch (Throwable th) {
            gf.b(th, "ZoomControllerView", "setZoomBitmap");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void a(int i2) {
        try {
            a aVar = (a) getLayoutParams();
            if (i2 == 1) {
                aVar.d = 16;
            } else if (i2 == 2) {
                aVar.d = 80;
            }
            setLayoutParams(aVar);
        } catch (Throwable th) {
            gf.b(th, "ZoomControllerView", "setZoomPosition");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void a(boolean z) {
        if (z) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }
}
