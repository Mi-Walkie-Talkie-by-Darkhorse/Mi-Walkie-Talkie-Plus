package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ListView;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.Marker;
import com.autonavi.ae.gmap.listener.MapWidgetListener;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: MapOverlayViewGroup */
public class er extends ViewGroup implements ae {
    af a;
    int b = 0;
    int c = 0;
    private l d;
    private Context e;
    private et f;
    private eq g;
    /* access modifiers changed from: private */
    public eo h;
    /* access modifiers changed from: private */
    public es i;
    private en j;
    private ep k;
    /* access modifiers changed from: private */
    public eu l;
    /* access modifiers changed from: private */
    public View m;
    private cg n;
    /* access modifiers changed from: private */
    public Drawable o = null;
    private boolean p = true;
    private View q;
    private boolean r;

    /* compiled from: MapOverlayViewGroup */
    public static class a extends LayoutParams {
        public FPoint a = null;
        public int b = 0;
        public int c = 0;
        public int d = 51;

        public a(int i, int i2, FPoint fPoint, int i3, int i4, int i5) {
            super(i, i2);
            this.a = fPoint;
            this.b = i3;
            this.c = i4;
            this.d = i5;
        }
    }

    public er(Context context, l lVar) {
        super(context);
        try {
            this.d = lVar;
            this.e = context;
            setBackgroundColor(-1);
            a(context);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void a(Context context) {
        int i2;
        this.f = new et(context, this.d);
        this.i = new es(context, this.d);
        this.j = new en(context);
        this.k = new ep(context);
        this.l = new eu(context, this.d);
        this.g = new eq(context, this.d);
        this.h = new eo(context, this.d);
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        if (this.d.l() != null) {
            addView(this.d.l(), 0, layoutParams);
            i2 = 1;
        } else {
            i2 = 0;
        }
        addView(this.j, i2, layoutParams);
        addView(this.f, layoutParams);
        addView(this.i, layoutParams);
        addView(this.k, new LayoutParams(-2, -2));
        addView(this.l, new a(-2, -2, new FPoint(0.0f, 0.0f), 0, 0, 83));
        addView(this.g, new a(-2, -2, FPoint.obtain(0.0f, 0.0f), 0, 0, 83));
        addView(this.h, new a(-2, -2, FPoint.obtain(0.0f, 0.0f), 0, 0, 51));
        this.h.setVisibility(8);
        this.d.a((MapWidgetListener) new MapWidgetListener() {
            public void invalidateScaleView() {
                if (er.this.i != null) {
                    er.this.i.post(new Runnable() {
                        public void run() {
                            er.this.i.b();
                        }
                    });
                }
            }

            public void invalidateCompassView() {
                if (er.this.h != null) {
                    er.this.h.post(new Runnable() {
                        public void run() {
                            er.this.h.b();
                        }
                    });
                }
            }

            public void invalidateZoomController(final float f) {
                if (er.this.l != null) {
                    er.this.l.post(new Runnable() {
                        public void run() {
                            er.this.l.a(f);
                        }
                    });
                }
            }

            public void setFrontViewVisibility(boolean z) {
            }
        });
        try {
            if (!this.d.h().isMyLocationButtonEnabled()) {
                this.g.setVisibility(8);
            }
        } catch (Throwable th) {
            gf.b(th, "AMapDelegateImpGLSurfaceView", "locationView gone");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void a(boolean z) {
        if (this.k != null && z && this.d.m()) {
            this.k.a(true);
        }
    }

    public void b(boolean z) {
        if (this.l != null) {
            this.l.a(z);
        }
    }

    public void c(boolean z) {
        if (this.g != null) {
            if (z) {
                this.g.setVisibility(0);
            } else {
                this.g.setVisibility(8);
            }
        }
    }

    public void d(boolean z) {
        if (this.h != null) {
            this.h.a(z);
        }
    }

    public void e(boolean z) {
        if (this.i != null) {
            this.i.a(z);
        }
    }

    public void f(boolean z) {
        if (this.f != null) {
            this.f.setVisibility(z ? 0 : 8);
        }
    }

    public void a(float f2) {
        if (this.l != null) {
            this.l.a(f2);
        }
    }

    public void a(int i2) {
        if (this.l != null) {
            this.l.a(i2);
        }
    }

    public void b(int i2) {
        if (this.f != null) {
            this.f.a(i2);
            this.f.postInvalidate();
            l();
        }
    }

    private void l() {
        if (this.i != null && this.i.getVisibility() == 0) {
            this.i.postInvalidate();
        }
    }

    public void c(int i2) {
        if (this.f != null) {
            this.f.b(i2);
            l();
        }
    }

    public void d(int i2) {
        if (this.f != null) {
            this.f.c(i2);
            l();
        }
    }

    public float e(int i2) {
        if (this.f == null) {
            return 0.0f;
        }
        l();
        return this.f.d(i2);
    }

    public void a(int i2, float f2) {
        if (this.f != null) {
            this.f.a(i2, f2);
            l();
        }
    }

    public void a(af afVar) {
        this.a = afVar;
    }

    public Point c() {
        if (this.f == null) {
            return null;
        }
        return this.f.c();
    }

    public en d() {
        return this.j;
    }

    public ep e() {
        return this.k;
    }

    public eq f() {
        return this.g;
    }

    public eo g() {
        return this.h;
    }

    public et h() {
        return this.f;
    }

    public void a(CameraPosition cameraPosition) {
        if (this.d.h().isLogoEnable()) {
            if (MapsInitializer.isLoadWorldGridMap() && cameraPosition.zoom >= 7.0f && !dy.a(cameraPosition.target.latitude, cameraPosition.target.longitude)) {
                this.f.setVisibility(8);
            } else if (this.d.n() == -1) {
                this.f.setVisibility(0);
            }
        }
    }

    public void i() {
        if (this.l != null) {
            this.l.a();
        }
        if (this.i != null) {
            this.i.a();
        }
        if (this.f != null) {
            this.f.a();
        }
        if (this.g != null) {
            this.g.a();
        }
        if (this.h != null) {
            this.h.a();
        }
        if (this.k != null) {
            this.k.b();
        }
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        try {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                if (childAt != null) {
                    if (childAt.getLayoutParams() instanceof a) {
                        a(childAt, (a) childAt.getLayoutParams());
                    } else {
                        a(childAt, childAt.getLayoutParams());
                    }
                }
            }
            this.f.d();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void a(View view, LayoutParams layoutParams) {
        int[] iArr = new int[2];
        a(view, layoutParams.width, layoutParams.height, iArr);
        if (view instanceof ep) {
            a(view, iArr[0], iArr[1], 20, (this.d.k().y - 80) - iArr[1], 51);
            return;
        }
        a(view, iArr[0], iArr[1], 0, 0, 51);
    }

    private void a(View view, a aVar) {
        int[] iArr = new int[2];
        a(view, aVar.width, aVar.height, iArr);
        if (view instanceof eu) {
            a(view, iArr[0], iArr[1], getWidth() - iArr[0], getHeight(), aVar.d);
        } else if (view instanceof eq) {
            a(view, iArr[0], iArr[1], getWidth() - iArr[0], iArr[1], aVar.d);
        } else if (view instanceof eo) {
            a(view, iArr[0], iArr[1], 0, 0, aVar.d);
        } else if (aVar.a != null) {
            IPoint obtain = IPoint.obtain();
            this.d.c().map2Win(aVar.a.x, aVar.a.y, obtain);
            obtain.x += aVar.b;
            obtain.y += aVar.c;
            a(view, iArr[0], iArr[1], obtain.x, obtain.y, aVar.d);
            obtain.recycle();
        }
    }

    public void a(cg cgVar) {
        if (cgVar != null) {
            try {
                if ((this.a == null || !this.a.a() || cgVar.getTitle() != null || cgVar.getSnippet() != null) && cgVar.isInfoWindowEnable()) {
                    if (this.n != null && !this.n.getId().equals(cgVar.getId())) {
                        a_();
                    }
                    if (this.a != null) {
                        this.n = cgVar;
                        cgVar.a(true);
                        this.r = true;
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    private View b(cg cgVar) throws RemoteException {
        View view;
        View view2 = null;
        Marker marker = new Marker(cgVar);
        try {
            if (this.o == null) {
                this.o = dv.a(this.e, "infowindow_bg.9.png");
            }
        } catch (Throwable th) {
            gf.b(th, "MapOverlayViewGroup", "showInfoWindow decodeDrawableFromAsset");
            ThrowableExtension.printStackTrace(th);
        }
        try {
            if (this.r) {
                view = this.a.a(marker);
                if (view == null) {
                    try {
                        view = this.a.b(marker);
                    } catch (Throwable th2) {
                        Throwable th3 = th2;
                        view2 = view;
                        th = th3;
                    }
                }
                this.q = view;
                this.r = false;
            } else {
                view = this.q;
            }
            if (view == null) {
                if (this.a.a()) {
                    view2 = this.a.a(marker);
                }
                return view2;
            }
            view2 = view;
            if (view2.getBackground() == null) {
                view2.setBackground(this.o);
            }
        } catch (Throwable th4) {
            th = th4;
        }
        return view2;
        gf.b(th, "MapOverlayViewGroup", "getInfoWindow or getInfoContents");
        ThrowableExtension.printStackTrace(th);
        return view2;
    }

    public void b() {
        try {
            if (this.n == null || !this.n.j()) {
                if (this.m != null && this.m.getVisibility() == 0) {
                    this.m.setVisibility(8);
                }
            } else if (this.p) {
                int e2 = this.n.e() + this.n.c();
                int f2 = this.n.f() + this.n.d() + 2;
                View b2 = b(this.n);
                if (b2 != null) {
                    a(b2, e2, f2);
                    if (this.m != null) {
                        a aVar = (a) this.m.getLayoutParams();
                        if (aVar != null) {
                            aVar.a = this.n.a();
                            aVar.b = e2;
                            aVar.c = f2;
                        }
                        onLayout(false, 0, 0, 0, 0);
                        this.b = e2;
                        this.c = f2;
                        if (this.a.a()) {
                            this.a.a(this.n.getTitle(), this.n.getSnippet());
                        }
                        if (this.m.getVisibility() == 8) {
                            this.m.setVisibility(0);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            gf.b(th, "MapOverlayViewGroup", "redrawInfoWindow");
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void a(View view, int i2, int i3) throws RemoteException {
        int i4;
        int i5 = -2;
        if (view != null) {
            if (this.m != null) {
                if (view != this.m) {
                    this.m.clearFocus();
                    removeView(this.m);
                } else {
                    return;
                }
            }
            this.m = view;
            LayoutParams layoutParams = this.m.getLayoutParams();
            this.m.setDrawingCacheEnabled(true);
            this.m.setDrawingCacheQuality(0);
            this.n.h();
            if (layoutParams != null) {
                i4 = layoutParams.width;
                i5 = layoutParams.height;
            } else {
                i4 = -2;
            }
            addView(this.m, new a(i4, i5, this.n.a(), i2, i3, 81));
        }
    }

    public void a_() {
        if (this.d != null && this.d.getMainHandler() != null) {
            this.d.getMainHandler().post(new Runnable() {
                public void run() {
                    if (er.this.m != null) {
                        er.this.m.clearFocus();
                        er.this.removeView(er.this.m);
                        ee.a(er.this.m.getBackground());
                        ee.a(er.this.o);
                        er.this.m = null;
                    }
                }
            });
            if (this.n != null) {
                this.n.a(false);
            }
            this.n = null;
            this.b = 0;
            this.c = 0;
        }
    }

    private void a(View view, int i2, int i3, int[] iArr) {
        if (view instanceof ListView) {
            View view2 = (View) view.getParent();
            if (view2 != null) {
                iArr[0] = view2.getWidth();
                iArr[1] = view2.getHeight();
            }
        }
        if (i2 <= 0 || i3 <= 0) {
            view.measure(0, 0);
        }
        if (i2 == -2) {
            iArr[0] = view.getMeasuredWidth();
        } else if (i2 == -1) {
            iArr[0] = getMeasuredWidth();
        } else {
            iArr[0] = i2;
        }
        if (i3 == -2) {
            iArr[1] = view.getMeasuredHeight();
        } else if (i3 == -1) {
            iArr[1] = getMeasuredHeight();
        } else {
            iArr[1] = i3;
        }
    }

    private void a(View view, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i6 & 7;
        int i8 = i6 & 112;
        if (i7 == 5) {
            i4 -= i2;
        } else if (i7 == 1) {
            i4 -= i2 / 2;
        }
        if (i8 == 80) {
            i5 -= i3;
        } else if (i8 == 17) {
            i5 -= i3 / 2;
        } else if (i8 == 16) {
            i5 = (i5 / 2) - (i3 / 2);
        }
        view.layout(i4, i5, i4 + i2, i5 + i3);
        if (view instanceof m) {
            this.d.b(i2, i3);
        }
    }

    public void j() {
        a_();
        ee.a(this.o);
        i();
        removeAllViews();
        this.q = null;
    }

    public boolean a(MotionEvent motionEvent) {
        if (this.m == null || this.n == null || !ee.a(new Rect(this.m.getLeft(), this.m.getTop(), this.m.getRight(), this.m.getBottom()), (int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return true;
    }

    public void a(Canvas canvas) {
        if (this.m != null && this.n != null) {
            Bitmap drawingCache = this.m.getDrawingCache(true);
            if (drawingCache != null) {
                canvas.drawBitmap(drawingCache, (float) this.m.getLeft(), (float) this.m.getTop(), new Paint());
            }
        }
    }

    public void k() {
        this.b = 0;
        this.c = 0;
    }
}
