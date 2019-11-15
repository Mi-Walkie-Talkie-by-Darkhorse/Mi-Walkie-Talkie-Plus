package com.autonavi.ae.gmap.gesture;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

public abstract class TwoFingerGestureDetector extends BaseGestureDetector {
    private float finger0DiffX = 0.0f;
    private float finger0DiffY = 0.0f;
    private float finger1DiffX = 0.0f;
    private float finger1DiffY = 0.0f;
    private float mBottomSlopEdge;
    protected float mCurrFingerDiffX;
    protected float mCurrFingerDiffY;
    private float mCurrLen;
    private final float mEdgeSlop;
    protected float mPrevFingerDiffX;
    protected float mPrevFingerDiffY;
    private float mPrevLen;
    private float mRightSlopEdge;

    /* access modifiers changed from: protected */
    public abstract void handleInProgressEvent(int i, MotionEvent motionEvent);

    /* access modifiers changed from: protected */
    public abstract void handleStartProgressEvent(int i, MotionEvent motionEvent);

    public TwoFingerGestureDetector(Context context) {
        super(context);
        this.mEdgeSlop = (float) ViewConfiguration.get(context).getScaledEdgeSlop();
    }

    /* access modifiers changed from: protected */
    public void updateStateByEvent(MotionEvent motionEvent) {
        super.updateStateByEvent(motionEvent);
        MotionEvent motionEvent2 = this.mPrevEvent;
        int pointerCount = this.mPrevEvent.getPointerCount();
        int pointerCount2 = motionEvent.getPointerCount();
        if (pointerCount2 == 2 && pointerCount2 == pointerCount) {
            this.mCurrLen = -1.0f;
            this.mPrevLen = -1.0f;
            float x = motionEvent2.getX(0);
            float y = motionEvent2.getY(0);
            float x2 = motionEvent2.getX(1);
            float y2 = motionEvent2.getY(1);
            float f = y2 - y;
            this.mPrevFingerDiffX = x2 - x;
            this.mPrevFingerDiffY = f;
            float x3 = motionEvent.getX(0);
            float y3 = motionEvent.getY(0);
            float x4 = motionEvent.getX(1);
            float y4 = motionEvent.getY(1);
            float f2 = y4 - y3;
            this.mCurrFingerDiffX = x4 - x3;
            this.mCurrFingerDiffY = f2;
            this.finger0DiffX = x3 - x;
            this.finger0DiffY = y3 - y;
            this.finger1DiffX = x4 - x2;
            this.finger1DiffY = y4 - y2;
        }
    }

    public PointF getPointerDelta(int i) {
        if (i == 0) {
            return new PointF(this.finger0DiffX, this.finger0DiffY);
        }
        return new PointF(this.finger1DiffX, this.finger1DiffY);
    }

    public float getCurrentSpan() {
        if (this.mCurrLen == -1.0f) {
            float f = this.mCurrFingerDiffX;
            float f2 = this.mCurrFingerDiffY;
            this.mCurrLen = (float) Math.sqrt((double) ((f * f) + (f2 * f2)));
        }
        return this.mCurrLen;
    }

    public float getPreviousSpan() {
        if (this.mPrevLen == -1.0f) {
            float f = this.mPrevFingerDiffX;
            float f2 = this.mPrevFingerDiffY;
            this.mPrevLen = (float) Math.sqrt((double) ((f * f) + (f2 * f2)));
        }
        return this.mPrevLen;
    }

    protected static float getRawX(MotionEvent motionEvent, int i) {
        float x = motionEvent.getX() - motionEvent.getRawX();
        if (i < motionEvent.getPointerCount()) {
            return motionEvent.getX(i) - x;
        }
        return 0.0f;
    }

    protected static float getRawY(MotionEvent motionEvent, int i) {
        float y = motionEvent.getY() - motionEvent.getRawY();
        if (i < motionEvent.getPointerCount()) {
            return motionEvent.getY(i) - y;
        }
        return 0.0f;
    }

    /* access modifiers changed from: protected */
    public boolean isSloppyGesture(MotionEvent motionEvent) {
        boolean z;
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        this.mRightSlopEdge = ((float) displayMetrics.widthPixels) - this.mEdgeSlop;
        this.mBottomSlopEdge = ((float) displayMetrics.heightPixels) - this.mEdgeSlop;
        float f = this.mEdgeSlop;
        float f2 = this.mRightSlopEdge;
        float f3 = this.mBottomSlopEdge;
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        float rawX2 = getRawX(motionEvent, 1);
        float rawY2 = getRawY(motionEvent, 1);
        boolean z2 = rawX < f || rawY < f || rawX > f2 || rawY > f3;
        if (rawX2 < f || rawY2 < f || rawX2 > f2 || rawY2 > f3) {
            z = true;
        } else {
            z = false;
        }
        if ((!z2 || !z) && !z2 && !z) {
            return false;
        }
        return true;
    }
}
