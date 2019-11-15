package com.autonavi.ae.gmap.maploader;

import com.autonavi.ae.gmap.GLMapEngine;

public class MessageDataThread extends Thread {
    private int mDataType;
    private int mDelMode;
    private int mEngineID;
    private GLMapEngine mGLMapEngine;
    private int mRequestMode;
    private int mType;

    public MessageDataThread(int i, GLMapEngine gLMapEngine, int i2, int i3, int i4, int i5) {
        this.mEngineID = i;
        this.mGLMapEngine = gLMapEngine;
        this.mType = i2;
        this.mDelMode = i3;
        this.mRequestMode = i4;
        this.mDataType = i5;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:?, code lost:
        r1.disconnect();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x00f1, code lost:
        r7 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x00f3, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:?, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x007b A[SYNTHETIC, Splitter:B:27:0x007b] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00d6 A[SYNTHETIC, Splitter:B:47:0x00d6] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00e2 A[SYNTHETIC, Splitter:B:53:0x00e2] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00f3 A[ExcHandler: IOException (e java.io.IOException), PHI: r1 
  PHI: (r1v1 java.net.HttpURLConnection) = (r1v0 java.net.HttpURLConnection), (r1v4 java.net.HttpURLConnection), (r1v4 java.net.HttpURLConnection) binds: [B:3:0x002d, B:11:0x0040, B:12:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:3:0x002d] */
    /* JADX WARNING: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r9 = this;
            r1 = 0
            com.autonavi.ae.gmap.GLMapEngine r0 = r9.mGLMapEngine
            java.lang.String r0 = r0.getMapSvrAddress()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x000e
        L_0x000d:
            return
        L_0x000e:
            java.lang.String r0 = ""
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            com.autonavi.ae.gmap.GLMapEngine r3 = r9.mGLMapEngine
            java.lang.String r3 = r3.getMapSvrAddress()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "/ws/mps/bmcache/?"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            java.net.URL r2 = new java.net.URL     // Catch:{ IOException -> 0x00f3, IndexOutOfBoundsException -> 0x00ed, all -> 0x00de }
            r2.<init>(r0)     // Catch:{ IOException -> 0x00f3, IndexOutOfBoundsException -> 0x00ed, all -> 0x00de }
            if (r2 == 0) goto L_0x00f8
            r0 = 0
            if (r1 == 0) goto L_0x003e
            java.net.URLConnection r0 = r2.openConnection(r0)     // Catch:{ IOException -> 0x00f3, IndexOutOfBoundsException -> 0x00ed, all -> 0x00de }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x00f3, IndexOutOfBoundsException -> 0x00ed, all -> 0x00de }
            r1 = r0
        L_0x003e:
            if (r1 != 0) goto L_0x00f5
            java.net.URLConnection r0 = r2.openConnection()     // Catch:{ IOException -> 0x00f3, IndexOutOfBoundsException -> 0x00f0 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x00f3, IndexOutOfBoundsException -> 0x00f0 }
            r7 = r0
        L_0x0047:
            r0 = 20000(0x4e20, float:2.8026E-41)
            r7.setConnectTimeout(r0)     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            r0 = 20000(0x4e20, float:2.8026E-41)
            r7.setReadTimeout(r0)     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            r7.connect()     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            int r0 = r7.getResponseCode()     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 != r1) goto L_0x00c4
            java.io.InputStream r0 = r7.getInputStream()     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            r1.<init>()     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            r2 = 512(0x200, float:7.175E-43)
            byte[] r2 = new byte[r2]     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
        L_0x0069:
            int r3 = r0.read(r2)     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            if (r3 <= 0) goto L_0x0081
            r4 = 0
            r1.write(r2, r4, r3)     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            goto L_0x0069
        L_0x0074:
            r0 = move-exception
            r1 = r7
        L_0x0076:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00e8 }
            if (r1 == 0) goto L_0x000d
            r1.disconnect()     // Catch:{ Exception -> 0x007f }
            goto L_0x000d
        L_0x007f:
            r0 = move-exception
            goto L_0x000d
        L_0x0081:
            r0.close()     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            r1.flush()     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            r1.close()     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            java.lang.String r0 = new java.lang.String     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            byte[] r1 = r1.toByteArray()     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            java.lang.String r2 = "utf-8"
            r0.<init>(r1, r2)     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch:{ JSONException -> 0x00ce }
            r1.<init>(r0)     // Catch:{ JSONException -> 0x00ce }
            java.lang.String r0 = "code"
            int r0 = r1.optInt(r0)     // Catch:{ JSONException -> 0x00ce }
            r2 = 1
            if (r0 != r2) goto L_0x00c4
            java.lang.String r0 = "data"
            org.json.JSONObject r6 = r1.optJSONObject(r0)     // Catch:{ JSONException -> 0x00ce }
            if (r6 == 0) goto L_0x00c4
            com.autonavi.ae.gmap.GLMapEngine r0 = r9.mGLMapEngine     // Catch:{ JSONException -> 0x00ce }
            int r1 = r9.mEngineID     // Catch:{ JSONException -> 0x00ce }
            int r2 = r9.mType     // Catch:{ JSONException -> 0x00ce }
            int r3 = r9.mDelMode     // Catch:{ JSONException -> 0x00ce }
            int r4 = r9.mRequestMode     // Catch:{ JSONException -> 0x00ce }
            int r5 = r9.mDataType     // Catch:{ JSONException -> 0x00ce }
            java.lang.String r6 = r6.toString()     // Catch:{ JSONException -> 0x00ce }
            java.lang.String r8 = "utf-8"
            byte[] r6 = r6.getBytes(r8)     // Catch:{ JSONException -> 0x00ce }
            r0.setMapDataConrol(r1, r2, r3, r4, r5, r6)     // Catch:{ JSONException -> 0x00ce }
        L_0x00c4:
            if (r7 == 0) goto L_0x000d
            r7.disconnect()     // Catch:{ Exception -> 0x00cb }
            goto L_0x000d
        L_0x00cb:
            r0 = move-exception
            goto L_0x000d
        L_0x00ce:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ IOException -> 0x0074, IndexOutOfBoundsException -> 0x00d3, all -> 0x00eb }
            goto L_0x00c4
        L_0x00d3:
            r0 = move-exception
        L_0x00d4:
            if (r7 == 0) goto L_0x000d
            r7.disconnect()     // Catch:{ Exception -> 0x00db }
            goto L_0x000d
        L_0x00db:
            r0 = move-exception
            goto L_0x000d
        L_0x00de:
            r0 = move-exception
            r7 = r1
        L_0x00e0:
            if (r7 == 0) goto L_0x00e5
            r7.disconnect()     // Catch:{ Exception -> 0x00e6 }
        L_0x00e5:
            throw r0
        L_0x00e6:
            r1 = move-exception
            goto L_0x00e5
        L_0x00e8:
            r0 = move-exception
            r7 = r1
            goto L_0x00e0
        L_0x00eb:
            r0 = move-exception
            goto L_0x00e0
        L_0x00ed:
            r0 = move-exception
            r7 = r1
            goto L_0x00d4
        L_0x00f0:
            r0 = move-exception
            r7 = r1
            goto L_0x00d4
        L_0x00f3:
            r0 = move-exception
            goto L_0x0076
        L_0x00f5:
            r7 = r1
            goto L_0x0047
        L_0x00f8:
            r7 = r1
            goto L_0x00c4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.autonavi.ae.gmap.maploader.MessageDataThread.run():void");
    }
}
