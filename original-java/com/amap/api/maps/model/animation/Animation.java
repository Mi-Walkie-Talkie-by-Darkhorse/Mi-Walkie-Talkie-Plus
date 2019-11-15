package com.amap.api.maps.model.animation;

import android.view.animation.Interpolator;
import com.autonavi.amap.mapcore.animation.GLAnimation;

public abstract class Animation {
    public GLAnimation glAnimation;

    public interface AnimationListener {
        void onAnimationEnd();

        void onAnimationStart();
    }

    public abstract void setDuration(long j);

    public abstract void setInterpolator(Interpolator interpolator);

    public Animation() {
        this.glAnimation = null;
        this.glAnimation = new GLAnimation();
    }

    public void setAnimationListener(AnimationListener animationListener) {
        this.glAnimation.setAnimationListener(animationListener);
    }
}
