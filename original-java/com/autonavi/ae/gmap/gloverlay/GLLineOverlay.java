package com.autonavi.ae.gmap.gloverlay;

import com.autonavi.ae.gmap.GLMapEngine;
import com.autonavi.ae.gmap.glinterface.GLGeoPoint;
import com.autonavi.ae.gmap.gloverlay.GLOverlay.EAMapOverlayTpye;
import com.autonavi.amap.mapcore.interfaces.IAMap;

public class GLLineOverlay extends GLOverlay {
    private int mBgColor = 0;
    private int mBgResID = -1;
    private boolean mCanCovered = true;

    public static class TextureGenedInfo {
        public boolean m_genMimps = false;
        public boolean m_isRepeat = false;
    }

    private static native void nativeAddPolylineItem(long j, long j2);

    protected static native long nativeCreatePolyLineParams();

    protected static native void nativeDestoryPolyLineParams(long j);

    private static native void nativeSetPolyLineParamsBool(long j, boolean z, boolean z2, boolean z3, boolean z4);

    private static native void nativeSetPolyLineParamsCapTextureInfo(long j, float f, float f2, float f3, float f4);

    private static native void nativeSetPolyLineParamsPoints(long j, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4);

    private static native void nativeSetPolyLineParamsPointsWithLonLat(long j, int[] iArr);

    private static native void nativeSetPolyLineParamsTextureInfo(long j, float f, float f2, float f3, float f4, float f5, float f6);

    private static native void nativeSetPolyLineParamsWAC(long j, int i, int i2, int i3, int i4, int i5);

    public GLLineOverlay(int i, IAMap iAMap, int i2, boolean z) {
        super(i, iAMap, i2);
    }

    public GLLineOverlay(int i, IAMap iAMap, int i2) {
        super(i, iAMap, i2);
        this.mNativeInstance = iAMap.createGLOverlay(EAMapOverlayTpye.AMAPOVERLAY_POLYLINE.ordinal());
    }

    private void addLineItem(GLGeoPoint[] gLGeoPointArr, int i, int i2, int i3, int i4, int i5, boolean z) {
        addLineItem(gLGeoPointArr, i, i2, i3, i4, i5, z, this.mCanCovered);
    }

    private void doAddLineItemWithLonLat(int[] iArr, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        long nativeCreatePolyLineParams = nativeCreatePolyLineParams();
        nativeSetPolyLineParamsPointsWithLonLat(nativeCreatePolyLineParams, iArr);
        setLineColorWithParams(nativeCreatePolyLineParams, i, i2, i3, i4, i5, z, z2);
        nativeAddPolylineItem(this.mNativeInstance, nativeCreatePolyLineParams);
        nativeDestoryPolyLineParams(nativeCreatePolyLineParams);
        if (true == z3) {
            this.mGLMapView.requestRender();
        }
    }

    public void addLineItemWithLonLat(int[] iArr, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        doAddLineItemWithLonLat(iArr, i, i2, i3, i4, i5, z, z2, true);
    }

    public void addLineItemWithLonLat(int[] iArr, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        doAddLineItemWithLonLat(iArr, i, i2, i3, i4, i5, z, z2, z3);
    }

    private void doAddLineItemWithP20(int[] iArr, int[] iArr2, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        if (this.mNativeInstance != 0) {
            int length = iArr.length;
            if (length >= 2 && length == iArr2.length) {
                long nativeCreatePolyLineParams = nativeCreatePolyLineParams();
                nativeSetPolyLineParamsPoints(nativeCreatePolyLineParams, iArr, iArr2, null, null);
                setLineColorWithParams(nativeCreatePolyLineParams, i, i2, i3, i4, i5, z, z2);
                nativeAddPolylineItem(this.mNativeInstance, nativeCreatePolyLineParams);
                nativeDestoryPolyLineParams(nativeCreatePolyLineParams);
                if (true == z3) {
                    this.mGLMapView.requestRender();
                }
            }
        }
    }

    public void addLineItemWithP20(int[] iArr, int[] iArr2, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        doAddLineItemWithP20(iArr, iArr2, i, i2, i3, i4, i5, z, z2, true);
    }

    public void addLineItemWithP20(int[] iArr, int[] iArr2, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        doAddLineItemWithP20(iArr, iArr2, i, i2, i3, i4, i5, z, z2, z3);
    }

    private void doAddLineItem(GLGeoPoint[] gLGeoPointArr, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        if (this.mNativeInstance != 0) {
            int length = gLGeoPointArr.length;
            if (length >= 2) {
                int[] iArr = new int[length];
                int[] iArr2 = new int[length];
                for (int i6 = 0; i6 < length; i6++) {
                    if (gLGeoPointArr[i6] != null) {
                        iArr[i6] = gLGeoPointArr[i6].x;
                        iArr2[i6] = gLGeoPointArr[i6].y;
                    }
                }
                long nativeCreatePolyLineParams = nativeCreatePolyLineParams();
                nativeSetPolyLineParamsPoints(nativeCreatePolyLineParams, iArr, iArr2, null, null);
                setLineColorWithParams(nativeCreatePolyLineParams, i, i2, i3, i4, i5, z, z2);
                nativeAddPolylineItem(this.mNativeInstance, nativeCreatePolyLineParams);
                nativeDestoryPolyLineParams(nativeCreatePolyLineParams);
                if (true == z3) {
                    this.mGLMapView.requestRender();
                }
            }
        }
    }

    public void addLineItem(GLGeoPoint[] gLGeoPointArr, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        doAddLineItem(gLGeoPointArr, i, i2, i3, i4, i5, z, z2, true);
    }

    public void addLineItem(GLGeoPoint[] gLGeoPointArr, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        doAddLineItem(gLGeoPointArr, i, i2, i3, i4, i5, z, z2, z3);
    }

    /* access modifiers changed from: protected */
    public void setLineColorWithParams(long j, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        float f = (float) (i2 * 4);
        if (i3 == 3000 || i3 == 3050) {
            nativeSetPolyLineParamsTextureInfo(j, 0.05f, 0.5f, 0.95f, 0.5f, 0.0f, 32.0f);
            nativeSetPolyLineParamsCapTextureInfo(j, 0.05f, 0.5f, 0.95f, 0.75f);
            nativeSetPolyLineParamsWAC(j, (int) f, i, i5, i3, i4);
            nativeSetPolyLineParamsBool(j, z, true, true, z2);
        } else if (i3 < 3000) {
            nativeSetPolyLineParamsTextureInfo(j, 0.0f, 0.5f, 1.0f, 0.5f, 0.0f, 32.0f);
            nativeSetPolyLineParamsCapTextureInfo(j, 0.0f, 0.5f, 1.0f, 0.75f);
            nativeSetPolyLineParamsWAC(j, (int) f, i, i5, i3, i4);
            nativeSetPolyLineParamsBool(j, z, false, true, z2);
        } else if (i3 < 3003) {
            nativeSetPolyLineParamsTextureInfo(j, 0.0f, 1.0f, 0.5f, 0.0f, 0.0f, 64.0f);
            nativeSetPolyLineParamsCapTextureInfo(j, 0.5f, 0.25f, 1.0f, 0.6f);
            nativeSetPolyLineParamsWAC(j, (int) f, i, i5, i3, i4);
            nativeSetPolyLineParamsBool(j, z, false, true, z2);
        } else if (i3 == 3003) {
            nativeSetPolyLineParamsTextureInfo(j, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 64.0f);
            nativeSetPolyLineParamsWAC(j, (int) f, i, i5, i3, i4);
            nativeSetPolyLineParamsBool(j, z, false, false, z2);
        } else if (3010 > i3 && i3 > 3003) {
            nativeSetPolyLineParamsTextureInfo(j, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 64.0f);
            nativeSetPolyLineParamsWAC(j, (int) f, i, i5, i3, i4);
            nativeSetPolyLineParamsBool(j, z, false, false, z2);
        } else if (i3 >= 3010) {
            nativeSetPolyLineParamsTextureInfo(j, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 32.0f);
            nativeSetPolyLineParamsWAC(j, (int) f, i, i5, i3, i4);
            nativeSetPolyLineParamsBool(j, z, true, false, z2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void addLineItem(com.autonavi.ae.gmap.gloverlay.GLLineProperty r9) {
        /*
            r8 = this;
            r5 = 0
            r0 = 0
            long r2 = r8.mNativeInstance
            r6 = 0
            int r1 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r1 == 0) goto L_0x0010
            if (r9 == 0) goto L_0x0010
            com.autonavi.ae.gmap.glinterface.GLGeoPoint[] r1 = r9.mGeoPoints
            if (r1 != 0) goto L_0x0011
        L_0x0010:
            return
        L_0x0011:
            com.autonavi.ae.gmap.glinterface.GLGeoPoint[] r1 = r9.mGeoPoints
            int r4 = r1.length
            r1 = 2
            if (r4 < r1) goto L_0x0010
            int[] r2 = new int[r4]
            int[] r3 = new int[r4]
            r1 = r0
        L_0x001c:
            if (r1 >= r4) goto L_0x0037
            com.autonavi.ae.gmap.glinterface.GLGeoPoint[] r6 = r9.mGeoPoints
            r6 = r6[r1]
            if (r6 == 0) goto L_0x0034
            com.autonavi.ae.gmap.glinterface.GLGeoPoint[] r6 = r9.mGeoPoints
            r6 = r6[r1]
            int r6 = r6.x
            r2[r1] = r6
            com.autonavi.ae.gmap.glinterface.GLGeoPoint[] r6 = r9.mGeoPoints
            r6 = r6[r1]
            int r6 = r6.y
            r3[r1] = r6
        L_0x0034:
            int r1 = r1 + 1
            goto L_0x001c
        L_0x0037:
            com.autonavi.ae.gmap.glinterface.GLGeoPoint[] r1 = r9.mPassPoints
            if (r1 == 0) goto L_0x0059
            com.autonavi.ae.gmap.glinterface.GLGeoPoint[] r1 = r9.mPassPoints
            int r1 = r1.length
            if (r1 <= 0) goto L_0x0059
            int[] r4 = new int[r1]
            int[] r5 = new int[r1]
        L_0x0044:
            if (r0 >= r1) goto L_0x005a
            com.autonavi.ae.gmap.glinterface.GLGeoPoint[] r6 = r9.mPassPoints
            r6 = r6[r0]
            int r6 = r6.x
            r4[r0] = r6
            com.autonavi.ae.gmap.glinterface.GLGeoPoint[] r6 = r9.mPassPoints
            r6 = r6[r0]
            int r6 = r6.y
            r5[r0] = r6
            int r0 = r0 + 1
            goto L_0x0044
        L_0x0059:
            r4 = r5
        L_0x005a:
            long r0 = nativeCreatePolyLineParams()
            nativeSetPolyLineParamsPoints(r0, r2, r3, r4, r5)
            r8.setLineColorWithParams(r0, r9)
            long r2 = r8.mNativeInstance
            nativeAddPolylineItem(r2, r0)
            nativeDestoryPolyLineParams(r0)
            boolean r0 = r9.isRefreshMap
            if (r0 == 0) goto L_0x0010
            com.autonavi.amap.mapcore.interfaces.IAMap r0 = r8.mGLMapView
            r0.requestRender()
            goto L_0x0010
        */
        throw new UnsupportedOperationException("Method not decompiled: com.autonavi.ae.gmap.gloverlay.GLLineOverlay.addLineItem(com.autonavi.ae.gmap.gloverlay.GLLineProperty):void");
    }

    /* access modifiers changed from: protected */
    public void setLineColorWithParams(long j, GLLineProperty gLLineProperty) {
        if (gLLineProperty != null) {
            nativeSetPolyLineParamsTextureInfo(j, gLLineProperty.mX1, gLLineProperty.mY1, gLLineProperty.mX2, gLLineProperty.mY2, gLLineProperty.mGLStart, gLLineProperty.mTextureLen);
            if (gLLineProperty.isUseCap) {
                nativeSetPolyLineParamsCapTextureInfo(j, gLLineProperty.mCapX1, gLLineProperty.mCapY1, gLLineProperty.mCapX2, gLLineProperty.mCapY2);
            }
            nativeSetPolyLineParamsWAC(j, gLLineProperty.mLineWidth * 4, gLLineProperty.mFilledColor, gLLineProperty.mBgColor, gLLineProperty.mFilledResId, gLLineProperty.mBgResId);
            nativeSetPolyLineParamsBool(j, gLLineProperty.isLineExtract, gLLineProperty.isUseColor, gLLineProperty.isUseCap, gLLineProperty.isCanCovered);
        }
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        if (this.mNativeInstance != 0) {
            GLMapEngine.destoryOverlay(this.mEngineID, this.mNativeInstance);
        }
        super.finalize();
    }

    public static TextureGenedInfo CheckRepeat(int i) {
        TextureGenedInfo textureGenedInfo = new TextureGenedInfo();
        if (i == 3000) {
            textureGenedInfo.m_genMimps = true;
            textureGenedInfo.m_isRepeat = false;
        } else if (i < 3000) {
            textureGenedInfo.m_genMimps = false;
            textureGenedInfo.m_isRepeat = false;
        } else if (i < 3003) {
            textureGenedInfo.m_genMimps = false;
            textureGenedInfo.m_isRepeat = true;
        } else if (i == 3003) {
            textureGenedInfo.m_genMimps = false;
            textureGenedInfo.m_isRepeat = true;
        } else if (3010 > i && i > 3003) {
            textureGenedInfo.m_genMimps = false;
            textureGenedInfo.m_isRepeat = true;
        } else if (i >= 3010 && i < 10000) {
            textureGenedInfo.m_genMimps = false;
            textureGenedInfo.m_isRepeat = true;
        } else if (i >= 10000) {
            textureGenedInfo.m_genMimps = false;
            textureGenedInfo.m_isRepeat = false;
        }
        return textureGenedInfo;
    }
}
