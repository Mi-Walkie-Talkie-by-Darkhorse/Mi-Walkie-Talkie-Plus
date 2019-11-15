package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import com.amap.api.maps.model.AMapGestureListener;
import com.autonavi.ae.gmap.gesture.EAMapPlatformGestureInfo;
import com.autonavi.ae.gmap.gesture.HoverGestureDetector;
import com.autonavi.ae.gmap.gesture.HoverGestureDetector.OnHoverGestureListener;
import com.autonavi.ae.gmap.gesture.MoveGestureDetector;
import com.autonavi.ae.gmap.gesture.MoveGestureDetector.OnMoveGestureListener;
import com.autonavi.ae.gmap.gesture.ScaleRotateGestureDetector;
import com.autonavi.ae.gmap.gesture.ScaleRotateGestureDetector.SimpleOnScaleRotateGestureListener;
import com.autonavi.ae.gmap.gesture.ZoomOutGestureDetector;
import com.autonavi.ae.gmap.gesture.ZoomOutGestureDetector.SimpleOnZoomOutGestureListener;
import com.autonavi.amap.mapcore.message.GestureMapMessage;
import com.autonavi.amap.mapcore.message.HoverGestureMapMessage;
import com.autonavi.amap.mapcore.message.MoveGestureMapMessage;
import com.autonavi.amap.mapcore.message.RotateGestureMapMessage;
import com.autonavi.amap.mapcore.message.ScaleGestureMapMessage;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: GLMapGestureDetector */
public class h {
    l a;
    Context b;
    GestureDetector c;
    public AMapGestureListener d;
    private ScaleRotateGestureDetector e;
    private MoveGestureDetector f;
    private HoverGestureDetector g;
    private ZoomOutGestureDetector h;
    /* access modifiers changed from: private */
    public boolean i = false;
    /* access modifiers changed from: private */
    public int j = 0;
    /* access modifiers changed from: private */
    public int k = 0;
    /* access modifiers changed from: private */
    public int l = 0;
    /* access modifiers changed from: private */
    public int m = 0;
    /* access modifiers changed from: private */
    public int n = 0;
    /* access modifiers changed from: private */
    public boolean o = false;
    /* access modifiers changed from: private */
    public boolean p = false;
    /* access modifiers changed from: private */
    public boolean q = true;
    private Handler r = new Handler(Looper.getMainLooper());

    /* compiled from: GLMapGestureDetector */
    private class a implements OnDoubleTapListener, OnGestureListener {
        float a;
        long b;
        private int d;
        private EAMapPlatformGestureInfo e;

        private a() {
            this.d = 0;
            this.a = 0.0f;
            this.e = new EAMapPlatformGestureInfo();
            this.b = 0;
        }

        public boolean onDown(MotionEvent motionEvent) {
            h.this.o = false;
            return true;
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (h.this.d != null) {
                h.this.d.onFling(f, f2);
            }
            try {
                if (h.this.a.h().isScrollGesturesEnabled() && h.this.m <= 0 && h.this.k <= 0 && h.this.l == 0 && !h.this.q) {
                    this.e.mGestureState = 3;
                    this.e.mGestureType = 3;
                    float[] fArr = {motionEvent2.getX(), motionEvent2.getY()};
                    this.e.mLocation = fArr;
                    int a2 = h.this.a.a(this.e);
                    h.this.a.onFling();
                    h.this.a.a().startMapSlidAnim(a2, new Point((int) motionEvent2.getX(), (int) motionEvent2.getY()), f, f2);
                }
            } catch (Throwable th) {
                gf.b(th, "GLMapGestrureDetector", "onFling");
                ThrowableExtension.printStackTrace(th);
            }
            return true;
        }

        public void onLongPress(MotionEvent motionEvent) {
            if (h.this.n == 1) {
                this.e.mGestureState = 3;
                this.e.mGestureType = 7;
                float[] fArr = {motionEvent.getX(), motionEvent.getY()};
                this.e.mLocation = fArr;
                h.this.a.a(h.this.a.a(this.e), motionEvent);
                if (h.this.d != null) {
                    h.this.d.onLongPress(motionEvent.getX(), motionEvent.getY());
                }
            }
        }

        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (h.this.d != null) {
                h.this.d.onScroll(f, f2);
            }
            return false;
        }

        public void onShowPress(MotionEvent motionEvent) {
            try {
                this.e.mGestureState = 3;
                this.e.mGestureType = 7;
                float[] fArr = {motionEvent.getX(), motionEvent.getY()};
                this.e.mLocation = fArr;
                h.this.a.a().clearAnimations(h.this.a.a(this.e), false);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }

        public boolean onDoubleTap(MotionEvent motionEvent) {
            h.this.c.setIsLongpressEnabled(false);
            this.d = motionEvent.getPointerCount();
            if (h.this.d != null) {
                h.this.d.onDoubleTap(motionEvent.getX(), motionEvent.getY());
            }
            return false;
        }

        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            boolean z = true;
            if (this.d < motionEvent.getPointerCount()) {
                this.d = motionEvent.getPointerCount();
            }
            int action = motionEvent.getAction() & 255;
            if (this.d == 1) {
                try {
                    if (!h.this.a.h().isZoomGesturesEnabled()) {
                        return false;
                    }
                } catch (Throwable th) {
                    gf.b(th, "GLMapGestrureDetector", "onDoubleTapEvent");
                    ThrowableExtension.printStackTrace(th);
                }
                if (action == 0) {
                    this.e.mGestureState = 1;
                    this.e.mGestureType = 9;
                    float[] fArr = {motionEvent.getX(), motionEvent.getY()};
                    this.e.mLocation = fArr;
                    int a2 = h.this.a.a(this.e);
                    this.a = motionEvent.getY();
                    h.this.a.a(a2, (GestureMapMessage) ScaleGestureMapMessage.obtain(100, 1.0f, 0, 0));
                    this.b = SystemClock.uptimeMillis();
                } else if (action == 2) {
                    h.this.o = true;
                    float y = this.a - motionEvent.getY();
                    if (Math.abs(y) >= 20.0f) {
                        this.e.mGestureState = 2;
                        this.e.mGestureType = 9;
                        float[] fArr2 = {motionEvent.getX(), motionEvent.getY()};
                        this.e.mLocation = fArr2;
                        int a3 = h.this.a.a(this.e);
                        float mapHeight = (4.0f * y) / ((float) h.this.a.getMapHeight());
                        if (y > 0.0f) {
                            h.this.a.a(a3, (GestureMapMessage) ScaleGestureMapMessage.obtain(101, mapHeight, 0, 0));
                        } else {
                            h.this.a.a(a3, (GestureMapMessage) ScaleGestureMapMessage.obtain(101, mapHeight, 0, 0));
                        }
                        this.a = motionEvent.getY();
                    }
                } else {
                    this.e.mGestureState = 3;
                    this.e.mGestureType = 9;
                    float[] fArr3 = {motionEvent.getX(), motionEvent.getY()};
                    this.e.mLocation = fArr3;
                    int a4 = h.this.a.a(this.e);
                    h.this.c.setIsLongpressEnabled(true);
                    h.this.a.a(a4, (GestureMapMessage) ScaleGestureMapMessage.obtain(102, 1.0f, 0, 0));
                    if (action == 1) {
                        h.this.a.a(a4, 3);
                        long uptimeMillis = SystemClock.uptimeMillis() - this.b;
                        if (!h.this.o || uptimeMillis < 200) {
                            return h.this.a.b(a4, motionEvent);
                        }
                        h.this.o = false;
                    } else {
                        h.this.o = false;
                    }
                }
            } else {
                z = false;
            }
            return z;
        }

        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (h.this.n != 1) {
                return false;
            }
            this.e.mGestureState = 3;
            this.e.mGestureType = 8;
            float[] fArr = {motionEvent.getX(), motionEvent.getY()};
            this.e.mLocation = fArr;
            int a2 = h.this.a.a(this.e);
            if (h.this.d != null) {
                try {
                    h.this.d.onSingleTap(motionEvent.getX(), motionEvent.getY());
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
            return h.this.a.c(a2, motionEvent);
        }
    }

    /* compiled from: GLMapGestureDetector */
    private class b implements OnHoverGestureListener {
        private EAMapPlatformGestureInfo b;

        private b() {
            this.b = new EAMapPlatformGestureInfo();
        }

        public boolean onHove(HoverGestureDetector hoverGestureDetector) {
            boolean z = false;
            this.b.mGestureState = 2;
            this.b.mGestureType = 6;
            float[] fArr = {hoverGestureDetector.getEvent().getX(), hoverGestureDetector.getEvent().getY()};
            this.b.mLocation = fArr;
            try {
                if (!h.this.a.h().isTiltGesturesEnabled()) {
                    return true;
                }
                int a2 = h.this.a.a(this.b);
                if (h.this.a.d(a2)) {
                    return false;
                }
                if (h.this.l > 3) {
                    return false;
                }
                float f = hoverGestureDetector.getFocusDelta().x;
                float f2 = hoverGestureDetector.getFocusDelta().y;
                if (!h.this.i) {
                    PointF pointerDelta = hoverGestureDetector.getPointerDelta(0);
                    PointF pointerDelta2 = hoverGestureDetector.getPointerDelta(1);
                    if ((pointerDelta.y > 10.0f && pointerDelta2.y > 10.0f) || (pointerDelta.y < -10.0f && pointerDelta2.y < -10.0f)) {
                        z = true;
                    }
                    if (z && Math.abs(f2) > 10.0f && Math.abs(f) < 10.0f) {
                        h.this.i = true;
                    }
                }
                if (!h.this.i) {
                    return true;
                }
                h.this.i = true;
                float f3 = f2 / 6.0f;
                if (Math.abs(f3) <= 1.0f) {
                    return true;
                }
                h.this.a.a(a2, (GestureMapMessage) HoverGestureMapMessage.obtain(101, f3));
                h.this.m = h.this.m + 1;
                return true;
            } catch (Throwable th) {
                gf.b(th, "GLMapGestrureDetector", "onHove");
                ThrowableExtension.printStackTrace(th);
                return true;
            }
        }

        public boolean onHoveBegin(HoverGestureDetector hoverGestureDetector) {
            this.b.mGestureState = 1;
            this.b.mGestureType = 6;
            float[] fArr = {hoverGestureDetector.getEvent().getX(), hoverGestureDetector.getEvent().getY()};
            this.b.mLocation = fArr;
            try {
                if (!h.this.a.h().isTiltGesturesEnabled()) {
                    return true;
                }
                int a2 = h.this.a.a(this.b);
                if (h.this.a.d(a2)) {
                    return false;
                }
                h.this.a.a(a2, (GestureMapMessage) HoverGestureMapMessage.obtain(100, h.this.a.p(a2)));
                return true;
            } catch (Throwable th) {
                gf.b(th, "GLMapGestrureDetector", "onHoveBegin");
                ThrowableExtension.printStackTrace(th);
                return true;
            }
        }

        public void onHoveEnd(HoverGestureDetector hoverGestureDetector) {
            this.b.mGestureState = 3;
            this.b.mGestureType = 6;
            float[] fArr = {hoverGestureDetector.getEvent().getX(), hoverGestureDetector.getEvent().getY()};
            this.b.mLocation = fArr;
            try {
                if (h.this.a.h().isTiltGesturesEnabled()) {
                    int a2 = h.this.a.a(this.b);
                    if (!h.this.a.d(a2)) {
                        if (h.this.a.p(a2) >= 0.0f && h.this.m > 0) {
                            h.this.a.a(a2, 7);
                        }
                        h.this.i = false;
                        h.this.a.a(a2, (GestureMapMessage) HoverGestureMapMessage.obtain(102, h.this.a.p(a2)));
                    }
                }
            } catch (Throwable th) {
                gf.b(th, "GLMapGestrureDetector", "onHoveEnd");
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    /* compiled from: GLMapGestureDetector */
    private class c implements OnMoveGestureListener {
        private final float b;
        private final float c;
        private EAMapPlatformGestureInfo d;

        private c() {
            this.b = 1.0f;
            this.c = 4.0f;
            this.d = new EAMapPlatformGestureInfo();
        }

        public boolean onMove(MoveGestureDetector moveGestureDetector) {
            if (h.this.i) {
                return true;
            }
            try {
                if (!h.this.a.h().isScrollGesturesEnabled() || h.this.p) {
                    return true;
                }
                this.d.mGestureState = 2;
                this.d.mGestureType = 3;
                float[] fArr = {moveGestureDetector.getEvent().getX(), moveGestureDetector.getEvent().getY()};
                this.d.mLocation = fArr;
                int a2 = h.this.a.a(this.d);
                PointF focusDelta = moveGestureDetector.getFocusDelta();
                float f = 1.0f;
                if (h.this.j == 0) {
                    f = 4.0f;
                }
                if (Math.abs(focusDelta.x) <= f && Math.abs(focusDelta.y) <= f) {
                    return false;
                }
                if (h.this.j == 0) {
                    h.this.a.a().clearAnimations(a2, false);
                }
                h.this.a.a(a2, (GestureMapMessage) MoveGestureMapMessage.obtain(101, focusDelta.x, focusDelta.y));
                h.this.j = h.this.j + 1;
                return true;
            } catch (Throwable th) {
                gf.b(th, "GLMapGestrureDetector", "onMove");
                ThrowableExtension.printStackTrace(th);
                return true;
            }
        }

        public boolean onMoveBegin(MoveGestureDetector moveGestureDetector) {
            try {
                if (h.this.a.h().isScrollGesturesEnabled()) {
                    this.d.mGestureState = 1;
                    this.d.mGestureType = 3;
                    float[] fArr = {moveGestureDetector.getEvent().getX(), moveGestureDetector.getEvent().getY()};
                    this.d.mLocation = fArr;
                    h.this.a.a(h.this.a.a(this.d), (GestureMapMessage) MoveGestureMapMessage.obtain(100, 0.0f, 0.0f));
                }
            } catch (Throwable th) {
                gf.b(th, "GLMapGestrureDetector", "onMoveBegin");
                ThrowableExtension.printStackTrace(th);
            }
            return true;
        }

        public void onMoveEnd(MoveGestureDetector moveGestureDetector) {
            try {
                if (h.this.a.h().isScrollGesturesEnabled()) {
                    this.d.mGestureState = 3;
                    this.d.mGestureType = 3;
                    float[] fArr = {moveGestureDetector.getEvent().getX(), moveGestureDetector.getEvent().getY()};
                    this.d.mLocation = fArr;
                    int a2 = h.this.a.a(this.d);
                    if (h.this.j > 0) {
                        h.this.a.a(a2, 5);
                    }
                    h.this.a.a(a2, (GestureMapMessage) MoveGestureMapMessage.obtain(102, 0.0f, 0.0f));
                }
            } catch (Throwable th) {
                gf.b(th, "GLMapGestrureDetector", "onMoveEnd");
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    /* compiled from: GLMapGestureDetector */
    private class d extends SimpleOnScaleRotateGestureListener {
        private boolean b;
        private boolean c;
        private boolean d;
        private Point e;
        private float[] f;
        private float g;
        private float[] h;
        private float i;
        private EAMapPlatformGestureInfo j;

        private d() {
            this.b = false;
            this.c = false;
            this.d = false;
            this.e = new Point();
            this.f = new float[10];
            this.g = 0.0f;
            this.h = new float[10];
            this.i = 0.0f;
            this.j = new EAMapPlatformGestureInfo();
        }

        public boolean onScaleRotate(ScaleRotateGestureDetector scaleRotateGestureDetector) {
            this.j.mGestureState = 2;
            this.j.mGestureType = 4;
            float[] fArr = {scaleRotateGestureDetector.getEvent().getX(), scaleRotateGestureDetector.getEvent().getY()};
            this.j.mLocation = fArr;
            int a2 = h.this.a.a(this.j);
            boolean z = false;
            float scaleFactor = scaleRotateGestureDetector.getScaleFactor();
            float timeDelta = (float) scaleRotateGestureDetector.getTimeDelta();
            int focusX = (int) scaleRotateGestureDetector.getFocusX();
            int focusY = (int) scaleRotateGestureDetector.getFocusY();
            float abs = (float) Math.abs(focusX - this.e.x);
            float abs2 = (float) Math.abs(focusY - this.e.y);
            this.e.x = focusX;
            this.e.y = focusY;
            float log = (float) Math.log((double) scaleFactor);
            if (h.this.k <= 0 && ((double) Math.abs(log)) > 0.2d) {
                this.d = true;
            }
            try {
                if (h.this.a.h().isZoomGesturesEnabled()) {
                    if (!this.b && 0.06f < Math.abs(log)) {
                        this.b = true;
                    }
                    if (this.b && 0.01f < Math.abs(log)) {
                        z = true;
                        if (((abs <= 2.0f && abs2 <= 2.0f) || Math.abs(log) >= 0.02f) && timeDelta > 0.0f) {
                            this.g = log / timeDelta;
                            this.f[h.this.k % 10] = Math.abs(this.g);
                            h.this.k = h.this.k + 1;
                            h.this.a.a(a2, (GestureMapMessage) ScaleGestureMapMessage.obtain(101, log, focusX, focusY));
                            if (log > 0.0f) {
                                h.this.a.a(a2, 1);
                            } else {
                                h.this.a.a(a2, 2);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                Throwable th2 = th;
                boolean z2 = z;
                Throwable th3 = th2;
                gf.b(th3, "GLMapGestrureDetector", "onScaleRotate");
                ThrowableExtension.printStackTrace(th3);
                z = z2;
            }
            try {
                if (!h.this.a.h().isRotateGesturesEnabled() || h.this.a.e(a2) || this.d) {
                    return z;
                }
                float rotationDegreesDelta = scaleRotateGestureDetector.getRotationDegreesDelta();
                if (!this.c && Math.abs(rotationDegreesDelta) >= 4.0f) {
                    this.c = true;
                }
                if (!this.c || 1.0f >= Math.abs(rotationDegreesDelta)) {
                    return z;
                }
                if ((abs > 4.0f || abs2 > 4.0f) && Math.abs(rotationDegreesDelta) < 2.0f) {
                    return z;
                }
                this.i = rotationDegreesDelta / timeDelta;
                this.h[h.this.l % 10] = Math.abs(this.i);
                h.this.l = h.this.l + 1;
                h.this.a.a(a2, (GestureMapMessage) RotateGestureMapMessage.obtain(101, rotationDegreesDelta, focusX, focusY));
                z = true;
                h.this.a.a(a2, 6);
                return true;
            } catch (Throwable th4) {
                gf.b(th4, "GLMapGestrureDetector", "onScaleRotate");
                ThrowableExtension.printStackTrace(th4);
                return z;
            }
        }

        public boolean onScaleRotateBegin(ScaleRotateGestureDetector scaleRotateGestureDetector) {
            this.j.mGestureState = 1;
            this.j.mGestureType = 4;
            float[] fArr = {scaleRotateGestureDetector.getEvent().getX(), scaleRotateGestureDetector.getEvent().getY()};
            this.j.mLocation = fArr;
            int a2 = h.this.a.a(this.j);
            int focusX = (int) scaleRotateGestureDetector.getFocusX();
            int focusY = (int) scaleRotateGestureDetector.getFocusY();
            this.d = false;
            this.e.x = focusX;
            this.e.y = focusY;
            this.b = false;
            this.c = false;
            h.this.a.a(a2, (GestureMapMessage) ScaleGestureMapMessage.obtain(100, 1.0f, focusX, focusY));
            try {
                if (h.this.a.h().isRotateGesturesEnabled() && !h.this.a.e(a2)) {
                    h.this.a.a(a2, (GestureMapMessage) RotateGestureMapMessage.obtain(100, h.this.a.n(a2), focusX, focusY));
                }
            } catch (Throwable th) {
                gf.b(th, "GLMapGestrureDetector", "onScaleRotateBegin");
                ThrowableExtension.printStackTrace(th);
            }
            return true;
        }

        public void onScaleRotateEnd(ScaleRotateGestureDetector scaleRotateGestureDetector) {
            int c2;
            this.j.mGestureState = 3;
            this.j.mGestureType = 4;
            this.j.mLocation = new float[]{scaleRotateGestureDetector.getEvent().getX(), scaleRotateGestureDetector.getEvent().getY()};
            int a2 = h.this.a.a(this.j);
            this.d = false;
            h.this.a.a(a2, (GestureMapMessage) ScaleGestureMapMessage.obtain(102, 1.0f, 0, 0));
            if (h.this.k > 0) {
                int b2 = h.this.k > 10 ? 10 : h.this.k;
                float f2 = 0.0f;
                for (int i2 = 0; i2 < 10; i2++) {
                    f2 += this.f[i2];
                    this.f[i2] = 0.0f;
                }
                float f3 = f2 / ((float) b2);
                if (0.004f <= f3) {
                    float f4 = f3 * 300.0f;
                    if (f4 >= 1.5f) {
                        f4 = 1.5f;
                    }
                    if (this.g < 0.0f) {
                        f4 = -f4;
                    }
                    float a3 = f4 + h.this.a.a(a2);
                }
                this.g = 0.0f;
            }
            if (!h.this.a.e(a2)) {
                try {
                    if (h.this.a.h().isRotateGesturesEnabled()) {
                        h.this.a.a(a2, (GestureMapMessage) RotateGestureMapMessage.obtain(102, h.this.a.n(a2), 0, 0));
                    }
                } catch (Throwable th) {
                    gf.b(th, "GLMapGestrureDetector", "onScaleRotateEnd");
                    ThrowableExtension.printStackTrace(th);
                }
                if (h.this.l > 0) {
                    h.this.a.a(a2, 6);
                    if (h.this.l > 10) {
                        c2 = 10;
                    } else {
                        c2 = h.this.l;
                    }
                    float f5 = 0.0f;
                    for (int i3 = 0; i3 < 10; i3++) {
                        f5 += this.h[i3];
                        this.h[i3] = 0.0f;
                    }
                    float f6 = f5 / ((float) c2);
                    if (0.1f <= f6) {
                        float f7 = f6 * 200.0f;
                        int n = ((int) h.this.a.n(a2)) % 360;
                        if (f7 >= 60.0f) {
                            f7 = 60.0f;
                        }
                        if (this.i < 0.0f) {
                            f7 = -f7;
                        }
                        float f8 = (float) (((int) (f7 + ((float) n))) % 360);
                    }
                }
                this.g = 0.0f;
            }
        }
    }

    /* compiled from: GLMapGestureDetector */
    private class e extends SimpleOnZoomOutGestureListener {
        EAMapPlatformGestureInfo a;

        private e() {
            this.a = new EAMapPlatformGestureInfo();
        }

        public void onZoomOut(ZoomOutGestureDetector zoomOutGestureDetector) {
            try {
                if (h.this.a.h().isZoomGesturesEnabled() && Math.abs(zoomOutGestureDetector.getFocusX()) <= 10.0f && Math.abs(zoomOutGestureDetector.getFocusY()) <= 10.0f && zoomOutGestureDetector.getTimeDelta() < 200) {
                    h.this.q = true;
                    this.a.mGestureState = 2;
                    this.a.mGestureType = 2;
                    float[] fArr = {zoomOutGestureDetector.getEvent().getX(), zoomOutGestureDetector.getEvent().getY()};
                    this.a.mLocation = fArr;
                    int a2 = h.this.a.a(this.a);
                    h.this.a.a(a2, 4);
                    h.this.a.c(a2);
                }
            } catch (Throwable th) {
                gf.b(th, "GLMapGestrureDetector", "onZoomOut");
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void a(AMapGestureListener aMapGestureListener) {
        this.d = aMapGestureListener;
    }

    public void a() {
        this.j = 0;
        this.l = 0;
        this.k = 0;
        this.m = 0;
        this.n = 0;
    }

    public h(l lVar) {
        this.b = lVar.t();
        this.a = lVar;
        a aVar = new a();
        this.c = new GestureDetector(this.b, aVar, this.r);
        this.c.setOnDoubleTapListener(aVar);
        this.e = new ScaleRotateGestureDetector(this.b, new d());
        this.f = new MoveGestureDetector(this.b, new c());
        this.g = new HoverGestureDetector(this.b, new b());
        this.h = new ZoomOutGestureDetector(this.b, new e());
    }

    public boolean a(MotionEvent motionEvent) {
        if (this.n < motionEvent.getPointerCount()) {
            this.n = motionEvent.getPointerCount();
        }
        if ((motionEvent.getAction() & 255) == 0) {
            this.p = false;
            this.q = false;
        }
        if (motionEvent.getAction() == 6 && motionEvent.getPointerCount() > 0) {
            this.p = true;
        }
        if (this.o && this.n >= 2) {
            this.o = false;
        }
        try {
            if (this.d != null) {
                if (motionEvent.getAction() == 0) {
                    this.d.onDown(motionEvent.getX(), motionEvent.getY());
                } else if (motionEvent.getAction() == 1) {
                    this.d.onUp(motionEvent.getX(), motionEvent.getY());
                }
            }
            this.c.onTouchEvent(motionEvent);
            boolean onTouchEvent = this.g.onTouchEvent(motionEvent);
            if (this.i && this.m > 0) {
                return onTouchEvent;
            }
            this.h.onTouchEvent(motionEvent);
            if (this.o) {
                return onTouchEvent;
            }
            this.e.onTouchEvent(motionEvent);
            return this.f.onTouchEvent(motionEvent);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public void b() {
        if (this.r != null) {
            this.r.removeCallbacks(null);
            this.r = null;
        }
    }
}
