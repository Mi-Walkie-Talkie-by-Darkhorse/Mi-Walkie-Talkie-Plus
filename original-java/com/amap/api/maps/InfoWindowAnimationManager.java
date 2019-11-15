package com.amap.api.maps;

import com.amap.api.maps.model.animation.Animation;
import com.amap.api.maps.model.animation.Animation.AnimationListener;
import com.autonavi.amap.mapcore.interfaces.IInfoWindowManager;

public class InfoWindowAnimationManager {
    IInfoWindowManager a = null;

    public InfoWindowAnimationManager(IInfoWindowManager iInfoWindowManager) {
        this.a = iInfoWindowManager;
    }

    public void setInfoWindowAnimation(Animation animation, AnimationListener animationListener) {
        this.a.setInfoWindowAnimation(animation, animationListener);
    }

    public void setInfoWindowAppearAnimation(Animation animation) {
        this.a.setInfoWindowAppearAnimation(animation);
    }

    public void setInfoWindowBackColor(int i) {
        this.a.setInfoWindowBackColor(i);
    }

    public void setInfoWindowBackEnable(boolean z) {
        this.a.setInfoWindowBackEnable(z);
    }

    public void setInfoWindowBackScale(float f, float f2) {
        this.a.setInfoWindowBackScale(f, f2);
    }

    public void setInfoWindowDisappearAnimation(Animation animation) {
        this.a.setInfoWindowDisappearAnimation(animation);
    }

    public void setInfoWindowMovingAnimation(Animation animation) {
        this.a.setInfoWindowMovingAnimation(animation);
    }

    public void startAnimation() {
        this.a.startAnimation();
    }
}
