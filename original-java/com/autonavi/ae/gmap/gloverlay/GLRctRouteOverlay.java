package com.autonavi.ae.gmap.gloverlay;

import com.amap.api.mapcore.util.p;
import com.autonavi.ae.gmap.gloverlay.GLOverlay.EAMapOverlayTpye;
import com.autonavi.ae.gmap.utils.GLFileUtil;
import com.autonavi.ae.gmap.utils.GLMapUtil;
import com.autonavi.amap.mapcore.interfaces.IAMap;
import java.io.File;

public class GLRctRouteOverlay extends GLOverlay {

    public static class AmapNaviInfo {
        public int n3DEDLinkNumber;
        public int n3DSTLinkNumber;
        public long n64routeRemainDistance;
        public long n64routeRemainTime;
        public int ncurrentLinkNumber;
        public int ncurrentSegNumber;
        public int nmaneuverID;
        public int nsegmentLength;
        public int nsegmentRemainDistance;
        public int nsegmentRemainTime;
        public int ntype;
    }

    public static class AmapRctPolyline {
        public int nCount;
        public int nIndex;
        public int[] xs;
        public int[] ys;
        public int[] zs;
    }

    public static class AmapRctRoutePath {
        public int n2DLinkNum;
        public int n3DLinkNum;
        public AmapRctPolyline[] p2DLink;
        public AmapRctPolyline[] p3DLink;
    }

    private static native int nativeSetGpsPos(long j, int i, int i2, int i3, float f);

    private static native int nativeSetParam(long j, int i, int i2, int i3, int i4, int i5);

    private static native int nativeSetRCTFlyRoute(long j, byte[] bArr, int i);

    private static native int nativeSetRCTStyleParam(long j, byte[] bArr);

    private static native int nativeUpdataCarPos(long j, float[] fArr);

    private static native void nativeUpdataNaviInfo(long j, int[] iArr);

    public GLRctRouteOverlay(int i, IAMap iAMap, int i2) {
        super(i, iAMap, i2);
        this.mNativeInstance = iAMap.createGLOverlay(EAMapOverlayTpye.AMAPOVERLAY_RCTROUTE.ordinal());
    }

    private int copy2Inter(int[] iArr, int i, AmapRctPolyline[] amapRctPolylineArr, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = amapRctPolylineArr[i3].nCount;
            int i5 = i + 1;
            iArr[i] = i4;
            int i6 = i5 + 1;
            iArr[i5] = amapRctPolylineArr[i3].nIndex;
            System.arraycopy(amapRctPolylineArr[i3].xs, 0, iArr, i6, i4);
            int i7 = i6 + i4;
            System.arraycopy(amapRctPolylineArr[i3].ys, 0, iArr, i7, i4);
            int i8 = i7 + i4;
            System.arraycopy(amapRctPolylineArr[i3].zs, 0, iArr, i8, i4);
            i = i8 + i4;
        }
        return i;
    }

    public int SetRCTFlyRoute(byte[] bArr, int i) {
        return nativeSetRCTFlyRoute(this.mNativeInstance, bArr, i);
    }

    public int SetRCTFlyDirection(boolean z) {
        String str;
        byte[] decodeAssetResData;
        if (z) {
            str = "3dlandscape.xml";
        } else {
            str = "3dportrait.xml";
        }
        File file = new File(this.mGLMapView.getMapCacheMgr().getMapCachePath() + str);
        if (file.exists()) {
            decodeAssetResData = GLFileUtil.readFileContents(file.getAbsolutePath());
        } else {
            decodeAssetResData = GLMapUtil.decodeAssetResData(p.a, "map_assets/" + str);
        }
        return nativeSetRCTStyleParam(this.mNativeInstance, decodeAssetResData);
    }

    public int navistart() {
        return nativeSetParam(this.mNativeInstance, 16, 0, 0, 0, 0);
    }

    public int navipause() {
        return nativeSetParam(this.mNativeInstance, 17, 0, 0, 0, 0);
    }

    public int naviresume() {
        return nativeSetParam(this.mNativeInstance, 18, 0, 0, 0, 0);
    }

    public int navistop() {
        return nativeSetParam(this.mNativeInstance, 19, 0, 0, 0, 0);
    }

    public int SetNaviMode(int i) {
        return nativeSetParam(this.mNativeInstance, 0, i, 0, 0, 0);
    }

    public void UpdataNaviInfo(AmapNaviInfo amapNaviInfo) {
        nativeUpdataNaviInfo(this.mNativeInstance, new int[]{amapNaviInfo.ntype, amapNaviInfo.nmaneuverID, (int) (amapNaviInfo.n64routeRemainDistance & -1), (int) ((amapNaviInfo.n64routeRemainDistance >> 32) & -1), (int) (amapNaviInfo.n64routeRemainTime & -1), (int) ((amapNaviInfo.n64routeRemainTime >> 32) & -1), amapNaviInfo.nsegmentRemainDistance, amapNaviInfo.nsegmentLength, amapNaviInfo.nsegmentRemainTime, amapNaviInfo.ncurrentSegNumber, amapNaviInfo.ncurrentLinkNumber, amapNaviInfo.n3DSTLinkNumber, amapNaviInfo.n3DEDLinkNumber});
    }

    public int SetGpsPos(int i, int i2, int i3, float f) {
        return nativeSetGpsPos(this.mNativeInstance, i, i2, i3, f);
    }

    public int UpdataCarPos(float[] fArr) {
        return nativeUpdataCarPos(this.mNativeInstance, fArr);
    }
}
