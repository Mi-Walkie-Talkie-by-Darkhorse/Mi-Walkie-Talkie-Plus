package com.yalantis.ucrop.c;

import android.support.annotation.NonNull;
import android.view.MotionEvent;

/* compiled from: RotationGestureDetector */
public class h {
    private float a;
    private float b;
    private float c;
    private float d;
    private int e = -1;
    private int f = -1;
    private float g;
    private boolean h;
    private a i;

    /* compiled from: RotationGestureDetector */
    public interface a {
        boolean a(h hVar);
    }

    /* compiled from: RotationGestureDetector */
    public static class b implements a {
        public boolean a(h hVar) {
            return false;
        }
    }

    public h(a aVar) {
        this.i = aVar;
    }

    public float a() {
        return this.g;
    }

    public boolean a(@NonNull MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.c = motionEvent.getX();
                this.d = motionEvent.getY();
                this.e = motionEvent.findPointerIndex(motionEvent.getPointerId(0));
                this.g = 0.0f;
                this.h = true;
                break;
            case 1:
                this.e = -1;
                break;
            case 2:
                if (!(this.e == -1 || this.f == -1 || motionEvent.getPointerCount() <= this.f)) {
                    float x = motionEvent.getX(this.e);
                    float y = motionEvent.getY(this.e);
                    float x2 = motionEvent.getX(this.f);
                    float y2 = motionEvent.getY(this.f);
                    if (this.h) {
                        this.g = 0.0f;
                        this.h = false;
                    } else {
                        a(this.a, this.b, this.c, this.d, x2, y2, x, y);
                    }
                    if (this.i != null) {
                        this.i.a(this);
                    }
                    this.a = x2;
                    this.b = y2;
                    this.c = x;
                    this.d = y;
                    break;
                }
            case 5:
                this.a = motionEvent.getX();
                this.b = motionEvent.getY();
                this.f = motionEvent.findPointerIndex(motionEvent.getPointerId(motionEvent.getActionIndex()));
                this.g = 0.0f;
                this.h = true;
                break;
            case 6:
                this.f = -1;
                break;
        }
        return true;
    }

    private float a(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        return a((float) Math.toDegrees((double) ((float) Math.atan2((double) (f3 - f5), (double) (f2 - f4)))), (float) Math.toDegrees((double) ((float) Math.atan2((double) (f7 - f9), (double) (f6 - f8)))));
    }

    private float a(float f2, float f3) {
        this.g = (f3 % 360.0f) - (f2 % 360.0f);
        if (this.g < -180.0f) {
            this.g += 360.0f;
        } else if (this.g > 180.0f) {
            this.g -= 360.0f;
        }
        return this.g;
    }
}
