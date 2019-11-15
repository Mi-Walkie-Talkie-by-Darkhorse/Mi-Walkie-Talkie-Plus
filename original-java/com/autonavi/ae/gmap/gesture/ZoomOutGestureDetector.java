package com.autonavi.ae.gmap.gesture;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import com.autonavi.amap.mapcore.FPoint;

public class ZoomOutGestureDetector extends TwoFingerGestureDetector {
    private static final PointF FOCUS_DELTA_ZERO = new PointF();
    private FPoint mCurrFocusInternal;
    private PointF mFocusDeltaExternal = new PointF();
    private PointF mFocusExternal = new PointF();
    private final OnZoomOutGestureListener mListener;
    private FPoint mPrevFocusInternal;
    private boolean mSloppyGesture;

    public interface OnZoomOutGestureListener {
        void onZoomOut(ZoomOutGestureDetector zoomOutGestureDetector);

        boolean onZoomOutBegin(ZoomOutGestureDetector zoomOutGestureDetector);
    }

    public static class SimpleOnZoomOutGestureListener implements OnZoomOutGestureListener {
        public boolean onZoomOutBegin(ZoomOutGestureDetector zoomOutGestureDetector) {
            return true;
        }

        public void onZoomOut(ZoomOutGestureDetector zoomOutGestureDetector) {
        }
    }

    public ZoomOutGestureDetector(Context context, OnZoomOutGestureListener onZoomOutGestureListener) {
        super(context);
        this.mListener = onZoomOutGestureListener;
    }

    /* access modifiers changed from: protected */
    public void handleStartProgressEvent(int i, MotionEvent motionEvent) {
        switch (i) {
            case 5:
                resetState();
                this.mPrevEvent = MotionEvent.obtain(motionEvent);
                this.mTimeDelta = 0;
                updateStateByEvent(motionEvent);
                this.mSloppyGesture = isSloppyGesture(motionEvent);
                if (!this.mSloppyGesture) {
                    this.mGestureInProgress = this.mListener.onZoomOutBegin(this);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void handleInProgressEvent(int i, MotionEvent motionEvent) {
        switch (i) {
            case 3:
                resetState();
                return;
            case 6:
                updateStateByEvent(motionEvent);
                if (!this.mSloppyGesture) {
                    this.mListener.onZoomOut(this);
                }
                resetState();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void resetState() {
        super.resetState();
        this.mSloppyGesture = false;
        this.mFocusExternal.x = 0.0f;
        this.mFocusDeltaExternal.x = 0.0f;
        this.mFocusExternal.y = 0.0f;
        this.mFocusDeltaExternal.y = 0.0f;
    }

    /* access modifiers changed from: protected */
    public void updateStateByEvent(MotionEvent motionEvent) {
        super.updateStateByEvent(motionEvent);
        MotionEvent motionEvent2 = this.mPrevEvent;
        this.mCurrFocusInternal = determineFocalPoint(motionEvent);
        this.mPrevFocusInternal = determineFocalPoint(motionEvent2);
        this.mFocusDeltaExternal = this.mPrevEvent.getPointerCount() != motionEvent.getPointerCount() ? FOCUS_DELTA_ZERO : new PointF(this.mCurrFocusInternal.x - this.mPrevFocusInternal.x, this.mCurrFocusInternal.y - this.mPrevFocusInternal.y);
        this.mCurrFocusInternal.recycle();
        this.mPrevFocusInternal.recycle();
        this.mFocusExternal.x += this.mFocusDeltaExternal.x;
        this.mFocusExternal.y += this.mFocusDeltaExternal.y;
    }

    public float getFocusX() {
        return this.mFocusExternal.x;
    }

    public float getFocusY() {
        return this.mFocusExternal.y;
    }
}
