package com.amap.api.maps.model.animation;

import android.view.animation.Interpolator;
import com.autonavi.amap.mapcore.animation.GLAnimationSet;

public class AnimationSet extends Animation {
    public AnimationSet(boolean z) {
        this.glAnimation = new GLAnimationSet(z);
    }

    public void setDuration(long j) {
        this.glAnimation.setDuration(j);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.glAnimation.setInterpolator(interpolator);
    }

    public void addAnimation(Animation animation) {
        ((GLAnimationSet) this.glAnimation).addAnimation(animation);
    }

    public void cleanAnimation() {
        ((GLAnimationSet) this.glAnimation).cleanAnimation();
    }
}
