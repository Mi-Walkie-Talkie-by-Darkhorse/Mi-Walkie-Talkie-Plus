package com.autonavi.amap.mapcore.interfaces;

import com.amap.api.maps.model.animation.Animation;
import com.amap.api.maps.model.animation.Animation.AnimationListener;

public interface IInfoWindowManager {
    void setInfoWindowAnimation(Animation animation, AnimationListener animationListener);

    void setInfoWindowAppearAnimation(Animation animation);

    void setInfoWindowBackColor(int i);

    void setInfoWindowBackEnable(boolean z);

    void setInfoWindowBackScale(float f, float f2);

    void setInfoWindowDisappearAnimation(Animation animation);

    void setInfoWindowMovingAnimation(Animation animation);

    void startAnimation();
}
