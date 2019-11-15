package android.support.v4.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.VelocityTracker;

@TargetApi(11)
@RequiresApi(11)
class VelocityTrackerCompatHoneycomb {
    VelocityTrackerCompatHoneycomb() {
    }

    public static float getXVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity(i);
    }

    public static float getYVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity(i);
    }
}
