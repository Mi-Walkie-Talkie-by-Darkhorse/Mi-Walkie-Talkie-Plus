package com.amap.api.maps.model.animation;

import android.view.animation.Interpolator;
import com.autonavi.amap.mapcore.animation.GLAlphaAnimation;

public class AlphaAnimation extends Animation {
    public AlphaAnimation(float f, float f2) {
        this.glAnimation = new GLAlphaAnimation(f, f2);
    }

    public void setDuration(long j) {
        this.glAnimation.setDuration(j);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.glAnimation.setInterpolator(interpolator);
    }
}
