package com.yalantis.ucrop.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;
import com.yalantis.ucrop.c.h;

public class GestureCropImageView extends CropImageView {
    private ScaleGestureDetector i;
    private h j;
    private GestureDetector k;
    /* access modifiers changed from: private */
    public float l;
    /* access modifiers changed from: private */
    public float m;
    private boolean n;
    private boolean o;
    private int p;

    private class a extends SimpleOnGestureListener {
        private a() {
        }

        public boolean onDoubleTap(MotionEvent motionEvent) {
            GestureCropImageView.this.a(GestureCropImageView.this.getDoubleTapTargetScale(), motionEvent.getX(), motionEvent.getY(), 200);
            return super.onDoubleTap(motionEvent);
        }

        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            GestureCropImageView.this.a(-f, -f2);
            return true;
        }
    }

    private class b extends com.yalantis.ucrop.c.h.b {
        private b() {
        }

        public boolean a(h hVar) {
            GestureCropImageView.this.d(hVar.a(), GestureCropImageView.this.l, GestureCropImageView.this.m);
            return true;
        }
    }

    private class c extends SimpleOnScaleGestureListener {
        private c() {
        }

        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            GestureCropImageView.this.c(scaleGestureDetector.getScaleFactor(), GestureCropImageView.this.l, GestureCropImageView.this.m);
            return true;
        }
    }

    public GestureCropImageView(Context context) {
        super(context);
        this.n = true;
        this.o = true;
        this.p = 5;
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.n = true;
        this.o = true;
        this.p = 5;
    }

    public void setScaleEnabled(boolean z) {
        this.o = z;
    }

    public void setRotateEnabled(boolean z) {
        this.n = z;
    }

    public void setDoubleTapScaleSteps(int i2) {
        this.p = i2;
    }

    public int getDoubleTapScaleSteps() {
        return this.p;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 0) {
            a();
        }
        if (motionEvent.getPointerCount() > 1) {
            this.l = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
            this.m = (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
        }
        this.k.onTouchEvent(motionEvent);
        if (this.o) {
            this.i.onTouchEvent(motionEvent);
        }
        if (this.n) {
            this.j.a(motionEvent);
        }
        if ((motionEvent.getAction() & 255) == 1) {
            setImageToWrapCropBounds();
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void d() {
        super.d();
        e();
    }

    /* access modifiers changed from: protected */
    public float getDoubleTapTargetScale() {
        return getCurrentScale() * ((float) Math.pow((double) (getMaxScale() / getMinScale()), (double) (1.0f / ((float) this.p))));
    }

    private void e() {
        this.k = new GestureDetector(getContext(), new a(), null, true);
        this.i = new ScaleGestureDetector(getContext(), new c());
        this.j = new h(new b());
    }
}
