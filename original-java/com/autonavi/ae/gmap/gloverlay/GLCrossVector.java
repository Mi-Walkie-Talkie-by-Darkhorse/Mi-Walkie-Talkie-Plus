package com.autonavi.ae.gmap.gloverlay;

import android.graphics.Rect;
import com.autonavi.ae.gmap.gloverlay.GLOverlay.EAMapOverlayTpye;
import com.autonavi.amap.mapcore.interfaces.IAMap;

public class GLCrossVector extends GLOverlay {

    public static class AVectorCrossAttr {
        public boolean dayMode = true;
        public int fArrowBorderWidth;
        public int fArrowLineWidth;
        public int fDashLineWidth;
        public int fImportBorderWidth;
        public int fImportLineWidth;
        public int fUnImportBorderWidth;
        public int fUnImportLineWidth;
        public int nAngle;
        public int nCenterX;
        public int nCenterY;
        public int stAreaColor;
        public Rect stAreaRect;
        public int stArrowBorderColor;
        public int stArrowLineColor;
        public int stDashLineColor;
        public int stImportBorderColor;
        public int stImportLineColor;
        public Rect stRectMax;
        public Rect stRectMin;
        public int stUnImportBorderColor;
        public int stUnImportLineColor;
    }

    public static class AVectorCrossLink {
        public int nCount = 0;
        public AVectorCrossLinkAttr stAttr = new AVectorCrossLinkAttr();
        public int[] xs;
        public int[] ys;
        public int[] zs;
    }

    public static class AVectorCrossLinkAttr {
        public int IsExitLink = 0;
        public int IsRoute = 0;
        public int nFormway = 0;
        public int nRoadClass = 0;
    }

    private static native void nativeAddVectorCar(long j, int i, int i2, int i3);

    private static native int nativeAddVectorData(long j, int[] iArr, byte[] bArr);

    private static native void nativeAddVectorItem(long j, int[] iArr, int[] iArr2);

    private static native void nativeAddVectorRemainDis(long j, int i);

    private static native void nativeSetArrowResId(long j, boolean z, int i);

    private static native void nativeSetCarResId(long j, int i);

    private static native void nativeSetRoadResId(long j, boolean z, int i);

    private static native void nativeSetSkyResId(long j, boolean z, int i);

    public GLCrossVector(int i, IAMap iAMap, int i2) {
        super(i, iAMap, i2);
        this.mNativeInstance = iAMap.createGLOverlay(EAMapOverlayTpye.AMAPOVERLAY_VECTOR.ordinal());
    }

    private int copy2Inter(int[] iArr, int i, AVectorCrossLink aVectorCrossLink) {
        int i2 = aVectorCrossLink.nCount;
        System.arraycopy(aVectorCrossLink.xs, 0, iArr, i, i2);
        int i3 = i + i2;
        System.arraycopy(aVectorCrossLink.ys, 0, iArr, i3, i2);
        int i4 = i3 + i2;
        System.arraycopy(aVectorCrossLink.zs, 0, iArr, i4, i2);
        return i2 + i4;
    }

    public void addVectorItem(AVectorCrossAttr aVectorCrossAttr, AVectorCrossLink[] aVectorCrossLinkArr, int i) {
        int i2 = 1;
        if (aVectorCrossAttr != null && aVectorCrossLinkArr != null && i != 0) {
            int[] iArr = new int[31];
            iArr[0] = aVectorCrossAttr.nCenterX;
            iArr[1] = aVectorCrossAttr.nCenterY;
            iArr[2] = aVectorCrossAttr.stRectMax.left;
            iArr[3] = aVectorCrossAttr.stRectMax.top;
            iArr[4] = aVectorCrossAttr.stRectMax.right;
            iArr[5] = aVectorCrossAttr.stRectMax.bottom;
            iArr[6] = aVectorCrossAttr.stRectMin.left;
            iArr[7] = aVectorCrossAttr.stRectMin.top;
            iArr[8] = aVectorCrossAttr.stRectMin.right;
            iArr[9] = aVectorCrossAttr.stRectMin.bottom;
            iArr[10] = aVectorCrossAttr.nAngle;
            iArr[11] = aVectorCrossAttr.stAreaRect.left;
            iArr[12] = aVectorCrossAttr.stAreaRect.top;
            iArr[13] = aVectorCrossAttr.stAreaRect.right;
            iArr[14] = aVectorCrossAttr.stAreaRect.bottom;
            iArr[15] = aVectorCrossAttr.stAreaColor;
            iArr[16] = aVectorCrossAttr.fImportBorderWidth;
            iArr[17] = aVectorCrossAttr.stImportBorderColor;
            iArr[18] = aVectorCrossAttr.fUnImportBorderWidth;
            iArr[19] = aVectorCrossAttr.stUnImportBorderColor;
            iArr[20] = aVectorCrossAttr.fArrowBorderWidth;
            iArr[21] = aVectorCrossAttr.stArrowBorderColor;
            iArr[22] = aVectorCrossAttr.fImportLineWidth;
            iArr[23] = aVectorCrossAttr.stImportLineColor;
            iArr[24] = aVectorCrossAttr.fUnImportLineWidth;
            iArr[25] = aVectorCrossAttr.stUnImportLineColor;
            iArr[26] = aVectorCrossAttr.fDashLineWidth;
            iArr[27] = aVectorCrossAttr.stDashLineColor;
            iArr[28] = aVectorCrossAttr.fArrowLineWidth;
            iArr[29] = aVectorCrossAttr.stArrowLineColor;
            iArr[30] = aVectorCrossAttr.dayMode ? 1 : 0;
            int i3 = 1;
            for (int i4 = 0; i4 < i; i4++) {
                i3 += (aVectorCrossLinkArr[i4].nCount * 3) + 5;
            }
            int[] iArr2 = new int[i3];
            iArr2[0] = i;
            for (int i5 = 0; i5 < i; i5++) {
                AVectorCrossLink aVectorCrossLink = aVectorCrossLinkArr[i5];
                int i6 = i2 + 1;
                iArr2[i2] = aVectorCrossLink.stAttr.nRoadClass;
                int i7 = i6 + 1;
                iArr2[i6] = aVectorCrossLink.stAttr.nFormway;
                int i8 = i7 + 1;
                iArr2[i7] = aVectorCrossLink.stAttr.IsRoute;
                int i9 = i8 + 1;
                iArr2[i8] = aVectorCrossLink.stAttr.IsExitLink;
                int i10 = i9 + 1;
                iArr2[i9] = aVectorCrossLink.nCount;
                i2 = copy2Inter(iArr2, i10, aVectorCrossLink) + i10;
            }
            nativeAddVectorItem(this.mNativeInstance, iArr, iArr2);
        }
    }

    public boolean addVectorItem(AVectorCrossAttr aVectorCrossAttr, byte[] bArr, int i) {
        int i2;
        if (aVectorCrossAttr == null || bArr == null || i == 0) {
            return false;
        }
        int[] iArr = new int[31];
        iArr[0] = aVectorCrossAttr.nCenterX;
        iArr[1] = aVectorCrossAttr.nCenterY;
        iArr[2] = aVectorCrossAttr.stRectMax.left;
        iArr[3] = aVectorCrossAttr.stRectMax.top;
        iArr[4] = aVectorCrossAttr.stRectMax.right;
        iArr[5] = aVectorCrossAttr.stRectMax.bottom;
        iArr[6] = aVectorCrossAttr.stRectMin.left;
        iArr[7] = aVectorCrossAttr.stRectMin.top;
        iArr[8] = aVectorCrossAttr.stRectMin.right;
        iArr[9] = aVectorCrossAttr.stRectMin.bottom;
        iArr[10] = aVectorCrossAttr.nAngle;
        iArr[11] = aVectorCrossAttr.stAreaRect.left;
        iArr[12] = aVectorCrossAttr.stAreaRect.top;
        iArr[13] = aVectorCrossAttr.stAreaRect.right;
        iArr[14] = aVectorCrossAttr.stAreaRect.bottom;
        iArr[15] = aVectorCrossAttr.stAreaColor;
        iArr[16] = aVectorCrossAttr.fImportBorderWidth;
        iArr[17] = aVectorCrossAttr.stImportBorderColor;
        iArr[18] = aVectorCrossAttr.fUnImportBorderWidth;
        iArr[19] = aVectorCrossAttr.stUnImportBorderColor;
        iArr[20] = aVectorCrossAttr.fArrowBorderWidth;
        iArr[21] = aVectorCrossAttr.stArrowBorderColor;
        iArr[22] = aVectorCrossAttr.fImportLineWidth;
        iArr[23] = aVectorCrossAttr.stImportLineColor;
        iArr[24] = aVectorCrossAttr.fUnImportLineWidth;
        iArr[25] = aVectorCrossAttr.stUnImportLineColor;
        iArr[26] = aVectorCrossAttr.fDashLineWidth;
        iArr[27] = aVectorCrossAttr.stDashLineColor;
        iArr[28] = aVectorCrossAttr.fArrowLineWidth;
        iArr[29] = aVectorCrossAttr.stArrowLineColor;
        if (aVectorCrossAttr.dayMode) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        iArr[30] = i2;
        if (nativeAddVectorData(this.mNativeInstance, iArr, bArr) != 0) {
            return false;
        }
        return true;
    }

    public void addVectorRemainDis(int i) {
        nativeAddVectorRemainDis(this.mNativeInstance, i);
    }

    public void addVectorCar(int i, int i2, int i3) {
        nativeAddVectorCar(this.mNativeInstance, i, i2, i3);
    }

    public void setRoadResId(boolean z, int i) {
        nativeSetRoadResId(this.mNativeInstance, z, i);
    }

    public void setArrowResId(boolean z, int i) {
        nativeSetArrowResId(this.mNativeInstance, z, i);
    }

    public void setCarResId(int i) {
        nativeSetCarResId(this.mNativeInstance, i);
    }

    public void setSkyResId(boolean z, int i) {
        nativeSetSkyResId(this.mNativeInstance, z, i);
    }
}
