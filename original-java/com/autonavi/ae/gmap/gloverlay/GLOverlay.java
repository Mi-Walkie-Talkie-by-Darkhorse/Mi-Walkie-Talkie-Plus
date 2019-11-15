package com.autonavi.ae.gmap.gloverlay;

import com.autonavi.ae.gmap.GLMapEngine;
import com.autonavi.amap.mapcore.interfaces.IAMap;

public abstract class GLOverlay {
    protected boolean isNightStyle = false;
    protected int mCode;
    protected int mEngineID;
    protected IAMap mGLMapView;
    protected long mNativeInstance = 0;

    public enum EAMapOverlayTpye {
        AMAPOVERLAY_POINT,
        AMAPOVERLAY_POLYLINE,
        AMAPOVERLAY_POLYGON,
        AMAPOVERLAY_NAVI,
        AMAPOVERLAY_GPS,
        AMAPOVERLAY_ARC,
        AMAPOVERLAY_ARROW,
        AMAPOVERLAY_VECTOR,
        AMAPOVERLAY_MODEL,
        AMAPOVERLAY_RCTROUTE,
        AMAPOVERLAY_ROUTE
    }

    private static native int nativeGetCount(long j);

    private static native int nativeGetOverlayPriority(long j);

    private static native int nativeGetSubType(long j);

    private static native int nativeGetType(long j);

    private static native boolean nativeIsClickable(long j);

    private static native boolean nativeIsVisible(long j);

    private static native void nativeRemoveAll(long j);

    private static native void nativeRemoveItem(long j, int i);

    private static native void nativeSetClickable(long j, boolean z);

    private static native void nativeSetMaxDisplayLevel(long j, int i);

    private static native void nativeSetMinDisplayLevel(long j, int i);

    private static native void nativeSetOverlayItemPriority(long j, int i);

    private static native void nativeSetOverlayOnTop(long j, boolean z);

    private static native void nativeSetOverlayPriority(long j, int i);

    private static native void nativeSetShownMaxCount(long j, int i);

    protected static native void nativeSetVisible(long j, boolean z);

    public GLOverlay(int i, IAMap iAMap, int i2) {
        this.mEngineID = i;
        this.mGLMapView = iAMap;
        this.mCode = i2;
        this.mNativeInstance = 0;
    }

    public long getNativeInstatnce() {
        return this.mNativeInstance;
    }

    public int getCode() {
        return this.mCode;
    }

    public int getType() {
        if (this.mNativeInstance == 0) {
            return -1;
        }
        return nativeGetType(this.mNativeInstance);
    }

    public int getSubType() {
        if (this.mNativeInstance == 0) {
            return -1;
        }
        return nativeGetSubType(this.mNativeInstance);
    }

    public void removeItem(int i) {
        if (this.mNativeInstance != 0) {
            nativeRemoveItem(this.mNativeInstance, i);
        }
    }

    public void removeAll() {
        if (this.mNativeInstance != 0) {
            nativeRemoveAll(this.mNativeInstance);
            if (this.mGLMapView != null) {
                this.mGLMapView.setRunLowFrame(false);
            }
        }
    }

    public int getSize() {
        if (this.mNativeInstance == 0) {
            return 0;
        }
        return nativeGetCount(this.mNativeInstance);
    }

    public void setVisible(boolean z) {
        if (this.mNativeInstance != 0) {
            nativeSetVisible(this.mNativeInstance, z);
            this.mGLMapView.setRunLowFrame(false);
        }
    }

    public boolean isVisible() {
        if (this.mNativeInstance == 0) {
            return false;
        }
        return nativeIsVisible(this.mNativeInstance);
    }

    public void setClickable(boolean z) {
        if (this.mNativeInstance != 0) {
            nativeSetClickable(this.mNativeInstance, z);
        }
    }

    public boolean isClickable() {
        if (this.mNativeInstance == 0) {
            return false;
        }
        return nativeIsClickable(this.mNativeInstance);
    }

    public void clearFocus() {
    }

    public void setMaxCountShown(int i) {
        nativeSetShownMaxCount(this.mNativeInstance, i);
    }

    public void setOverlayOnTop(boolean z) {
        nativeSetOverlayOnTop(this.mNativeInstance, z);
    }

    public void setMinDisplayLevel(int i) {
        nativeSetMinDisplayLevel(this.mNativeInstance, i);
    }

    public void setMaxDisplayLevel(int i) {
        nativeSetMaxDisplayLevel(this.mNativeInstance, i);
    }

    public void setOverlayPriority(int i) {
        nativeSetOverlayPriority(this.mNativeInstance, i);
    }

    public int getOverlayPriority() {
        return nativeGetOverlayPriority(this.mNativeInstance);
    }

    public void setOverlayItemPriority(int i) {
        nativeSetOverlayItemPriority(this.mNativeInstance, i);
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        releaseInstance();
        super.finalize();
    }

    public void releaseInstance() {
        if (this.mNativeInstance != 0) {
            GLMapEngine.destoryOverlay(this.mEngineID, this.mNativeInstance);
            this.mNativeInstance = 0;
        }
    }

    public void useNightStyle(boolean z) {
        this.isNightStyle = z;
    }
}
