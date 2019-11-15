package com.autonavi.ae.gmap.style;

import android.text.TextUtils;
import com.autonavi.ae.gmap.GLMapEngine;
import com.autonavi.ae.gmap.style.MapTilsCacheAndResManager.RetStyleIconsFile;
import com.autonavi.ae.gmap.utils.GLConvertUtil;
import java.io.ByteArrayOutputStream;

public class StylesIconsUpdate extends Thread {
    private final int CONNECTION_TIMEOUT = 10000;
    private volatile boolean canceled = false;
    private int mEngineID = 0;
    GLMapEngine mMapEngine;
    int mReceiveDataLen = 0;
    RetStyleIconsFile mRetFileRecoder;
    ByteArrayOutputStream netWorkData = null;
    private boolean successed = false;
    private String url;

    public StylesIconsUpdate(int i, GLMapEngine gLMapEngine, RetStyleIconsFile retStyleIconsFile) {
        this.mEngineID = i;
        this.mRetFileRecoder = retStyleIconsFile;
        this.mMapEngine = gLMapEngine;
    }

    public void cancel() {
        this.canceled = true;
    }

    public synchronized void start(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.url = new String(str);
            super.start();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00d2, code lost:
        if (r6.canceled != false) goto L_0x00fd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00d8, code lost:
        if (r6.mReceiveDataLen <= 11) goto L_0x00fd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00dc, code lost:
        if (r6.mMapEngine == null) goto L_0x00eb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00de, code lost:
        r6.mMapEngine.PutResourceData(r6.mEngineID, r6.netWorkData.toByteArray());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:?, code lost:
        putErrordata(r6.mMapEngine);
     */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x010b A[SYNTHETIC, Splitter:B:55:0x010b] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0110 A[SYNTHETIC, Splitter:B:58:0x0110] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0124 A[SYNTHETIC, Splitter:B:66:0x0124] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0129 A[SYNTHETIC, Splitter:B:69:0x0129] */
    /* JADX WARNING: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:52:0x0104=Splitter:B:52:0x0104, B:23:0x00b6=Splitter:B:23:0x00b6} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r6 = this;
            r1 = 0
            java.lang.String r0 = r6.url
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x000f
            com.autonavi.ae.gmap.GLMapEngine r0 = r6.mMapEngine
            r6.putErrordata(r0)
        L_0x000e:
            return
        L_0x000f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "mapdataver=6&type=30&name="
            java.lang.StringBuilder r0 = r0.append(r2)
            com.autonavi.ae.gmap.style.MapTilsCacheAndResManager$RetStyleIconsFile r2 = r6.mRetFileRecoder
            java.lang.String r2 = r2.name
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r2 = "&cv="
            java.lang.StringBuilder r0 = r0.append(r2)
            com.autonavi.ae.gmap.style.MapTilsCacheAndResManager$RetStyleIconsFile r2 = r6.mRetFileRecoder
            int r2 = r2.clientVersion
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r2 = "&sv="
            java.lang.StringBuilder r0 = r0.append(r2)
            com.autonavi.ae.gmap.style.MapTilsCacheAndResManager$RetStyleIconsFile r2 = r6.mRetFileRecoder
            int r2 = r2.serverVersion
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = r6.url
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            java.net.URL r3 = new java.net.URL     // Catch:{ IOException -> 0x0140, IndexOutOfBoundsException -> 0x013d, all -> 0x013a }
            r3.<init>(r0)     // Catch:{ IOException -> 0x0140, IndexOutOfBoundsException -> 0x013d, all -> 0x013a }
            if (r3 == 0) goto L_0x0147
            r0 = 0
            if (r1 == 0) goto L_0x0144
            java.net.URLConnection r0 = r3.openConnection(r0)     // Catch:{ IOException -> 0x0140, IndexOutOfBoundsException -> 0x013d, all -> 0x013a }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x0140, IndexOutOfBoundsException -> 0x013d, all -> 0x013a }
            r2 = r0
        L_0x0066:
            if (r2 != 0) goto L_0x006f
            java.net.URLConnection r0 = r3.openConnection()     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r2 = r0
        L_0x006f:
            r0 = 10000(0x2710, float:1.4013E-41)
            r2.setConnectTimeout(r0)     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r0 = 10000(0x2710, float:1.4013E-41)
            r2.setReadTimeout(r0)     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r2.connect()     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            int r0 = r2.getResponseCode()     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r3 = 200(0xc8, float:2.8E-43)
            if (r0 != r3) goto L_0x011b
            java.io.InputStream r1 = r2.getInputStream()     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            int r3 = r1.available()     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            int r3 = r3 + 100
            r0.<init>(r3)     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r6.netWorkData = r0     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            java.io.ByteArrayOutputStream r0 = r6.netWorkData     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r6.getResourceHeaderData(r0)     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r0 = 512(0x200, float:7.175E-43)
            byte[] r0 = new byte[r0]     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
        L_0x009e:
            int r3 = r1.read(r0)     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r4 = -1
            if (r3 <= r4) goto L_0x00d0
            boolean r4 = r6.canceled     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            if (r4 != 0) goto L_0x00d0
            java.io.ByteArrayOutputStream r4 = r6.netWorkData     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r5 = 0
            r4.write(r0, r5, r3)     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            int r4 = r6.mReceiveDataLen     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            int r3 = r3 + r4
            r6.mReceiveDataLen = r3     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            goto L_0x009e
        L_0x00b5:
            r0 = move-exception
        L_0x00b6:
            com.autonavi.ae.gmap.GLMapEngine r3 = r6.mMapEngine     // Catch:{ all -> 0x0121 }
            r6.putErrordata(r3)     // Catch:{ all -> 0x0121 }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0121 }
            if (r2 == 0) goto L_0x00c3
            r2.disconnect()     // Catch:{ Exception -> 0x0134 }
        L_0x00c3:
            if (r1 == 0) goto L_0x000e
            r1.close()     // Catch:{ IOException -> 0x00ca }
            goto L_0x000e
        L_0x00ca:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x000e
        L_0x00d0:
            boolean r0 = r6.canceled     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            if (r0 != 0) goto L_0x00fd
            int r0 = r6.mReceiveDataLen     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r3 = 11
            if (r0 <= r3) goto L_0x00fd
            com.autonavi.ae.gmap.GLMapEngine r0 = r6.mMapEngine     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            if (r0 == 0) goto L_0x00eb
            com.autonavi.ae.gmap.GLMapEngine r0 = r6.mMapEngine     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            int r3 = r6.mEngineID     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            java.io.ByteArrayOutputStream r4 = r6.netWorkData     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            byte[] r4 = r4.toByteArray()     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r0.PutResourceData(r3, r4)     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
        L_0x00eb:
            if (r2 == 0) goto L_0x00f0
            r2.disconnect()     // Catch:{ Exception -> 0x0132 }
        L_0x00f0:
            if (r1 == 0) goto L_0x000e
            r1.close()     // Catch:{ IOException -> 0x00f7 }
            goto L_0x000e
        L_0x00f7:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x000e
        L_0x00fd:
            com.autonavi.ae.gmap.GLMapEngine r0 = r6.mMapEngine     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r6.putErrordata(r0)     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            goto L_0x00eb
        L_0x0103:
            r0 = move-exception
        L_0x0104:
            com.autonavi.ae.gmap.GLMapEngine r0 = r6.mMapEngine     // Catch:{ all -> 0x0121 }
            r6.putErrordata(r0)     // Catch:{ all -> 0x0121 }
            if (r2 == 0) goto L_0x010e
            r2.disconnect()     // Catch:{ Exception -> 0x0136 }
        L_0x010e:
            if (r1 == 0) goto L_0x000e
            r1.close()     // Catch:{ IOException -> 0x0115 }
            goto L_0x000e
        L_0x0115:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x000e
        L_0x011b:
            com.autonavi.ae.gmap.GLMapEngine r0 = r6.mMapEngine     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            r6.putErrordata(r0)     // Catch:{ IOException -> 0x00b5, IndexOutOfBoundsException -> 0x0103 }
            goto L_0x00eb
        L_0x0121:
            r0 = move-exception
        L_0x0122:
            if (r2 == 0) goto L_0x0127
            r2.disconnect()     // Catch:{ Exception -> 0x0138 }
        L_0x0127:
            if (r1 == 0) goto L_0x012c
            r1.close()     // Catch:{ IOException -> 0x012d }
        L_0x012c:
            throw r0
        L_0x012d:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x012c
        L_0x0132:
            r0 = move-exception
            goto L_0x00f0
        L_0x0134:
            r0 = move-exception
            goto L_0x00c3
        L_0x0136:
            r0 = move-exception
            goto L_0x010e
        L_0x0138:
            r2 = move-exception
            goto L_0x0127
        L_0x013a:
            r0 = move-exception
            r2 = r1
            goto L_0x0122
        L_0x013d:
            r0 = move-exception
            r2 = r1
            goto L_0x0104
        L_0x0140:
            r0 = move-exception
            r2 = r1
            goto L_0x00b6
        L_0x0144:
            r2 = r1
            goto L_0x0066
        L_0x0147:
            r2 = r1
            goto L_0x00eb
        */
        throw new UnsupportedOperationException("Method not decompiled: com.autonavi.ae.gmap.style.StylesIconsUpdate.run():void");
    }

    private int getResourceHeaderData(ByteArrayOutputStream byteArrayOutputStream) {
        int i = this.mRetFileRecoder.type;
        int parseInt = Integer.parseInt(this.mRetFileRecoder.fullName.split("_|\\.")[1]);
        byte[] convertInt = GLConvertUtil.convertInt(i);
        byteArrayOutputStream.write(convertInt, 0, convertInt.length);
        byte[] convertInt2 = GLConvertUtil.convertInt(parseInt);
        byteArrayOutputStream.write(convertInt2, 0, convertInt2.length);
        byte[] convertInt3 = GLConvertUtil.convertInt(this.mRetFileRecoder.clientVersion);
        byteArrayOutputStream.write(convertInt3, 0, convertInt3.length);
        byte[] convertInt4 = GLConvertUtil.convertInt(this.mRetFileRecoder.serverVersion);
        byteArrayOutputStream.write(convertInt4, 0, convertInt4.length);
        return byteArrayOutputStream.size();
    }

    private void putErrordata(GLMapEngine gLMapEngine) {
        if (gLMapEngine != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(100);
            getResourceHeaderData(byteArrayOutputStream);
            byte[] convertInt = GLConvertUtil.convertInt(-1);
            byteArrayOutputStream.write(convertInt, 0, convertInt.length);
            gLMapEngine.PutResourceData(this.mEngineID, byteArrayOutputStream.toByteArray());
        }
    }
}
