package com.autonavi.ae.gmap.glanimation;

import com.amap.api.maps.AMap.CancelableCallback;
import com.autonavi.ae.gmap.GLMapState;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ADGLMapAnimationMgr {
    private List<ADGLAnimation> list = Collections.synchronizedList(new ArrayList());
    private CancelableCallback mCancelCallback;
    private MapAnimationListener mMapAnimationListener;

    public interface MapAnimationListener {
        void onMapAnimationFinish(CancelableCallback cancelableCallback);
    }

    public void setMapCoreListener() {
    }

    public synchronized void clearAnimations() {
        this.list.clear();
    }

    public synchronized int getAnimationsCount() {
        return this.list.size();
    }

    public synchronized void doAnimations(GLMapState gLMapState) {
        if (gLMapState != null) {
            if (this.list.size() > 0) {
                ADGLAnimation aDGLAnimation = (ADGLAnimation) this.list.get(0);
                if (aDGLAnimation != null) {
                    if (aDGLAnimation.isOver()) {
                        if (this.mMapAnimationListener != null) {
                            this.mMapAnimationListener.onMapAnimationFinish(this.mCancelCallback);
                        }
                        this.list.remove(aDGLAnimation);
                    } else {
                        aDGLAnimation.doAnimation(gLMapState);
                    }
                }
            }
        }
    }

    public void addAnimation(ADGLAnimation aDGLAnimation, CancelableCallback cancelableCallback) {
        if (aDGLAnimation != null) {
            synchronized (this.list) {
                if (!aDGLAnimation.isOver() && this.list.size() > 0) {
                    ADGLAnimation aDGLAnimation2 = (ADGLAnimation) this.list.get(this.list.size() - 1);
                    if (aDGLAnimation2 != null && (aDGLAnimation instanceof ADGLMapAnimGroup) && (aDGLAnimation2 instanceof ADGLMapAnimGroup) && ((ADGLMapAnimGroup) aDGLAnimation).typeEqueal((ADGLMapAnimGroup) aDGLAnimation2) && !((ADGLMapAnimGroup) aDGLAnimation)._needMove) {
                        this.list.remove(aDGLAnimation2);
                    }
                }
                this.list.add(aDGLAnimation);
                this.mCancelCallback = cancelableCallback;
            }
        }
    }

    public CancelableCallback getCancelCallback() {
        return this.mCancelCallback;
    }

    public void setMapAnimationListener(MapAnimationListener mapAnimationListener) {
        this.mMapAnimationListener = mapAnimationListener;
    }

    public MapAnimationListener getMapAnimationListener() {
        return this.mMapAnimationListener;
    }
}
