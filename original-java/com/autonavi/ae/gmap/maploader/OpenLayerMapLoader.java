package com.autonavi.ae.gmap.maploader;

import com.autonavi.ae.gmap.GLMapEngine;
import com.autonavi.ae.gmap.utils.GLConvertUtil;
import java.net.HttpURLConnection;
import java.util.ArrayList;

public class OpenLayerMapLoader extends BaseMapLoader {
    static final int DATA_OPENLAYER_TYPEGEOMETRY = 17;
    private static ArrayList<DownTilesInfor> g_arrLayerDownBuffer = new ArrayList<>();
    private byte[] mArrblayerid;
    private byte[] mArrbsublayerid;
    private int mLayerid;
    private String mStrGridParams;
    private String mStrPath;
    private String mStrSeverAdd;
    private int mSubLayerid;

    protected class DownTilesInfor {
        String mStrTile;
        int mSubLayerID;

        protected DownTilesInfor() {
        }
    }

    public OpenLayerMapLoader(int i, GLMapEngine gLMapEngine, String str, int i2, int i3, int i4) {
        super(i);
        this.mGLMapEngine = gLMapEngine;
        int indexOf = str.indexOf("://");
        if (indexOf >= 0) {
            this.mDataSource = i2;
            int indexOf2 = str.indexOf("/", indexOf + 4);
            this.mStrSeverAdd = str.substring(0, indexOf2 + 1);
            this.mStrPath = str.substring(indexOf2 + 1);
            if (this.mStrPath.indexOf(63) < 0) {
                this.mStrPath += '?';
            }
            this.mLayerid = i3;
            this.mArrblayerid = GLConvertUtil.convertInt(this.mLayerid);
            this.mSubLayerid = i4;
            this.mArrbsublayerid = GLConvertUtil.convertInt(i4);
        }
    }

    /* access modifiers changed from: protected */
    public boolean isExistAndAdd(int i, String str) {
        synchronized (g_arrLayerDownBuffer) {
            for (int i2 = 0; i2 < g_arrLayerDownBuffer.size(); i2++) {
                if (((DownTilesInfor) g_arrLayerDownBuffer.get(i2)).mSubLayerID == i && str.compareTo(((DownTilesInfor) g_arrLayerDownBuffer.get(i2)).mStrTile) == 0) {
                    return true;
                }
            }
            DownTilesInfor downTilesInfor = new DownTilesInfor();
            downTilesInfor.mSubLayerID = i;
            downTilesInfor.mStrTile = str;
            g_arrLayerDownBuffer.add(downTilesInfor);
            return false;
        }
    }

    public static void removeDownTile(int i, String str) {
        synchronized (g_arrLayerDownBuffer) {
            for (int i2 = 0; i2 < g_arrLayerDownBuffer.size(); i2++) {
                if (((DownTilesInfor) g_arrLayerDownBuffer.get(i2)).mSubLayerID == i && str.compareTo(((DownTilesInfor) g_arrLayerDownBuffer.get(i2)).mStrTile) == 0) {
                    g_arrLayerDownBuffer.remove(i2);
                    return;
                }
            }
        }
    }

    public boolean createDownUrl(String[] strArr) {
        int i;
        if (17 == this.mDataSource) {
            i = 4;
        } else {
            i = 1;
        }
        this.mStrGridParams = String.format("type=50&mapdataver=6&aetraffic=8&lyrtype=%d&id=%d&mesh=", new Object[]{Integer.valueOf(i), Integer.valueOf(this.mSubLayerid)});
        String str = "";
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (!isExistAndAdd(this.mSubLayerid, strArr[i2])) {
                MapSourceGridData obtain = MapSourceGridData.obtain();
                obtain.setGridData(strArr[i2], this.mDataSource, 0, 0);
                this.mMapTiles.add(obtain);
                str = (str + strArr[i2]) + ';';
            }
        }
        if (str.length() > 1) {
            this.mStrGridParams += str.substring(0, str.length() - 1);
        }
        if (str.length() > 1) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public String getMapAddress() {
        return this.mStrSeverAdd;
    }

    /* access modifiers changed from: protected */
    public String getMapServerPath() {
        return this.mStrPath;
    }

    /* access modifiers changed from: protected */
    public String getGridParams() {
        this.mStrGridParams += "&channel=amapapi";
        return this.mStrGridParams;
    }

    /* access modifiers changed from: protected */
    public void addRequestHeader(HttpURLConnection httpURLConnection) {
    }

    /* access modifiers changed from: protected */
    public boolean processReceivedDataHeader() {
        if (this.mReceivedDataSize <= 7) {
            return false;
        }
        if (GLConvertUtil.getInt(this.mReceivedDataBuffer, 0) != 0) {
            doCancel();
            return false;
        }
        this.mReceivedDataSize -= 8;
        if (this.mReceivedDataSize > 0) {
            GLConvertUtil.moveArray(this.mReceivedDataBuffer, 8, this.mReceivedDataBuffer, 0, this.mReceivedDataSize);
        }
        this.mNextImgDataLength = 0;
        this.isReceivedHeader = true;
        super.processReceivedDataV4();
        return true;
    }

    /* access modifiers changed from: protected */
    public void putMapData(byte[] bArr, int i, int i2, int i3, int i4, String str) {
        byte[] bArr2 = new byte[(i2 + 8)];
        System.arraycopy(this.mArrblayerid, 0, bArr2, 0, 4);
        System.arraycopy(this.mArrbsublayerid, 0, bArr2, 4, 4);
        System.arraycopy(bArr, i, bArr2, 8, i2);
        if (this.mGLMapEngine != null) {
            this.mGLMapEngine.putMapData(this.mEngineID, bArr2, 0, i2 + 8, i3, i4);
            this.mGLMapEngine.resetRenderTime(this.mEngineID);
        }
    }

    /* access modifiers changed from: protected */
    public void downLoadOver(int i) {
        int size = this.mMapTiles.size();
        for (int i2 = 0; i2 < size; i2++) {
            removeDownTile(this.mSubLayerid, ((MapSourceGridData) this.mMapTiles.get(i2)).getGridName());
        }
    }

    /* access modifiers changed from: protected */
    public void processReceivedDataByType() {
        super.processReceivedDataV4();
    }

    /* access modifiers changed from: protected */
    public void processReceivedVersion() {
    }

    public boolean isRequestValid() {
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean isNeedReturn() {
        return false;
    }
}
