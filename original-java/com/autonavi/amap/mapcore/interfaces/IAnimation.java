package com.autonavi.amap.mapcore.interfaces;

import com.amap.api.maps.model.animation.Animation.AnimationListener;
import com.autonavi.amap.mapcore.animation.GLAnimation;

public interface IAnimation {
    void setAnimation(GLAnimation gLAnimation);

    void setAnimationListener(AnimationListener animationListener);

    boolean startAnimation();
}
