package com.autonavi.ae.gmap.maploader;

import android.text.TextUtils;
import com.autonavi.ae.gmap.GLMapEngine;
import com.autonavi.ae.gmap.utils.GLConvertUtil;
import com.autonavi.ae.gmap.utils.GLMD5Util;
import com.autonavi.ae.gmap.utils.GLMapUtil;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.tencent.connect.common.Constants;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URLEncoder;

public class IndoorMapLoader extends BaseMapLoader {
    private static final int AM_INVALID_FLOOR = -9999;
    private static final String INDOOR_CHANNEL = "amap7";
    private static final String INDOOR_SIGN_KEY = "@1071a2a4e3gte2Uc32cY3a98Tf33H1c4Gc23f";

    public IndoorMapLoader(int i, GLMapEngine gLMapEngine, int i2) {
        super(i);
        this.mGLMapEngine = gLMapEngine;
        this.mDataSource = i2;
        this.mCreateTime = System.currentTimeMillis();
    }

    /* access modifiers changed from: protected */
    public String getMapAddress() {
        return this.mGLMapEngine.getMapIndoorAddress();
    }

    /* access modifiers changed from: protected */
    public String getMapServerPath() {
        return "/ws/transfer/auth/map/indoor_maps/?";
    }

    /* access modifiers changed from: protected */
    public String getGridParams() {
        return getIndoorRequestParams();
    }

    /* access modifiers changed from: protected */
    public void addRequestHeader(HttpURLConnection httpURLConnection) {
        httpURLConnection.addRequestProperty(Constants.PARAM_PLATFORM, "Android");
    }

    /* access modifiers changed from: protected */
    public boolean processReceivedDataHeader() {
        if (this.mReceivedDataSize <= 5) {
            return false;
        }
        this.mReceivedDataSize -= 6;
        if (this.mReceivedDataSize > 0) {
            GLConvertUtil.moveArray(this.mReceivedDataBuffer, 6, this.mReceivedDataBuffer, 0, this.mReceivedDataSize);
        }
        this.mNextImgDataLength = 0;
        this.isReceivedHeader = true;
        processReceivedIndoorData();
        return true;
    }

    /* access modifiers changed from: protected */
    public void processReceivedDataByType() {
        processReceivedIndoorData();
    }

    /* access modifiers changed from: protected */
    public void processReceivedVersion() {
        if (this.mDataSource == 9) {
            super.processReceivedVersionData(this.mReceivedDataBuffer, 0, this.mReceivedDataSize);
        }
    }

    public boolean isRequestValid() {
        return this.mGLMapEngine.isIndoorGridsInScreen(this.mMapTiles, this.mDataSource);
    }

    /* access modifiers changed from: protected */
    public boolean isNeedReturn() {
        if (this.mDataSource == 9) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean processHttpResponse(HttpURLConnection httpURLConnection) {
        String contentType = httpURLConnection.getContentType();
        if (TextUtils.isEmpty(contentType)) {
            return false;
        }
        if (!contentType.contains("application/json") && !contentType.contains("application/xml")) {
            return false;
        }
        this.mGLMapEngine.setParamater(this.mEngineID, 1026, 0, 0, 0, 0);
        return true;
    }

    private void processReceivedIndoorData() {
        if (this.mNextImgDataLength == 0) {
            if (this.mReceivedDataSize >= 6) {
                this.mNextImgDataLength = GLConvertUtil.getInt2(this.mReceivedDataBuffer, 0);
                processReceivedIndoorData();
            }
        } else if (this.mReceivedDataSize >= this.mNextImgDataLength) {
            processReceivedIndoorTileDataV4(this.mReceivedDataBuffer, 0, this.mNextImgDataLength);
            if (this.mReceivedDataBuffer != null) {
                GLConvertUtil.moveArray(this.mReceivedDataBuffer, this.mNextImgDataLength, this.mReceivedDataBuffer, 0, this.mReceivedDataSize - this.mNextImgDataLength);
                this.mReceivedDataSize -= this.mNextImgDataLength;
                this.mNextImgDataLength = 0;
                processReceivedIndoorData();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void processReceivedIndoorTileDataV4(byte[] bArr, int i, int i2) {
        String str;
        int i3 = i + 4;
        int i4 = i3 + 1;
        try {
            byte b = bArr[i3];
            if (b <= 10) {
                String str2 = "";
                if (b > 0 && (i4 + b) - 1 < i2) {
                    str2 = new String(bArr, i4, b, "utf-8");
                }
                int i5 = i4 + b;
                if (this.mGLMapEngine.isMapEngineValid() && i2 > i3) {
                    short short2 = GLConvertUtil.getShort2(bArr, i5);
                    if (this.mGLMapEngine.putMapData(this.mEngineID, bArr, i3, i2 - i3, this.mDataSource, 0)) {
                        str = str2 + "-" + short2;
                    } else {
                        str = str2;
                    }
                    if (!this.mGLMapEngine.isIndoorGridInScreen(this.mDataSource, str, short2)) {
                        super.doCancel();
                    }
                }
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private String getIndoorRequestParams() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        StringBuffer stringBuffer3 = new StringBuffer();
        String str2 = ";";
        for (int i = 0; i < this.mMapTiles.size(); i++) {
            String gridName = ((MapSourceGridData) this.mMapTiles.get(i)).getGridName();
            int i2 = ((MapSourceGridData) this.mMapTiles.get(i)).mIndoorIndex;
            int i3 = ((MapSourceGridData) this.mMapTiles.get(i)).mIndoorVersion;
            if (!TextUtils.isEmpty(gridName) && !super.isContainIllegal(gridName) && GLMapUtil.isAssic(gridName)) {
                stringBuffer.append(gridName + str2);
                stringBuffer2.append(i2 + str2);
                stringBuffer3.append(i3 + str2);
            }
        }
        String stringBuffer4 = stringBuffer.toString();
        if (!TextUtils.isEmpty(stringBuffer4) && (stringBuffer4.endsWith(str2) || stringBuffer4.endsWith(Token.SEPARATOR))) {
            stringBuffer4 = stringBuffer4.substring(0, stringBuffer4.length() - 1);
        }
        String stringBuffer5 = stringBuffer2.toString();
        if (!TextUtils.isEmpty(stringBuffer5) && (stringBuffer5.endsWith(str2) || stringBuffer5.endsWith(Token.SEPARATOR))) {
            stringBuffer5 = stringBuffer5.substring(0, stringBuffer5.length() - 1);
        }
        String stringBuffer6 = stringBuffer3.toString();
        if (TextUtils.isEmpty(stringBuffer6) || (!stringBuffer6.endsWith(str2) && !stringBuffer6.endsWith(Token.SEPARATOR))) {
            str = stringBuffer6;
        } else {
            str = stringBuffer6.substring(0, stringBuffer6.length() - 1);
        }
        StringBuffer stringBuffer7 = new StringBuffer();
        try {
            stringBuffer7.append("from=AMAP_ENGINE_INDOOR_V4&").append("poiid=" + URLEncoder.encode(stringBuffer4, "UTF-8") + "&").append("floor=" + URLEncoder.encode(stringBuffer5, "UTF-8") + "&").append("version=" + URLEncoder.encode(str, "UTF-8") + "&").append("sign=" + getIndoorMD5Params(stringBuffer4) + "&").append("language=zh_CN&output=bin&channel=amap7&servicetype=unify&").append("zoomlevel=" + ((int) this.mGLMapEngine.getMapZoomer(this.mEngineID)));
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        return stringBuffer7.toString();
    }

    private String getIndoorMD5Params(String str) {
        return GLMD5Util.getStringMD5(INDOOR_CHANNEL + str + INDOOR_SIGN_KEY).toUpperCase();
    }

    public boolean switchFloorFailed() {
        if (this.mMapTiles != null && this.mMapTiles.size() > 0) {
            int size = this.mMapTiles.size();
            for (int i = 0; i < size; i++) {
                MapSourceGridData mapSourceGridData = (MapSourceGridData) this.mMapTiles.get(i);
                if (mapSourceGridData != null && mapSourceGridData.mIndoorVersion == 0 && mapSourceGridData.mIndoorIndex != -9999) {
                    return true;
                }
            }
        }
        return false;
    }
}
