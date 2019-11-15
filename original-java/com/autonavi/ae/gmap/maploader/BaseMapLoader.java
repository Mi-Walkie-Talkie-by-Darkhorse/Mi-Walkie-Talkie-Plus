package com.autonavi.ae.gmap.maploader;

import android.text.TextUtils;
import com.amap.api.mapcore.util.fo;
import com.amap.api.mapcore.util.p;
import com.autonavi.ae.gmap.GLMapEngine;
import com.autonavi.ae.gmap.utils.GLConvertUtil;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public abstract class BaseMapLoader {
    private static final int CONNECTION_TIMEOUT = 20000;
    protected volatile boolean isCanceled = false;
    protected volatile boolean isFinished = false;
    private boolean isGetRequestMethod = true;
    protected volatile boolean isInRequest = false;
    protected boolean isReceivedHeader = false;
    protected int mCapaticy = 30720;
    protected int mCapaticyExt = 10240;
    protected long mCreateTime;
    protected int mDataSource = 0;
    protected int mEngineID = 0;
    protected GLMapEngine mGLMapEngine;
    public List<MapSourceGridData> mMapTiles = new ArrayList();
    protected int mNextImgDataLength = 0;
    protected byte[] mReceivedDataBuffer;
    protected int mReceivedDataSize = 0;
    private HttpURLConnection mURLConnection = null;

    /* access modifiers changed from: protected */
    public abstract void addRequestHeader(HttpURLConnection httpURLConnection);

    /* access modifiers changed from: protected */
    public abstract String getGridParams();

    /* access modifiers changed from: protected */
    public abstract String getMapAddress();

    /* access modifiers changed from: protected */
    public abstract String getMapServerPath();

    /* access modifiers changed from: protected */
    public abstract boolean isNeedReturn();

    public abstract boolean isRequestValid();

    /* access modifiers changed from: protected */
    public abstract void processReceivedDataByType();

    /* access modifiers changed from: protected */
    public abstract boolean processReceivedDataHeader();

    /* access modifiers changed from: protected */
    public abstract void processReceivedVersion();

    public BaseMapLoader(int i) {
        this.mEngineID = i;
    }

    /* access modifiers changed from: protected */
    public boolean processHttpResponse(HttpURLConnection httpURLConnection) {
        return false;
    }

    public void setGetRequestMethod(boolean z) {
        this.isGetRequestMethod = z;
    }

    public void addRequestTiles(MapSourceGridData mapSourceGridData) {
        if (this.mMapTiles != null) {
            this.mMapTiles.add(mapSourceGridData);
        }
    }

    /* access modifiers changed from: protected */
    public void downLoadOver(int i) {
    }

    /* access modifiers changed from: protected */
    public String getRequestParams(String str) {
        String str2 = (("mapdataver=6&" + str) + "&aetraffic=8") + "&key=" + fo.f(p.a);
        if (this.mDataSource == 101) {
        }
        return str2;
    }

    /* access modifiers changed from: protected */
    public void processReceivedDataV4() {
        try {
            if (this.mNextImgDataLength == 0) {
                if (this.mReceivedDataSize >= 8) {
                    this.mNextImgDataLength = GLConvertUtil.getInt(this.mReceivedDataBuffer, 0) + 8;
                    processReceivedDataV4();
                }
            } else if (this.mReceivedDataSize >= this.mNextImgDataLength) {
                processReceivedTileDataV4(this.mReceivedDataBuffer, 8, this.mNextImgDataLength);
                if (this.mReceivedDataBuffer != null) {
                    GLConvertUtil.moveArray(this.mReceivedDataBuffer, this.mNextImgDataLength, this.mReceivedDataBuffer, 0, this.mReceivedDataSize - this.mNextImgDataLength);
                    this.mReceivedDataSize -= this.mNextImgDataLength;
                    this.mNextImgDataLength = 0;
                    processReceivedDataV4();
                }
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* access modifiers changed from: protected */
    public void processReceivedTileDataV4(byte[] bArr, int i, int i2) throws UnsupportedEncodingException {
        boolean z = false;
        int i3 = i + 4;
        int i4 = i3 + 1;
        byte b = bArr[i3];
        String str = "";
        if (b > 0 && (i4 + b) - 1 < i2) {
            str = new String(bArr, i4, b, "utf-8");
        }
        int i5 = b + i4;
        if (this.mGLMapEngine.isMapEngineValid() && i2 > i) {
            putMapData(bArr, i, i2 - i, this.mDataSource, 0, str);
            if (this.mGLMapEngine.GetCurrentGrideNameLen(this.mEngineID) < str.length()) {
                z = true;
            } else if (!this.mGLMapEngine.isGridsInScreen(this.mEngineID, this.mMapTiles, this.mDataSource)) {
                z = true;
            }
            if (z) {
                doCancel();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void putMapData(byte[] bArr, int i, int i2, int i3, int i4, String str) {
        this.mGLMapEngine.putMapData(this.mEngineID, bArr, i, i2, i3, i4);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void processReceivedData() {
        /*
            r6 = this;
            r1 = 8
            int r0 = r6.mNextImgDataLength     // Catch:{ Throwable -> 0x005d }
            if (r0 != 0) goto L_0x0019
            int r0 = r6.mReceivedDataSize     // Catch:{ Throwable -> 0x005d }
            if (r0 < r1) goto L_0x0018
            byte[] r0 = r6.mReceivedDataBuffer     // Catch:{ Throwable -> 0x005d }
            r1 = 0
            int r0 = com.autonavi.ae.gmap.utils.GLConvertUtil.getInt(r0, r1)     // Catch:{ Throwable -> 0x005d }
            int r0 = r0 + 8
            r6.mNextImgDataLength = r0     // Catch:{ Throwable -> 0x005d }
            r6.processReceivedData()     // Catch:{ Throwable -> 0x005d }
        L_0x0018:
            return
        L_0x0019:
            int r0 = r6.mReceivedDataSize     // Catch:{ Throwable -> 0x005d }
            int r1 = r6.mNextImgDataLength     // Catch:{ Throwable -> 0x005d }
            if (r0 < r1) goto L_0x0018
            byte[] r0 = r6.mReceivedDataBuffer     // Catch:{ Throwable -> 0x005d }
            r1 = 0
            int r0 = com.autonavi.ae.gmap.utils.GLConvertUtil.getInt(r0, r1)     // Catch:{ Throwable -> 0x005d }
            byte[] r1 = r6.mReceivedDataBuffer     // Catch:{ Throwable -> 0x005d }
            r2 = 4
            int r1 = com.autonavi.ae.gmap.utils.GLConvertUtil.getInt(r1, r2)     // Catch:{ Throwable -> 0x005d }
            if (r1 != 0) goto L_0x0062
            byte[] r1 = r6.mReceivedDataBuffer     // Catch:{ Throwable -> 0x005d }
            r2 = 8
            int r0 = r0 + 8
            r6.processReceivedTileData(r1, r2, r0)     // Catch:{ Throwable -> 0x005d }
        L_0x0038:
            int r0 = r6.mNextImgDataLength     // Catch:{ Throwable -> 0x005d }
            if (r0 <= 0) goto L_0x0018
            byte[] r0 = r6.mReceivedDataBuffer     // Catch:{ Throwable -> 0x005d }
            if (r0 == 0) goto L_0x0018
            byte[] r0 = r6.mReceivedDataBuffer     // Catch:{ Throwable -> 0x005d }
            int r1 = r6.mNextImgDataLength     // Catch:{ Throwable -> 0x005d }
            byte[] r2 = r6.mReceivedDataBuffer     // Catch:{ Throwable -> 0x005d }
            r3 = 0
            int r4 = r6.mReceivedDataSize     // Catch:{ Throwable -> 0x005d }
            int r5 = r6.mNextImgDataLength     // Catch:{ Throwable -> 0x005d }
            int r4 = r4 - r5
            com.autonavi.ae.gmap.utils.GLConvertUtil.moveArray(r0, r1, r2, r3, r4)     // Catch:{ Throwable -> 0x005d }
            int r0 = r6.mReceivedDataSize     // Catch:{ Throwable -> 0x005d }
            int r1 = r6.mNextImgDataLength     // Catch:{ Throwable -> 0x005d }
            int r0 = r0 - r1
            r6.mReceivedDataSize = r0     // Catch:{ Throwable -> 0x005d }
            r0 = 0
            r6.mNextImgDataLength = r0     // Catch:{ Throwable -> 0x005d }
            r6.processReceivedData()     // Catch:{ Throwable -> 0x005d }
            goto L_0x0018
        L_0x005d:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0018
        L_0x0062:
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream     // Catch:{ Exception -> 0x0085 }
            byte[] r3 = r6.mReceivedDataBuffer     // Catch:{ Exception -> 0x0085 }
            r4 = 8
            r2.<init>(r3, r4, r0)     // Catch:{ Exception -> 0x0085 }
            java.util.zip.GZIPInputStream r0 = new java.util.zip.GZIPInputStream     // Catch:{ Exception -> 0x0085 }
            r0.<init>(r2)     // Catch:{ Exception -> 0x0085 }
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ Exception -> 0x0085 }
            r2.<init>()     // Catch:{ Exception -> 0x0085 }
            r3 = 128(0x80, float:1.794E-43)
            byte[] r3 = new byte[r3]     // Catch:{ Exception -> 0x0085 }
        L_0x0079:
            int r4 = r0.read(r3)     // Catch:{ Exception -> 0x0085 }
            r5 = -1
            if (r4 <= r5) goto L_0x008a
            r5 = 0
            r2.write(r3, r5, r4)     // Catch:{ Exception -> 0x0085 }
            goto L_0x0079
        L_0x0085:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x005d }
            goto L_0x0038
        L_0x008a:
            byte[] r0 = r2.toByteArray()     // Catch:{ Exception -> 0x0085 }
            r2 = 0
            r6.processReceivedTileData(r0, r2, r1)     // Catch:{ Exception -> 0x0085 }
            goto L_0x0038
        */
        throw new UnsupportedOperationException("Method not decompiled: com.autonavi.ae.gmap.maploader.BaseMapLoader.processReceivedData():void");
    }

    /* access modifiers changed from: protected */
    public void processReceivedTileData(byte[] bArr, int i, int i2) {
        String str;
        int i3 = i + 2 + 2 + 4;
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
                this.mGLMapEngine.putMapData(this.mEngineID, bArr, i, i2 - i, this.mDataSource, 0);
                boolean z = this.mGLMapEngine.GetCurrentGrideNameLen(this.mEngineID) >= str.length() ? !this.mGLMapEngine.isGridsInScreen(this.mEngineID, this.mMapTiles, this.mDataSource) : true;
                if (z) {
                    doCancel();
                }
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* access modifiers changed from: protected */
    public void processReceivedVersionData(byte[] bArr, int i, int i2) {
        boolean z = false;
        if (i2 > 0) {
            try {
                if (i2 <= bArr.length && GLConvertUtil.getInt(bArr, 0) == 0 && GLConvertUtil.getInt(bArr, 4) == 0) {
                    int i3 = GLConvertUtil.getInt(bArr, 8);
                    ArrayList arrayList = new ArrayList();
                    int i4 = 12;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= i3) {
                            z = true;
                            break;
                        }
                        String str = "";
                        if (i4 >= i2) {
                            break;
                        }
                        int i6 = i4 + 1;
                        byte b = bArr[i4];
                        if (b <= 0 || i6 + b >= i2) {
                            break;
                        }
                        arrayList.add(new String(bArr, i6, b, "utf-8"));
                        i4 = b + i6 + 4;
                        i5++;
                    }
                    if (z) {
                        this.mGLMapEngine.putMapData(this.mEngineID, bArr, 0, i2, this.mDataSource, 0);
                    }
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean isContainIllegal(String str) {
        if (str.contains("<") || str.contains("[")) {
            return true;
        }
        return false;
    }

    public synchronized boolean hasFinished() {
        return this.isCanceled || this.isFinished;
    }

    public void onException(int i) {
        if (!(this.mDataSource == 6 || this.mDataSource == 4 || this.mDataSource == 1)) {
            if (this.isCanceled) {
                this.mGLMapEngine.onException(this.mEngineID, 1004);
            } else if (this.mDataSource == 10) {
                this.mGLMapEngine.onException(this.mEngineID, i);
            } else {
                this.mGLMapEngine.onException(this.mEngineID, i);
                this.mGLMapEngine.setParamater(this.mEngineID, GLMapStaticValue.AM_PARAMETERNAME_NETWORK, i, 0, 0, 0);
            }
        }
        downLoadOver(i);
        this.isFinished = true;
    }

    private void onConnectionReceivedData(byte[] bArr, int i) {
        if (this.mCapaticy < this.mReceivedDataSize + i) {
            try {
                this.mCapaticy += this.mCapaticyExt;
                byte[] bArr2 = new byte[this.mCapaticy];
                System.arraycopy(this.mReceivedDataBuffer, 0, bArr2, 0, this.mReceivedDataSize);
                this.mReceivedDataBuffer = bArr2;
            } catch (ArrayIndexOutOfBoundsException e) {
                doCancel();
                return;
            } catch (OutOfMemoryError e2) {
                doCancel();
                return;
            }
        }
        try {
            System.arraycopy(bArr, 0, this.mReceivedDataBuffer, this.mReceivedDataSize, i);
            this.mReceivedDataSize += i;
            if (!isNeedReturn()) {
                if (this.isReceivedHeader || processReceivedDataHeader()) {
                    processReceivedDataByType();
                }
            }
        } catch (ArrayIndexOutOfBoundsException e3) {
            doCancel();
        } catch (Exception e4) {
            doCancel();
        }
    }

    /* access modifiers changed from: protected */
    public void onConnectionOpened() {
        this.mReceivedDataBuffer = new byte[this.mCapaticy];
        this.mNextImgDataLength = 0;
        this.mReceivedDataSize = 0;
        this.isReceivedHeader = false;
    }

    private synchronized void onConnectionOver() {
        int i = 0;
        synchronized (this) {
            if (this.mURLConnection != null && this.isInRequest) {
                this.isInRequest = false;
                try {
                    this.mURLConnection.disconnect();
                } catch (Exception e) {
                }
            }
            processReceivedVersion();
            this.mReceivedDataBuffer = null;
            this.mNextImgDataLength = 0;
            this.mReceivedDataSize = 0;
            while (true) {
                try {
                    int i2 = i;
                    if (i2 >= this.mMapTiles.size()) {
                        break;
                    }
                    this.mGLMapEngine.mTileProcessCtrl.removeTile(((MapSourceGridData) this.mMapTiles.get(i2)).getKeyGridName());
                    i = i2 + 1;
                } catch (Exception e2) {
                }
            }
            downLoadOver(0);
            this.isFinished = true;
        }
    }

    public synchronized void doCancel() {
        if (!this.isCanceled && !this.isFinished) {
            this.isCanceled = true;
            onConnectionOver();
        }
    }

    public void doRequest() {
        String str;
        InputStream inputStream;
        InputStream inputStream2;
        if (!this.isCanceled && !this.isFinished) {
            if (!isRequestValid()) {
                doCancel();
                return;
            }
            String mapAddress = getMapAddress();
            String mapServerPath = getMapServerPath();
            String gridParams = getGridParams();
            if (TextUtils.isEmpty(mapAddress) || TextUtils.isEmpty(mapServerPath) || TextUtils.isEmpty(gridParams)) {
                doCancel();
                return;
            }
            String str2 = mapAddress + mapServerPath;
            String requestParams = getRequestParams(gridParams);
            if (this.isGetRequestMethod) {
                str = (str2 + requestParams) + "&csid=" + UUID.randomUUID().toString();
            } else {
                str = str2 + "csid=" + UUID.randomUUID().toString();
            }
            inputStream = null;
            try {
                URL url = new URL(str);
                if (url != null) {
                    if (0 != 0) {
                        this.mURLConnection = (HttpURLConnection) url.openConnection(null);
                    }
                    if (this.mURLConnection == null) {
                        this.mURLConnection = (HttpURLConnection) url.openConnection();
                    }
                    this.mURLConnection.setConnectTimeout(20000);
                    this.mURLConnection.setReadTimeout(20000);
                    addRequestHeader(this.mURLConnection);
                    if (this.isGetRequestMethod) {
                        this.mURLConnection.setRequestMethod("GET");
                    } else {
                        this.mURLConnection.setRequestMethod("POST");
                        this.mURLConnection.setDoInput(true);
                        this.mURLConnection.setDoOutput(true);
                        this.mURLConnection.setUseCaches(false);
                        this.mURLConnection.setRequestProperty("User-Agent", this.mGLMapEngine.mUserAgent);
                        byte[] bytes = requestParams.getBytes("utf-8");
                        OutputStream outputStream = this.mURLConnection.getOutputStream();
                        outputStream.write(bytes);
                        outputStream.flush();
                        outputStream.close();
                    }
                    this.isInRequest = true;
                    this.mURLConnection.connect();
                    if (processHttpResponse(this.mURLConnection)) {
                        onConnectionOver();
                        if (inputStream != null && !this.isCanceled) {
                            try {
                                inputStream.close();
                                return;
                            } catch (IOException e) {
                                onException(1005);
                                return;
                            } catch (ArrayIndexOutOfBoundsException | NullPointerException e2) {
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        if (this.mURLConnection.getResponseCode() == 200) {
                            onConnectionOpened();
                            inputStream2 = this.mURLConnection.getInputStream();
                            try {
                                byte[] bArr = new byte[512];
                                while (true) {
                                    int read = inputStream2.read(bArr);
                                    if (read <= -1 || this.isCanceled) {
                                        break;
                                    }
                                    onConnectionReceivedData(bArr, read);
                                }
                            } catch (OutOfMemoryError e3) {
                                inputStream = inputStream2;
                            } catch (IllegalStateException e4) {
                                inputStream = inputStream2;
                                onConnectionOver();
                                if (inputStream != null && !this.isCanceled) {
                                    try {
                                        inputStream.close();
                                        return;
                                    } catch (IOException e5) {
                                        onException(1005);
                                        return;
                                    } catch (ArrayIndexOutOfBoundsException | NullPointerException e6) {
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            } catch (IndexOutOfBoundsException e7) {
                                inputStream = inputStream2;
                                onConnectionOver();
                                if (inputStream != null && !this.isCanceled) {
                                    try {
                                        inputStream.close();
                                        return;
                                    } catch (IOException e8) {
                                        onException(1005);
                                        return;
                                    } catch (ArrayIndexOutOfBoundsException | NullPointerException e9) {
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            } catch (SocketTimeoutException e10) {
                                inputStream = inputStream2;
                                try {
                                    if (this.mDataSource == 10 && ((IndoorMapLoader) this).switchFloorFailed()) {
                                        onException(1007);
                                    }
                                    onConnectionOver();
                                    if (inputStream != null && !this.isCanceled) {
                                        try {
                                            inputStream.close();
                                            return;
                                        } catch (IOException e11) {
                                            onException(1005);
                                            return;
                                        } catch (ArrayIndexOutOfBoundsException | NullPointerException e12) {
                                            return;
                                        }
                                    } else {
                                        return;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    onConnectionOver();
                                    try {
                                        inputStream.close();
                                    } catch (IOException e13) {
                                        onException(1005);
                                    } catch (ArrayIndexOutOfBoundsException | NullPointerException e14) {
                                    }
                                    throw th;
                                }
                            } catch (IOException e15) {
                                inputStream = inputStream2;
                                onException(1005);
                                onConnectionOver();
                                if (inputStream != null && !this.isCanceled) {
                                    try {
                                        inputStream.close();
                                        return;
                                    } catch (IOException e16) {
                                        onException(1005);
                                        return;
                                    } catch (ArrayIndexOutOfBoundsException | NullPointerException e17) {
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            } catch (NullPointerException e18) {
                                inputStream = inputStream2;
                                onConnectionOver();
                                if (inputStream != null && !this.isCanceled) {
                                    try {
                                        inputStream.close();
                                        return;
                                    } catch (IOException e19) {
                                        onException(1005);
                                        return;
                                    } catch (ArrayIndexOutOfBoundsException | NullPointerException e20) {
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            } catch (NumberFormatException e21) {
                                inputStream = inputStream2;
                                onConnectionOver();
                                if (inputStream != null && !this.isCanceled) {
                                    try {
                                        inputStream.close();
                                        return;
                                    } catch (IOException e22) {
                                        onException(1005);
                                        return;
                                    } catch (ArrayIndexOutOfBoundsException | NullPointerException e23) {
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            } catch (Exception e24) {
                                inputStream = inputStream2;
                                onConnectionOver();
                                if (inputStream != null && !this.isCanceled) {
                                    try {
                                        inputStream.close();
                                        return;
                                    } catch (IOException e25) {
                                        onException(1005);
                                        return;
                                    } catch (ArrayIndexOutOfBoundsException | NullPointerException e26) {
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            } catch (Throwable th2) {
                                Throwable th3 = th2;
                                inputStream = inputStream2;
                                th = th3;
                                onConnectionOver();
                                if (inputStream != null && !this.isCanceled) {
                                    inputStream.close();
                                }
                                throw th;
                            }
                        } else if (this.mDataSource != 10) {
                            onException(1002);
                        } else if (((IndoorMapLoader) this).switchFloorFailed()) {
                            onException(1007);
                            inputStream2 = inputStream;
                        }
                        onConnectionOver();
                        if (inputStream2 != null && !this.isCanceled) {
                            try {
                                inputStream2.close();
                                return;
                            } catch (IOException e27) {
                                onException(1005);
                                return;
                            } catch (ArrayIndexOutOfBoundsException | NullPointerException e28) {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                }
                inputStream2 = inputStream;
                onConnectionOver();
                if (inputStream2 != null) {
                    return;
                }
                return;
            } catch (OutOfMemoryError e29) {
            } catch (IllegalStateException e30) {
                onConnectionOver();
                if (inputStream != null) {
                    return;
                }
                return;
            } catch (IndexOutOfBoundsException e31) {
                onConnectionOver();
                if (inputStream != null) {
                    return;
                }
                return;
            } catch (SocketTimeoutException e32) {
                onException(1007);
                onConnectionOver();
                if (inputStream != null) {
                    return;
                }
                return;
            } catch (IOException e33) {
                onException(1005);
                onConnectionOver();
                if (inputStream != null) {
                    return;
                }
                return;
            } catch (NullPointerException e34) {
                onConnectionOver();
                if (inputStream != null) {
                    return;
                }
                return;
            } catch (NumberFormatException e35) {
                onConnectionOver();
                if (inputStream != null) {
                    return;
                }
                return;
            } catch (Exception e36) {
                onConnectionOver();
                if (inputStream != null) {
                    return;
                }
                return;
            }
        } else {
            return;
        }
        onConnectionOver();
        if (inputStream != null && !this.isCanceled) {
            try {
                inputStream.close();
            } catch (IOException e37) {
                onException(1005);
            } catch (ArrayIndexOutOfBoundsException | NullPointerException e38) {
            }
        }
    }
}
