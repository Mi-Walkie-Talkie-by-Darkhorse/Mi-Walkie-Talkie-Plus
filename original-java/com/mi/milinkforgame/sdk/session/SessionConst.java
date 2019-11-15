package com.mi.milinkforgame.sdk.session;

import android.util.SparseArray;
import java.util.concurrent.atomic.AtomicInteger;

public class SessionConst {
    public static final int ACC_NEED_CLIENT_RETRY_TIMES = 1;
    public static final int BACKUP_IP = 5;
    public static final int CDN_IP = 6;
    public static final String CDN_PICTURE_URL = "http://d.g.mi.com/t.html";
    public static final int CONN_FAILED = 1;
    public static final int CONTINUOUS_RECV_TIMEOUT_PACKAGE_MAX_COUNT = 3;
    public static final int DOMAIN_IP = 4;
    public static final String ERROR_MSG = "ERROR_MSG";
    public static final int HANDSHAKE_OTHERERROR_FAILED = 2;
    public static final int HANDSHAKE_PACKERROR_FAILED = 3;
    public static final byte HEART_BEAT_SCENE_AFTER_HANDSHAKE_NORMAL = 2;
    public static final byte HEART_BEAT_SCENE_AFTER_HANDSHAKE_START = 1;
    public static final byte HEART_BEAT_SCENE_EXIT_POWERSAVING = 5;
    public static final byte HEART_BEAT_SCENE_LONG_TIMEOUT = 4;
    public static final byte HEART_BEAT_SCENE_SHORT_TIMEOUT = 3;
    public static final int MSG_CHECK_SESSION_TIMER = 4;
    public static final int MSG_TYPE_ADD_CACHE_REQUEST = 9;
    public static final int MSG_TYPE_B2_TOKEN_EXPIRED = 15;
    public static final int MSG_TYPE_DATA_RESPONSE = 5;
    public static final int MSG_TYPE_DATA_RESPONSE_ERROR = 8;
    public static final int MSG_TYPE_GET_SERVICE_TOKEN = 17;
    public static final int MSG_TYPE_HEART_BEAT_RESULT = 12;
    public static final int MSG_TYPE_INVALID_PACKET = 19;
    public static final int MSG_TYPE_KICKED_BY_SERVER = 20;
    public static final int MSG_TYPE_OPEN_SESSION_FAIL = 21;
    public static final int MSG_TYPE_OPEN_SESSION_REQUEST = 3;
    public static final int MSG_TYPE_OPEN_SESSION_SUCCESS = 1;
    public static final int MSG_TYPE_OPEN_SESSION_TIMER = 11;
    public static final int MSG_TYPE_OVERLOAD_CLOSE_TIMER = 14;
    public static final int MSG_TYPE_RELEASE_WAKE_LOCK = 10;
    public static final int MSG_TYPE_SERVER_LINE_BROKEN = 22;
    public static final int MSG_TYPE_SERVER_OVERLOAD = 13;
    public static final int MSG_TYPE_SERVICE_TOKEN_EXPIRED = 16;
    public static final int MSG_TYPE_SESSION_ERROR = 6;
    public static final int MSG_TYPE_SHOULD_CHECK_UPDATE = 18;
    public static final int NONE_CONNECTION_TYPE = 0;
    public static final int OPTI_IP = 1;
    public static final int PACKET_TYPE_DOWNSTREAM = 0;
    public static final int PACKET_TYPE_TLV = 1;
    public static final int RECENTLY_IP = 3;
    public static final int REDIRECT_IP = 2;
    public static final int SCORE_IP = 8;
    public static final int SOCKET_RECV_BUFFER = 65536;
    private static final String TAG = "SessionConst";
    public static final int TCP_CONNECTION_TYPE = 1;
    public static final int TEST_IP = 7;
    private static final int TEST_PIC_CONNECT_TIMEOUT = 5000;
    public static final int TEST_PIC_FAIL = 1;
    public static final int TEST_PIC_NEED_REDIRECT = 2;
    public static final int TEST_PIC_OK = 0;
    private static final int TEST_PIC_READ_TIMEOUT = 15000;
    public static final int TIME_OUT_MAX_RETRY_TIMES = 2;
    private static SparseArray<String> conTypeMap = new SparseArray<>();
    private static volatile boolean sIsNewApn = true;
    private static SparseArray<String> serverTypeMap = new SparseArray<>();
    private static AtomicInteger uniqueSessionNO = new AtomicInteger(1);

    static {
        conTypeMap.put(0, "none");
        conTypeMap.put(1, "tcp");
        serverTypeMap.put(1, "opt");
        serverTypeMap.put(2, "redirect");
        serverTypeMap.put(3, "recently");
        serverTypeMap.put(4, "dns");
        serverTypeMap.put(5, "bak");
        serverTypeMap.put(6, "cdn");
        serverTypeMap.put(7, "test");
    }

    public static int generateSessionNO() {
        return uniqueSessionNO.getAndIncrement();
    }

    public static String getProtocol(int i) {
        return (String) conTypeMap.get(i);
    }

    public static String getSeverType(int i) {
        return (String) serverTypeMap.get(i);
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x00b2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean isInternetAvailable() {
        /*
            r1 = 1
            r2 = 0
            r3 = 0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00ba, all -> 0x00af }
            r0.<init>()     // Catch:{ Throwable -> 0x00ba, all -> 0x00af }
            java.lang.String r4 = "http://d.g.mi.com/t.html"
            r0.append(r4)     // Catch:{ Throwable -> 0x00ba, all -> 0x00af }
            java.lang.String r4 = "?time="
            r0.append(r4)     // Catch:{ Throwable -> 0x00ba, all -> 0x00af }
            long r4 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x00ba, all -> 0x00af }
            r0.append(r4)     // Catch:{ Throwable -> 0x00ba, all -> 0x00af }
            java.net.URL r4 = new java.net.URL     // Catch:{ Throwable -> 0x00ba, all -> 0x00af }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x00ba, all -> 0x00af }
            r4.<init>(r0)     // Catch:{ Throwable -> 0x00ba, all -> 0x00af }
            java.net.URLConnection r0 = r4.openConnection()     // Catch:{ Throwable -> 0x00ba, all -> 0x00af }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ Throwable -> 0x00ba, all -> 0x00af }
            r3 = 5000(0x1388, float:7.006E-42)
            r0.setConnectTimeout(r3)     // Catch:{ Throwable -> 0x006a }
            r3 = 15000(0x3a98, float:2.102E-41)
            r0.setReadTimeout(r3)     // Catch:{ Throwable -> 0x006a }
            java.lang.String r3 = "GET"
            r0.setRequestMethod(r3)     // Catch:{ Throwable -> 0x006a }
            java.lang.String r3 = "Cache-Control"
            java.lang.String r4 = "no-cache"
            r0.addRequestProperty(r3, r4)     // Catch:{ Throwable -> 0x006a }
            r3 = 0
            r0.setUseCaches(r3)     // Catch:{ Throwable -> 0x006a }
            r3 = 0
            r0.setDefaultUseCaches(r3)     // Catch:{ Throwable -> 0x006a }
            r3 = 1
            r0.setDoInput(r3)     // Catch:{ Throwable -> 0x006a }
            r0.connect()     // Catch:{ Throwable -> 0x006a }
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch:{ Throwable -> 0x006a }
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch:{ Throwable -> 0x006a }
            java.io.InputStream r5 = r0.getInputStream()     // Catch:{ Throwable -> 0x006a }
            r4.<init>(r5)     // Catch:{ Throwable -> 0x006a }
            r3.<init>(r4)     // Catch:{ Throwable -> 0x006a }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x006a }
            r4.<init>()     // Catch:{ Throwable -> 0x006a }
        L_0x0060:
            java.lang.String r5 = r3.readLine()     // Catch:{ Throwable -> 0x006a }
            if (r5 == 0) goto L_0x0079
            r4.append(r5)     // Catch:{ Throwable -> 0x006a }
            goto L_0x0060
        L_0x006a:
            r1 = move-exception
        L_0x006b:
            java.lang.String r1 = "SessionConst"
            java.lang.String r3 = "isInternetAvailable error"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r1, r3)     // Catch:{ all -> 0x00b6 }
            if (r0 == 0) goto L_0x0077
            r0.disconnect()
        L_0x0077:
            r0 = r2
        L_0x0078:
            return r0
        L_0x0079:
            java.lang.String r3 = "SessionConst"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x006a }
            r5.<init>()     // Catch:{ Throwable -> 0x006a }
            java.lang.String r6 = "isInternetAvailable result="
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ Throwable -> 0x006a }
            java.lang.String r6 = r4.toString()     // Catch:{ Throwable -> 0x006a }
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ Throwable -> 0x006a }
            java.lang.String r5 = r5.toString()     // Catch:{ Throwable -> 0x006a }
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r3, r5)     // Catch:{ Throwable -> 0x006a }
            java.lang.String r3 = r4.toString()     // Catch:{ Throwable -> 0x006a }
            java.lang.String r4 = "milink.test"
            boolean r3 = r3.contains(r4)     // Catch:{ Throwable -> 0x006a }
            if (r3 == 0) goto L_0x00a8
            if (r0 == 0) goto L_0x00a6
            r0.disconnect()
        L_0x00a6:
            r0 = r1
            goto L_0x0078
        L_0x00a8:
            if (r0 == 0) goto L_0x00ad
            r0.disconnect()
        L_0x00ad:
            r0 = r2
            goto L_0x0078
        L_0x00af:
            r0 = move-exception
        L_0x00b0:
            if (r3 == 0) goto L_0x00b5
            r3.disconnect()
        L_0x00b5:
            throw r0
        L_0x00b6:
            r1 = move-exception
            r3 = r0
            r0 = r1
            goto L_0x00b0
        L_0x00ba:
            r0 = move-exception
            r0 = r3
            goto L_0x006b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.session.SessionConst.isInternetAvailable():boolean");
    }

    public static void setNewApn(boolean z) {
        sIsNewApn = z;
    }

    public static boolean isNewApn() {
        boolean z = sIsNewApn;
        if (z) {
            sIsNewApn = false;
        }
        return z;
    }
}
