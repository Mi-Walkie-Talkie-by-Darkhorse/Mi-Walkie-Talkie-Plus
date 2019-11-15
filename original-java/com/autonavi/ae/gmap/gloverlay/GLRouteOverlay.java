package com.autonavi.ae.gmap.gloverlay;

import com.autonavi.ae.gmap.gloverlay.GLOverlay.EAMapOverlayTpye;
import com.autonavi.amap.mapcore.interfaces.IAMap;

public class GLRouteOverlay extends GLLineOverlay {
    public static final int AMAPOVERLAY_ROUTE_CHARGE = 1;
    public static final int AMAPOVERLAY_ROUTE_CIMMUTE = 3;
    public static final int AMAPOVERLAY_ROUTE_LIMIT = 2;
    public static final int AMAPOVERLAY_ROUTE_NORMAL = 0;
    public static final int AMAPOVERLAY_ROUTE_WRONG = 4;

    private static native void nativeAddRouteItem(long j, int i, long[] jArr, int i2, long j2, int i3);

    /* access modifiers changed from: private */
    public static native void nativeAddRouteName(long j);

    private static native long nativeCreateRouteData(long j);

    private static native long nativeCreateRouteParams();

    private static native void nativeDestoryRouteData(long j);

    private static native void nativeDestoryRouteParams(long j);

    /* access modifiers changed from: private */
    public static native void nativeRemoveRouteName(long j);

    private static native void nativeSetRouteParamsBool(long j, boolean z, boolean z2, boolean z3, boolean z4);

    private static native void nativeSetRouteParamsCapTextureInfo(long j, float f, float f2, float f3, float f4);

    private static native void nativeSetRouteParamsTextureInfo(long j, float f, float f2, float f3, float f4, float f5, float f6);

    private static native void nativeSetRouteParamsWAC(long j, int i, int i2, int i3, int i4, int i5, int i6);

    public GLRouteOverlay(int i, IAMap iAMap, int i2) {
        super(i, iAMap, i2, true);
        this.mNativeInstance = iAMap.createGLOverlay(EAMapOverlayTpye.AMAPOVERLAY_ROUTE.ordinal());
    }

    private void setRouteColorWithParams(long j, GLRouteProperty gLRouteProperty) {
        if (gLRouteProperty != null) {
            nativeSetRouteParamsTextureInfo(j, gLRouteProperty.mX1, gLRouteProperty.mY1, gLRouteProperty.mX2, gLRouteProperty.mY2, gLRouteProperty.mGLStart, gLRouteProperty.mTextureLen);
            if (gLRouteProperty.isUseCap) {
                nativeSetRouteParamsCapTextureInfo(j, gLRouteProperty.mCapX1, gLRouteProperty.mCapY1, gLRouteProperty.mCapX2, gLRouteProperty.mCapY2);
            }
            nativeSetRouteParamsWAC(j, gLRouteProperty.euRouteTexture.ordinal(), gLRouteProperty.mLineWidth * 4, gLRouteProperty.mFilledColor, gLRouteProperty.mBgColor, gLRouteProperty.mFilledResId, gLRouteProperty.mBgResId);
            nativeSetRouteParamsBool(j, gLRouteProperty.isLineExtract, gLRouteProperty.isUseColor, gLRouteProperty.isUseCap, gLRouteProperty.isCanCovered);
        }
    }

    public void addRouteItem(int i, GLRouteProperty[] gLRoutePropertyArr, boolean z, long j, int i2, boolean z2) {
        if (this.mNativeInstance != 0 && gLRoutePropertyArr != null) {
            if (gLRoutePropertyArr == null || gLRoutePropertyArr.length != 0) {
                int length = gLRoutePropertyArr.length;
                long[] jArr = new long[length];
                int i3 = 0;
                if (z) {
                    i3 = 1;
                }
                for (int i4 = 0; i4 < length; i4++) {
                    jArr[i4] = nativeCreateRouteParams();
                    setRouteColorWithParams(jArr[i4], gLRoutePropertyArr[i4]);
                }
                nativeAddRouteItem(this.mNativeInstance, i, jArr, i3, j, i2);
                for (int i5 = 0; i5 < length; i5++) {
                    nativeDestoryRouteParams(jArr[i5]);
                }
                final boolean z3 = z2;
                this.mGLMapView.queueEvent(new Runnable() {
                    public void run() {
                        GLRouteOverlay.nativeAddRouteName(GLRouteOverlay.this.mNativeInstance);
                        if (z3) {
                            GLRouteOverlay.this.mGLMapView.requestRender();
                        }
                    }
                });
            }
        }
    }

    public void removeRouteName(final boolean z) {
        if (this.mNativeInstance != 0) {
            this.mGLMapView.queueEvent(new Runnable() {
                public void run() {
                    GLRouteOverlay.nativeRemoveRouteName(GLRouteOverlay.this.mNativeInstance);
                    if (z) {
                        GLRouteOverlay.this.mGLMapView.requestRender();
                    }
                }
            });
        }
    }
}
