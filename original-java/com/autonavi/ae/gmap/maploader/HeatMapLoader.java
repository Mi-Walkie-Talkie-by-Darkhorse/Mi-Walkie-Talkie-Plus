package com.autonavi.ae.gmap.maploader;

import android.text.TextUtils;
import com.autonavi.ae.gmap.GLMapEngine;
import com.autonavi.ae.gmap.utils.GLConvertUtil;
import com.autonavi.ae.gmap.utils.GLMapUtil;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.net.HttpURLConnection;

public class HeatMapLoader extends BaseMapLoader {
    private String mMapHeatPoiId = null;

    public void setMapHeatPoiId(String str) {
        this.mMapHeatPoiId = str;
    }

    public HeatMapLoader(int i, GLMapEngine gLMapEngine, int i2) {
        super(i);
        this.mGLMapEngine = gLMapEngine;
        this.mDataSource = i2;
        this.mCreateTime = System.currentTimeMillis();
    }

    /* access modifiers changed from: protected */
    public String getMapAddress() {
        return this.mGLMapEngine.getMapSvrAddress();
    }

    /* access modifiers changed from: protected */
    public String getMapServerPath() {
        return "/ws/mps/hot/?";
    }

    /* access modifiers changed from: protected */
    public String getGridParams() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = ";";
        for (int i = 0; i < this.mMapTiles.size(); i++) {
            String gridName = ((MapSourceGridData) this.mMapTiles.get(i)).getGridName();
            if (!TextUtils.isEmpty(gridName) && !super.isContainIllegal(gridName) && GLMapUtil.isAssic(gridName)) {
                stringBuffer.append(gridName + str);
            }
        }
        String stringBuffer2 = stringBuffer.toString();
        if (TextUtils.isEmpty(stringBuffer2)) {
            return null;
        }
        while (true) {
            if (!stringBuffer2.endsWith(str) && !stringBuffer2.endsWith(Token.SEPARATOR)) {
                break;
            }
            stringBuffer2 = stringBuffer.substring(0, stringBuffer2.length() - 1);
        }
        if (stringBuffer2.length() <= 0) {
            return null;
        }
        return "cp=1&mesh=" + (stringBuffer2 + "&channel=amapapi") + "&poiid=" + this.mMapHeatPoiId;
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
        super.processReceivedData();
        return true;
    }

    /* access modifiers changed from: protected */
    public void processReceivedDataByType() {
        super.processReceivedData();
    }

    /* access modifiers changed from: protected */
    public void processReceivedVersion() {
        if (this.mDataSource == 9) {
            processReceivedVersionData(this.mReceivedDataBuffer, 0, this.mReceivedDataSize);
        }
    }

    /* access modifiers changed from: protected */
    public void processReceivedTileData(byte[] bArr, int i, int i2) {
        if (i == 0) {
            super.processReceivedTileData(bArr, i, i2);
        } else {
            processReceivedTileDataBmp(bArr, i, i2);
        }
    }

    public boolean isRequestValid() {
        return this.mGLMapEngine.isGridsInScreen(this.mEngineID, this.mMapTiles, this.mDataSource);
    }

    /* access modifiers changed from: protected */
    public boolean isNeedReturn() {
        if (this.mDataSource == 9) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void processReceivedTileDataBmp(byte[] bArr, int i, int i2) {
        String str;
        int i3 = i + 4;
        int i4 = i3 + 1;
        try {
            byte b = bArr[i3];
            String str2 = "";
            if (b <= 0 || (i4 + b) - 1 >= i2) {
                str = str2;
            } else {
                str = new String(bArr, i4, b, "utf-8");
            }
            int i5 = i4 + b;
            if (this.mGLMapEngine.isMapEngineValid() && i2 > i) {
                this.mGLMapEngine.putMapHeatData(this.mEngineID, bArr, i, i2 - i, 0, this.mMapHeatPoiId);
                boolean z = this.mGLMapEngine.GetCurrentGrideNameLen(this.mEngineID) == str.length() ? !this.mGLMapEngine.isGridsInScreen(this.mEngineID, this.mMapTiles, this.mDataSource) : true;
                if (z) {
                    super.doCancel();
                }
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }
}
