package com.autonavi.ae.gmap.gloverlay;

import android.graphics.Point;
import com.autonavi.ae.gmap.GLMapEngine;
import com.autonavi.ae.gmap.gloverlay.GLOverlay.EAMapOverlayTpye;
import com.autonavi.amap.mapcore.interfaces.IAMap;

public class GLNaviOverlay extends GLOverlay {
    int mBearing;
    int mPx;
    int mPy;

    private static native int[] nativeGetCarPoistionInfo(long j);

    private static native void nativeSetArcColorsAndAngles(long j, int i, int i2, int i3, int i4, int i5);

    /* access modifiers changed from: private */
    public static native void nativeSetArcInfo(long j, int i, int i2, int i3, int i4);

    private static native void nativeSetCarAnimationTime(long j, int i);

    private static native void nativeSetCarPosition(long j, int i, int i2, int i3, int i4);

    private static native void nativeSetDirIndicatorAngle(long j, int i);

    private static native void nativeSetEndPoint(long j, int i, int i2);

    private static native void nativeSetNaviEndLine(long j, int i, int i2, int i3);

    private static native void nativeSetNaviTextures(long j, int i, int i2, int i3, int i4, int i5);

    public GLNaviOverlay(int i, IAMap iAMap, int i2) {
        super(i, iAMap, i2);
        this.mNativeInstance = iAMap.createGLOverlay(EAMapOverlayTpye.AMAPOVERLAY_NAVI.ordinal());
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        if (this.mNativeInstance != 0) {
            GLMapEngine.destoryOverlay(this.mEngineID, this.mNativeInstance);
        }
    }

    public void setArcInfo(int i, int i2, int i3, int i4) {
        final int i5 = i;
        final int i6 = i2;
        final int i7 = i3;
        final int i8 = i4;
        this.mGLMapView.queueEvent(new Runnable() {
            public void run() {
                GLNaviOverlay.nativeSetArcInfo(GLNaviOverlay.this.mNativeInstance, i5, i6, i7, i8);
            }
        });
    }

    public void setArcColorsAndAngles(int i, int i2, int i3, int i4, int i5) {
        nativeSetArcColorsAndAngles(this.mNativeInstance, i, i2, i3, i4, i5);
    }

    public void setDirIndicatorAngle(int i) {
        nativeSetDirIndicatorAngle(this.mNativeInstance, i);
    }

    public void SetNaviTexture(int i, int i2, int i3, int i4, int i5) {
        nativeSetNaviTextures(this.mNativeInstance, i5, i3, i, i2, i4);
        if (this.mGLMapView != null) {
            this.mGLMapView.requestRender();
        }
    }

    public void setEndLineTexture(int i, int i2, int i3) {
        nativeSetNaviEndLine(this.mNativeInstance, i3, i2, i);
    }

    public void setEndPoint(int i, int i2) {
        nativeSetEndPoint(this.mNativeInstance, i, i2);
    }

    public void setCarPosition(int i, int i2, int i3) {
        if (this.mNativeInstance != 0) {
            nativeSetCarPosition(this.mNativeInstance, i, i2, 0, i3);
        }
        this.mPx = i;
        this.mPy = i2;
        this.mBearing = i3;
    }

    public void setCarAnimationTime(int i) {
        if (this.mNativeInstance != 0) {
            nativeSetCarAnimationTime(this.mNativeInstance, i);
        }
    }

    public Point getCarPosition() {
        return new Point(this.mPx, this.mPy);
    }

    public int getCarAngle() {
        return this.mBearing;
    }
}
