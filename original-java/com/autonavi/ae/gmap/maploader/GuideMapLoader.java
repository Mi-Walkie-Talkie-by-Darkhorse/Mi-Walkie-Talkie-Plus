package com.autonavi.ae.gmap.maploader;

import android.text.TextUtils;
import com.autonavi.ae.gmap.GLMapEngine;
import com.autonavi.ae.gmap.utils.GLConvertUtil;
import com.autonavi.ae.gmap.utils.GLMapServerUtil;
import com.autonavi.ae.gmap.utils.GLMapUtil;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;

public class GuideMapLoader extends BaseMapLoader {
    protected String mScenicAoiID = "";

    public GuideMapLoader(int i, GLMapEngine gLMapEngine, int i2) {
        super(i);
        this.mGLMapEngine = gLMapEngine;
        this.mDataSource = i2;
        this.mCreateTime = System.currentTimeMillis();
    }

    public GuideMapLoader(int i, GLMapEngine gLMapEngine, int i2, String str) {
        super(i);
        this.mGLMapEngine = gLMapEngine;
        this.mDataSource = i2;
        this.mCreateTime = System.currentTimeMillis();
        this.mScenicAoiID = str;
    }

    /* access modifiers changed from: protected */
    public String getMapAddress() {
        if (this.mDataSource == 101) {
            return GLMapServerUtil.BASE_AOS_URL_DATA_SERVER_PUBLIC;
        }
        return this.mGLMapEngine.getMapSvrAddress();
    }

    /* access modifiers changed from: protected */
    public String getMapServerPath() {
        switch (this.mDataSource) {
            case 11:
                return "/ws/mps/spot?";
            case 101:
                return "/ws/valueadded/scenic/scenic_widget/?";
            default:
                return null;
        }
    }

    /* access modifiers changed from: protected */
    public String getGridParams() {
        String gridParmaV4;
        if (this.mDataSource == 101) {
            gridParmaV4 = getScenicWidgetRequestParams();
        } else {
            gridParmaV4 = getGridParmaV4();
        }
        return gridParmaV4 + "&channel=amapapi";
    }

    /* access modifiers changed from: protected */
    public void addRequestHeader(HttpURLConnection httpURLConnection) {
    }

    /* access modifiers changed from: protected */
    public boolean processReceivedDataHeader() {
        try {
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
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public void processReceivedDataByType() {
        try {
            super.processReceivedData();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* access modifiers changed from: protected */
    public void processReceivedVersion() {
        try {
            if (this.mDataSource == 9) {
                super.processReceivedVersionData(this.mReceivedDataBuffer, 0, this.mReceivedDataSize);
            } else if (this.mDataSource == 101) {
                processScenicWidgetData(this.mReceivedDataBuffer, 0, this.mReceivedDataSize);
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* access modifiers changed from: protected */
    public void processReceivedTileData(byte[] bArr, int i, int i2) {
        if (i == 0) {
            try {
                super.processReceivedTileData(bArr, i, i2);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        } else if (this.mDataSource == 11) {
            processReceivedTileDataBmp(bArr, i, i2);
        } else {
            super.processReceivedTileData(bArr, i, i2);
        }
    }

    public boolean isRequestValid() {
        if (this.mDataSource == 101) {
            return true;
        }
        return this.mGLMapEngine.isGridsInScreen(this.mEngineID, this.mMapTiles, this.mDataSource);
    }

    /* access modifiers changed from: protected */
    public boolean isNeedReturn() {
        if (this.mDataSource == 101 || this.mDataSource == 9) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void processReceivedTileDataBmp(byte[] bArr, int i, int i2) throws UnsupportedEncodingException {
        String str;
        boolean z = false;
        int i3 = i + 4;
        int i4 = i3 + 1;
        byte b = bArr[i3];
        String str2 = "";
        if (b <= 0 || (i4 + b) - 1 >= i2) {
            str = str2;
        } else {
            str = new String(bArr, i4, b, "utf-8");
        }
        int i5 = i4 + b;
        if (this.mGLMapEngine.isMapEngineValid() && i2 > i) {
            if (this.mGLMapEngine.putMapData(this.mEngineID, bArr, i, i2 - i, this.mDataSource, 0)) {
            }
            if (this.mGLMapEngine.GetCurrentGrideNameLen(this.mEngineID) != str.length()) {
                z = true;
            } else if (!this.mGLMapEngine.isGridsInScreen(this.mEngineID, this.mMapTiles, this.mDataSource)) {
                z = true;
            }
            if (z) {
                super.doCancel();
            }
        }
    }

    private String getGridParmaV4() {
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
        if (this.mDataSource == 11) {
            return "mesh=" + stringBuffer2;
        }
        return null;
    }

    private void processScenicWidgetData(byte[] bArr, int i, int i2) {
        if (bArr != null && i2 > 0 && i2 <= bArr.length) {
            this.mGLMapEngine.putScenicData(this.mEngineID, bArr, i2, this.mScenicAoiID);
        }
    }

    private String getScenicWidgetRequestParams() {
        return "";
    }
}
