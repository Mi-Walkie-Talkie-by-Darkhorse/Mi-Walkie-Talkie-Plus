package com.autonavi.ae.gmap.gesture;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import com.autonavi.amap.mapcore.FPoint;

public class MoveGestureDetector extends BaseGestureDetector {
    private static final PointF FOCUS_DELTA_ZERO = new PointF();
    private FPoint mCurrFocusInternal;
    private PointF mFocusDeltaExternal = new PointF();
    private PointF mFocusExternal = new PointF();
    private final OnMoveGestureListener mListener;
    private FPoint mPrevFocusInternal;

    public interface OnMoveGestureListener {
        boolean onMove(MoveGestureDetector moveGestureDetector);

        boolean onMoveBegin(MoveGestureDetector moveGestureDetector);

        void onMoveEnd(MoveGestureDetector moveGestureDetector);
    }

    public static class SimpleOnMoveGestureListener implements OnMoveGestureListener {
        public boolean onMove(MoveGestureDetector moveGestureDetector) {
            return false;
        }

        public boolean onMoveBegin(MoveGestureDetector moveGestureDetector) {
            return true;
        }

        public void onMoveEnd(MoveGestureDetector moveGestureDetector) {
        }
    }

    public MoveGestureDetector(Context context, OnMoveGestureListener onMoveGestureListener) {
        super(context);
        this.mListener = onMoveGestureListener;
    }

    /* access modifiers changed from: protected */
    public void handleStartProgressEvent(int i, MotionEvent motionEvent) {
        switch (i) {
            case 0:
                resetState();
                this.mPrevEvent = MotionEvent.obtain(motionEvent);
                this.mTimeDelta = 0;
                updateStateByEvent(motionEvent);
                return;
            case 2:
                this.mGestureInProgress = this.mListener.onMoveBegin(this);
                return;
            case 5:
                if (this.mPrevEvent != null) {
                    this.mPrevEvent.recycle();
                }
                this.mPrevEvent = MotionEvent.obtain(motionEvent);
                updateStateByEvent(motionEvent);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void handleInProgressEvent(int i, MotionEvent motionEvent) {
        switch (i) {
            case 1:
            case 3:
                this.mListener.onMoveEnd(this);
                resetState();
                return;
            case 2:
                updateStateByEvent(motionEvent);
                if (this.mCurrPressure / this.mPrevPressure > 0.67f && motionEvent.getPointerCount() <= 1 && this.mListener.onMove(this)) {
                    this.mPrevEvent.recycle();
                    this.mPrevEvent = MotionEvent.obtain(motionEvent);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void updateStateByEvent(MotionEvent motionEvent) {
        super.updateStateByEvent(motionEvent);
        MotionEvent motionEvent2 = this.mPrevEvent;
        this.mCurrFocusInternal = determineFocalPoint(motionEvent);
        this.mPrevFocusInternal = determineFocalPoint(motionEvent2);
        boolean z = this.mPrevEvent.getPointerCount() != motionEvent.getPointerCount();
        this.mFocusDeltaExternal = z ? FOCUS_DELTA_ZERO : new PointF(this.mCurrFocusInternal.x - this.mPrevFocusInternal.x, this.mCurrFocusInternal.y - this.mPrevFocusInternal.y);
        this.mCurrFocusInternal.recycle();
        this.mPrevFocusInternal.recycle();
        if (z) {
            this.mPrevEvent.recycle();
            this.mPrevEvent = MotionEvent.obtain(motionEvent);
        }
        this.mFocusExternal.x += this.mFocusDeltaExternal.x;
        this.mFocusExternal.y += this.mFocusDeltaExternal.y;
    }

    public float getFocusX() {
        return this.mFocusExternal.x;
    }

    public float getFocusY() {
        return this.mFocusExternal.y;
    }

    public PointF getFocusDelta() {
        return this.mFocusDeltaExternal;
    }
}
