package com.autonavi.ae.gmap.gesture;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import com.autonavi.amap.mapcore.FPoint;

public class HoverGestureDetector extends TwoFingerGestureDetector {
    private static final FPoint FOCUS_DELTA_ZERO = FPoint.obtain();
    private FPoint mCurrFocusInternal;
    private FPoint mFocusDeltaExternal = FPoint.obtain();
    private FPoint mFocusExternal = FPoint.obtain();
    private final OnHoverGestureListener mListener;
    private FPoint mPrevFocusInternal;
    private boolean mSloppyGesture;

    public interface OnHoverGestureListener {
        boolean onHove(HoverGestureDetector hoverGestureDetector);

        boolean onHoveBegin(HoverGestureDetector hoverGestureDetector);

        void onHoveEnd(HoverGestureDetector hoverGestureDetector);
    }

    public HoverGestureDetector(Context context, OnHoverGestureListener onHoverGestureListener) {
        super(context);
        this.mListener = onHoverGestureListener;
    }

    /* access modifiers changed from: protected */
    public void handleStartProgressEvent(int i, MotionEvent motionEvent) {
        switch (i) {
            case 2:
                if (this.mSloppyGesture) {
                    this.mSloppyGesture = isSloppyGesture(motionEvent);
                    if (!this.mSloppyGesture) {
                        this.mGestureInProgress = this.mListener.onHoveBegin(this);
                        return;
                    }
                    return;
                }
                return;
            case 5:
                resetState();
                this.mPrevEvent = MotionEvent.obtain(motionEvent);
                this.mTimeDelta = 0;
                updateStateByEvent(motionEvent);
                this.mSloppyGesture = isSloppyGesture(motionEvent);
                if (!this.mSloppyGesture) {
                    this.mGestureInProgress = this.mListener.onHoveBegin(this);
                    return;
                }
                return;
            case 6:
                if (!this.mSloppyGesture) {
                }
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void handleInProgressEvent(int i, MotionEvent motionEvent) {
        switch (i) {
            case 2:
                updateStateByEvent(motionEvent);
                if (this.mCurrPressure / this.mPrevPressure > 0.67f && this.mListener.onHove(this)) {
                    this.mPrevEvent.recycle();
                    this.mPrevEvent = MotionEvent.obtain(motionEvent);
                    return;
                }
                return;
            case 3:
                if (!this.mSloppyGesture) {
                    this.mListener.onHoveEnd(this);
                }
                resetState();
                return;
            case 6:
                updateStateByEvent(motionEvent);
                if (!this.mSloppyGesture) {
                    this.mListener.onHoveEnd(this);
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
    }

    /* access modifiers changed from: protected */
    public void updateStateByEvent(MotionEvent motionEvent) {
        FPoint obtain;
        super.updateStateByEvent(motionEvent);
        MotionEvent motionEvent2 = this.mPrevEvent;
        this.mCurrFocusInternal = determineFocalPoint(motionEvent);
        this.mPrevFocusInternal = determineFocalPoint(motionEvent2);
        if (this.mPrevEvent.getPointerCount() != motionEvent.getPointerCount()) {
            obtain = FOCUS_DELTA_ZERO;
        } else {
            obtain = FPoint.obtain(this.mCurrFocusInternal.x - this.mPrevFocusInternal.x, this.mCurrFocusInternal.y - this.mPrevFocusInternal.y);
        }
        this.mFocusDeltaExternal = obtain;
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

    public PointF getFocusDelta() {
        return this.mFocusDeltaExternal;
    }
}
