package com.autonavi.ae.gmap.gesture;

import android.content.Context;
import com.autonavi.ae.gmap.gesture.ScaleGestureDetector.OnScaleGestureListener;

public class ScaleRotateGestureDetector extends ScaleGestureDetector {

    public static abstract class SimpleOnScaleRotateGestureListener implements OnScaleGestureListener {
        public abstract boolean onScaleRotate(ScaleRotateGestureDetector scaleRotateGestureDetector);

        public abstract boolean onScaleRotateBegin(ScaleRotateGestureDetector scaleRotateGestureDetector);

        public abstract void onScaleRotateEnd(ScaleRotateGestureDetector scaleRotateGestureDetector);

        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            return onScaleRotate((ScaleRotateGestureDetector) scaleGestureDetector);
        }

        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return onScaleRotateBegin((ScaleRotateGestureDetector) scaleGestureDetector);
        }

        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            onScaleRotateEnd((ScaleRotateGestureDetector) scaleGestureDetector);
        }
    }

    public ScaleRotateGestureDetector(Context context, SimpleOnScaleRotateGestureListener simpleOnScaleRotateGestureListener) {
        super(context, simpleOnScaleRotateGestureListener);
    }

    public float getRotationDegreesDelta() {
        return (float) (((Math.atan2((double) getPreviousSpanY(), (double) getPreviousSpanX()) - Math.atan2((double) getCurrentSpanY(), (double) getCurrentSpanX())) * 180.0d) / 3.141592653589793d);
    }
}
