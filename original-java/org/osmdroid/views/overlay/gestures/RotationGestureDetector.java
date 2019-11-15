package org.osmdroid.views.overlay.gestures;

import android.view.MotionEvent;

public class RotationGestureDetector {
    private RotationListener mListener;
    protected float mRotation;

    public interface RotationListener {
        void onRotate(float f);
    }

    public RotationGestureDetector(RotationListener rotationListener) {
        this.mListener = rotationListener;
    }

    private static float rotation(MotionEvent motionEvent) {
        return (float) Math.toDegrees(Math.atan2((double) (motionEvent.getY(0) - motionEvent.getY(1)), (double) (motionEvent.getX(0) - motionEvent.getX(1))));
    }

    public void onTouch(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() == 2) {
            if (motionEvent.getActionMasked() == 5) {
                this.mRotation = rotation(motionEvent);
            }
            float rotation = rotation(motionEvent) - this.mRotation;
            this.mRotation += rotation;
            this.mListener.onRotate(rotation);
        }
    }
}
