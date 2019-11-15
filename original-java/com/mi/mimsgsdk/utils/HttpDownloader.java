package com.mi.mimsgsdk.utils;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.os.Http;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.utils.DiskLruCache.Snapshot;
import com.xiaomi.mipush.sdk.Constants;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class HttpDownloader {
    private static final String DOWNLOAD_LOG = "HttpDownloadLog";
    public static final int DOWNLOAD_STATE_CANCEL = 1;
    public static final int DOWNLOAD_STATE_FAILED = 2;
    public static final int DOWNLOAD_STATE_SUCCESS = 3;
    public static final String Ks3_Client_SATEFY_IP_URL_NORMAL = "http://120.131.2.241/kssiplist";
    public static final String Ks3_Client_SATEFY_IP_URL_UNNORMAL = "http://123.59.35.94/kssiplist";
    public static final String LOG_SERVER_URL = "http://mlog.ksyun.com";
    public static NetworkUtilsCallback networkCallback;

    @Deprecated
    public interface OnDiskLruCacheDownloadedTask {
        void doThis(Snapshot snapshot);
    }

    public static class DownloadResponse {
        public int downloadBytes;
        public Exception e;
        public int responseCode;
        public int result;

        public DownloadResponse(int i, int i2, int i3, Exception exc) {
            this.responseCode = i;
            this.result = i2;
            this.downloadBytes = i3;
            this.e = exc;
        }
    }

    public interface OnDownloadDiskCacheProgress {
        void onCompleted(Snapshot snapshot);

        void onDownloaded(long j, long j2);

        void onFailed();
    }

    public interface OnDownloadProgress {
        void onCanceled();

        void onCompleted(String str);

        void onDownloaded(long j, long j2);

        void onFailed();
    }

    public static void setCallback(NetworkUtilsCallback networkUtilsCallback) {
        networkCallback = networkUtilsCallback;
    }

    private HttpDownloader() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x00fb A[SYNTHETIC, Splitter:B:42:0x00fb] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x011e A[SYNTHETIC, Splitter:B:46:0x011e] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0148 A[SYNTHETIC, Splitter:B:53:0x0148] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.mi.mimsgsdk.utils.HttpDownloader.DownloadResponse diskCacheDownloadFile(java.lang.String r11, java.lang.String r12, com.mi.mimsgsdk.utils.DiskLruCache r13, com.mi.mimsgsdk.utils.HttpDownloader.OnDownloadDiskCacheProgress r14, com.mi.mimsgsdk.utils.HttpDownloader.OnDiskLruCacheDownloadedTask r15) {
        /*
            r10 = 2
            r9 = -1
            r6 = 0
            r8 = 0
            com.mi.mimsgsdk.utils.DiskLruCache$Editor r7 = r13.edit(r12)     // Catch:{ IOException -> 0x0099, Throwable -> 0x00f7, all -> 0x0144 }
            if (r7 == 0) goto L_0x006e
            java.io.BufferedOutputStream r2 = new java.io.BufferedOutputStream     // Catch:{ IOException -> 0x0173, Throwable -> 0x0171 }
            r0 = 0
            java.io.OutputStream r0 = r7.newOutputStream(r0)     // Catch:{ IOException -> 0x0173, Throwable -> 0x0171 }
            r1 = 8192(0x2000, float:1.14794E-41)
            r2.<init>(r0, r1)     // Catch:{ IOException -> 0x0173, Throwable -> 0x0171 }
            android.content.Context r0 = com.mi.mimsgsdk.utils.GlobalData.app()     // Catch:{ IOException -> 0x0173, Throwable -> 0x0171 }
            com.mi.mimsgsdk.utils.DiskLruCache$Snapshot r3 = r13.get(r12)     // Catch:{ IOException -> 0x0173, Throwable -> 0x0171 }
            r1 = r11
            r4 = r14
            r5 = r15
            com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse r0 = downloadFile(r0, r1, r2, r3, r4, r5)     // Catch:{ IOException -> 0x0173, Throwable -> 0x0171 }
            int r1 = r0.result     // Catch:{ IOException -> 0x0173, Throwable -> 0x0171 }
            r3 = 3
            if (r1 != r3) goto L_0x0069
            r2.close()     // Catch:{ IOException -> 0x0173, Throwable -> 0x0171 }
            r7.commit()     // Catch:{ IOException -> 0x0173, Throwable -> 0x0171 }
            r1 = 0
            if (r15 == 0) goto L_0x003a
            com.mi.mimsgsdk.utils.DiskLruCache$Snapshot r2 = r13.get(r12)     // Catch:{ IOException -> 0x0099, Throwable -> 0x00f7, all -> 0x0144 }
            r15.doThis(r2)     // Catch:{ IOException -> 0x0099, Throwable -> 0x00f7, all -> 0x0144 }
        L_0x003a:
            if (r14 == 0) goto L_0x0043
            com.mi.mimsgsdk.utils.DiskLruCache$Snapshot r2 = r13.get(r12)     // Catch:{ IOException -> 0x0099, Throwable -> 0x00f7, all -> 0x0144 }
            r14.onCompleted(r2)     // Catch:{ IOException -> 0x0099, Throwable -> 0x00f7, all -> 0x0144 }
        L_0x0043:
            if (r6 == 0) goto L_0x0048
            r1.abort()     // Catch:{ IOException -> 0x0049 }
        L_0x0048:
            return r0
        L_0x0049:
            r1 = move-exception
            java.lang.String r2 = "HttpDownloadLog"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = " Error in downloadFile - "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r11)
            java.lang.String r4 = " - "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r2, r3, r1)
            goto L_0x0048
        L_0x0069:
            if (r14 == 0) goto L_0x006e
            r14.onFailed()     // Catch:{ IOException -> 0x0173, Throwable -> 0x0171 }
        L_0x006e:
            if (r7 == 0) goto L_0x0073
            r7.abort()     // Catch:{ IOException -> 0x0079 }
        L_0x0073:
            com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse r0 = new com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse
            r0.<init>(r9, r10, r8, r6)
            goto L_0x0048
        L_0x0079:
            r0 = move-exception
            java.lang.String r1 = "HttpDownloadLog"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = " Error in downloadFile - "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r11)
            java.lang.String r3 = " - "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r1, r2, r0)
            goto L_0x0073
        L_0x0099:
            r0 = move-exception
            r1 = r0
            r2 = r6
        L_0x009c:
            if (r14 == 0) goto L_0x00a1
            r14.onFailed()     // Catch:{ all -> 0x016e }
        L_0x00a1:
            java.lang.String r0 = "HttpDownloadLog"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x016e }
            r3.<init>()     // Catch:{ all -> 0x016e }
            java.lang.String r4 = " Error in downloadFile - "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x016e }
            java.lang.StringBuilder r3 = r3.append(r11)     // Catch:{ all -> 0x016e }
            java.lang.String r4 = " - ,"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x016e }
            java.lang.String r4 = r1.toString()     // Catch:{ all -> 0x016e }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x016e }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x016e }
            com.mi.milinkforgame.sdk.client.ClientLog.e(r0, r3)     // Catch:{ all -> 0x016e }
            com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse r0 = new com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse     // Catch:{ all -> 0x016e }
            r3 = -1
            r4 = 2
            r5 = 0
            r0.<init>(r3, r4, r5, r1)     // Catch:{ all -> 0x016e }
            if (r2 == 0) goto L_0x0048
            r2.abort()     // Catch:{ IOException -> 0x00d6 }
            goto L_0x0048
        L_0x00d6:
            r1 = move-exception
            java.lang.String r2 = "HttpDownloadLog"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = " Error in downloadFile - "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r11)
            java.lang.String r4 = " - "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r2, r3, r1)
            goto L_0x0048
        L_0x00f7:
            r0 = move-exception
            r7 = r6
        L_0x00f9:
            if (r14 == 0) goto L_0x00fe
            r14.onFailed()     // Catch:{ all -> 0x016c }
        L_0x00fe:
            java.lang.String r1 = "HttpDownloadLog"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x016c }
            r2.<init>()     // Catch:{ all -> 0x016c }
            java.lang.String r3 = " Error in downloadFile - "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x016c }
            java.lang.StringBuilder r2 = r2.append(r11)     // Catch:{ all -> 0x016c }
            java.lang.String r3 = " - "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x016c }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x016c }
            com.mi.milinkforgame.sdk.client.ClientLog.e(r1, r2, r0)     // Catch:{ all -> 0x016c }
            if (r7 == 0) goto L_0x0073
            r7.abort()     // Catch:{ IOException -> 0x0123 }
            goto L_0x0073
        L_0x0123:
            r0 = move-exception
            java.lang.String r1 = "HttpDownloadLog"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = " Error in downloadFile - "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r11)
            java.lang.String r3 = " - "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r1, r2, r0)
            goto L_0x0073
        L_0x0144:
            r0 = move-exception
            r7 = r6
        L_0x0146:
            if (r7 == 0) goto L_0x014b
            r7.abort()     // Catch:{ IOException -> 0x014c }
        L_0x014b:
            throw r0
        L_0x014c:
            r1 = move-exception
            java.lang.String r2 = "HttpDownloadLog"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = " Error in downloadFile - "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r11)
            java.lang.String r4 = " - "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r2, r3, r1)
            goto L_0x014b
        L_0x016c:
            r0 = move-exception
            goto L_0x0146
        L_0x016e:
            r0 = move-exception
            r7 = r2
            goto L_0x0146
        L_0x0171:
            r0 = move-exception
            goto L_0x00f9
        L_0x0173:
            r0 = move-exception
            r1 = r0
            r2 = r7
            goto L_0x009c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.HttpDownloader.diskCacheDownloadFile(java.lang.String, java.lang.String, com.mi.mimsgsdk.utils.DiskLruCache, com.mi.mimsgsdk.utils.HttpDownloader$OnDownloadDiskCacheProgress, com.mi.mimsgsdk.utils.HttpDownloader$OnDiskLruCacheDownloadedTask):com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse");
    }

    public static DownloadResponse downloadFile(Context context, String str, OutputStream outputStream, Snapshot snapshot, OnDownloadDiskCacheProgress onDownloadDiskCacheProgress, OnDiskLruCacheDownloadedTask onDiskLruCacheDownloadedTask) {
        return downloadFile(context, str, outputStream, snapshot, onDownloadDiskCacheProgress, onDiskLruCacheDownloadedTask, true, false);
    }

    /* JADX WARNING: Removed duplicated region for block: B:105:0x0327  */
    /* JADX WARNING: Removed duplicated region for block: B:115:0x0383 A[SYNTHETIC, Splitter:B:115:0x0383] */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x03a1  */
    /* JADX WARNING: Removed duplicated region for block: B:134:0x03f7 A[SYNTHETIC, Splitter:B:134:0x03f7] */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x040a  */
    /* JADX WARNING: Removed duplicated region for block: B:143:0x0412  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x01d8  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x022e A[SYNTHETIC, Splitter:B:69:0x022e] */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0238  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0250  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.mi.mimsgsdk.utils.HttpDownloader.DownloadResponse downloadFile(android.content.Context r21, java.lang.String r22, java.io.OutputStream r23, com.mi.mimsgsdk.utils.DiskLruCache.Snapshot r24, com.mi.mimsgsdk.utils.HttpDownloader.OnDownloadDiskCacheProgress r25, com.mi.mimsgsdk.utils.HttpDownloader.OnDiskLruCacheDownloadedTask r26, boolean r27, boolean r28) {
        /*
            r12 = 0
            boolean r4 = com.mi.mimsgsdk.utils.AttachmentManagerUtils.isEffectiveRes(r22)
            if (r4 != 0) goto L_0x0037
            java.lang.String r4 = "HttpDownloadLog"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Invalid_resource: Try to download invalid resource after "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r6 = com.mi.mimsgsdk.utils.AttachmentManagerUtils.mFailedDownloadingResStatic
            r0 = r22
            java.lang.Object r6 = r6.get(r0)
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r6 = " times try"
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r4, r5)
            com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse r4 = new com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse
            r5 = -2
            r6 = 2
            r7 = 0
            r8 = 0
            r4.<init>(r5, r6, r7, r8)
        L_0x0036:
            return r4
        L_0x0037:
            r11 = 0
            r6 = 0
            r8 = 0
            r7 = 0
            long r14 = java.lang.System.currentTimeMillis()
            r10 = 0
            java.lang.String r5 = ""
            java.net.URL r4 = new java.net.URL     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            r0 = r22
            r4.<init>(r0)     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            java.lang.String r13 = r4.getHost()     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            r16 = 1
            java.net.HttpURLConnection.setFollowRedirects(r16)     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            boolean r16 = com.mi.mimsgsdk.utils.Network.isCmwap()     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            if (r16 == 0) goto L_0x0156
            java.lang.String r4 = com.mi.mimsgsdk.utils.Network.getCMWapUrl(r4)     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            java.net.URL r16 = new java.net.URL     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            r0 = r16
            r0.<init>(r4)     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            java.net.URLConnection r4 = r16.openConnection()     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            java.net.HttpURLConnection r4 = (java.net.HttpURLConnection) r4     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            java.lang.String r16 = "X-Online-Host"
            r0 = r16
            r4.setRequestProperty(r0, r13)     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            r13 = r4
        L_0x0072:
            java.lang.String r4 = "Connection"
            java.lang.String r16 = "Keep-Alive"
            r0 = r16
            r13.setRequestProperty(r4, r0)     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            if (r28 == 0) goto L_0x008f
            java.lang.String r4 = "Host"
            java.lang.String r16 = "kss.ksyun.com"
            r0 = r16
            r13.setRequestProperty(r4, r0)     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            java.lang.String r4 = "sun.net.http.allowRestrictedHeaders"
            java.lang.String r16 = "true"
            r0 = r16
            java.lang.System.setProperty(r4, r0)     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
        L_0x008f:
            setConnectionTimeout(r13)     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            r13.connect()     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            int r4 = r13.getResponseCode()     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            java.lang.String r6 = "HttpDownloadLog"
            java.lang.StringBuilder r16 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x0432, IOException -> 0x041a }
            r16.<init>()     // Catch:{ UnknownHostException -> 0x0432, IOException -> 0x041a }
            java.lang.String r17 = "the response code is "
            java.lang.StringBuilder r16 = r16.append(r17)     // Catch:{ UnknownHostException -> 0x0432, IOException -> 0x041a }
            r0 = r16
            java.lang.StringBuilder r16 = r0.append(r4)     // Catch:{ UnknownHostException -> 0x0432, IOException -> 0x041a }
            java.lang.String r17 = ", connected in "
            java.lang.StringBuilder r16 = r16.append(r17)     // Catch:{ UnknownHostException -> 0x0432, IOException -> 0x041a }
            long r18 = java.lang.System.currentTimeMillis()     // Catch:{ UnknownHostException -> 0x0432, IOException -> 0x041a }
            long r18 = r18 - r14
            r0 = r16
            r1 = r18
            java.lang.StringBuilder r16 = r0.append(r1)     // Catch:{ UnknownHostException -> 0x0432, IOException -> 0x041a }
            java.lang.String r16 = r16.toString()     // Catch:{ UnknownHostException -> 0x0432, IOException -> 0x041a }
            r0 = r16
            com.mi.milinkforgame.sdk.client.ClientLog.v(r6, r0)     // Catch:{ UnknownHostException -> 0x0432, IOException -> 0x041a }
            r0 = r22
            java.lang.String r6 = getRequestId(r13, r0)     // Catch:{ UnknownHostException -> 0x0432, IOException -> 0x041a }
            r5 = -1
            if (r4 != r5) goto L_0x0176
            android.content.Context r5 = com.mi.mimsgsdk.utils.GlobalData.app()     // Catch:{ UnknownHostException -> 0x0436, IOException -> 0x0422 }
            boolean r5 = com.mi.mimsgsdk.utils.Network.hasNetwork(r5)     // Catch:{ UnknownHostException -> 0x0436, IOException -> 0x0422 }
            if (r5 == 0) goto L_0x015f
            r0 = r22
            recordRequestInfo(r0, r6, r4)     // Catch:{ UnknownHostException -> 0x0436, IOException -> 0x0422 }
        L_0x00e1:
            com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse r5 = new com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse     // Catch:{ UnknownHostException -> 0x0436, IOException -> 0x0422 }
            r13 = -1
            r16 = 2
            r17 = 0
            r18 = 0
            r0 = r16
            r1 = r17
            r2 = r18
            r5.<init>(r13, r0, r1, r2)     // Catch:{ UnknownHostException -> 0x0436, IOException -> 0x0422 }
            long r10 = java.lang.System.currentTimeMillis()
            long r10 = r10 - r14
            if (r4 != 0) goto L_0x00fb
            r4 = -1
        L_0x00fb:
            r6 = 200(0xc8, float:2.8E-43)
            if (r4 == r6) goto L_0x0107
            r6 = 100
            if (r4 == r6) goto L_0x0107
            r6 = 206(0xce, float:2.89E-43)
            if (r4 != r6) goto L_0x0108
        L_0x0107:
            r4 = 0
        L_0x0108:
            java.lang.String r6 = "HttpDownloadLog"
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "DownLoadErrorCode"
            java.lang.StringBuilder r12 = r12.append(r13)
            java.lang.StringBuilder r4 = r12.append(r4)
            java.lang.String r4 = r4.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r6, r4)
            java.lang.String r4 = "HttpDownloadLog"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r12 = "http downloadFile to "
            java.lang.StringBuilder r6 = r6.append(r12)
            r0 = r22
            java.lang.StringBuilder r6 = r6.append(r0)
            java.lang.String r12 = " cost "
            java.lang.StringBuilder r6 = r6.append(r12)
            java.lang.StringBuilder r6 = r6.append(r10)
            java.lang.String r10 = "ms, download size = "
            java.lang.StringBuilder r6 = r6.append(r10)
            java.lang.StringBuilder r6 = r6.append(r8)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r4, r6)
            if (r7 == 0) goto L_0x0153
            r7.close()     // Catch:{ IOException -> 0x016b }
        L_0x0153:
            r4 = r5
            goto L_0x0036
        L_0x0156:
            java.net.URLConnection r4 = r4.openConnection()     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            java.net.HttpURLConnection r4 = (java.net.HttpURLConnection) r4     // Catch:{ UnknownHostException -> 0x042d, IOException -> 0x02ea, all -> 0x0397 }
            r13 = r4
            goto L_0x0072
        L_0x015f:
            android.content.Context r5 = com.mi.mimsgsdk.utils.GlobalData.app()     // Catch:{ UnknownHostException -> 0x0436, IOException -> 0x0422 }
            boolean r5 = com.mi.mimsgsdk.utils.Network.hasNetwork(r5)     // Catch:{ UnknownHostException -> 0x0436, IOException -> 0x0422 }
            if (r5 == 0) goto L_0x00e1
            goto L_0x00e1
        L_0x016b:
            r4 = move-exception
            java.lang.String r6 = "HttpDownloadLog"
            java.lang.String r4 = r4.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r6, r4)
            goto L_0x0153
        L_0x0176:
            int r16 = r13.getContentLength()     // Catch:{ UnknownHostException -> 0x0436, IOException -> 0x0422 }
            com.mi.mimsgsdk.utils.NetworkUtils$DoneHandlerInputStream r5 = new com.mi.mimsgsdk.utils.NetworkUtils$DoneHandlerInputStream     // Catch:{ UnknownHostException -> 0x0436, IOException -> 0x0422 }
            java.io.InputStream r13 = r13.getInputStream()     // Catch:{ UnknownHostException -> 0x0436, IOException -> 0x0422 }
            r5.<init>(r13)     // Catch:{ UnknownHostException -> 0x0436, IOException -> 0x0422 }
            java.lang.String r7 = "HttpDownloadLog"
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
            r13.<init>()     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
            java.lang.String r17 = "content bytes "
            r0 = r17
            java.lang.StringBuilder r13 = r13.append(r0)     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
            r0 = r16
            java.lang.StringBuilder r13 = r13.append(r0)     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
            java.lang.String r13 = r13.toString()     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
            com.mi.milinkforgame.sdk.client.ClientLog.v(r7, r13)     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
            r7 = 10240(0x2800, float:1.4349E-41)
            byte[] r7 = new byte[r7]     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
        L_0x01a3:
            int r13 = r5.read(r7)     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
            r17 = -1
            r0 = r17
            if (r13 == r0) goto L_0x0262
            r17 = 0
            r0 = r23
            r1 = r17
            r0.write(r7, r1, r13)     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
            long r0 = (long) r13     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
            r18 = r0
            long r8 = r8 + r18
            if (r25 == 0) goto L_0x01a3
            r0 = r16
            long r0 = (long) r0     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
            r18 = r0
            r0 = r25
            r1 = r18
            r0.onDownloaded(r8, r1)     // Catch:{ UnknownHostException -> 0x01ca, IOException -> 0x0425, all -> 0x0416 }
            goto L_0x01a3
        L_0x01ca:
            r7 = move-exception
            r20 = r6
            r6 = r5
            r5 = r20
        L_0x01d0:
            r7 = 1
            long r12 = java.lang.System.currentTimeMillis()
            long r12 = r12 - r14
            if (r4 != 0) goto L_0x01d9
            r4 = -1
        L_0x01d9:
            r14 = 200(0xc8, float:2.8E-43)
            if (r4 == r14) goto L_0x01e5
            r14 = 100
            if (r4 == r14) goto L_0x01e5
            r14 = 206(0xce, float:2.89E-43)
            if (r4 != r14) goto L_0x01e6
        L_0x01e5:
            r4 = 0
        L_0x01e6:
            java.lang.String r14 = "HttpDownloadLog"
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>()
            java.lang.String r16 = "DownLoadErrorCode"
            java.lang.StringBuilder r15 = r15.append(r16)
            java.lang.StringBuilder r15 = r15.append(r4)
            java.lang.String r15 = r15.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r14, r15)
            java.lang.String r14 = "HttpDownloadLog"
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>()
            java.lang.String r16 = "http downloadFile to "
            java.lang.StringBuilder r15 = r15.append(r16)
            r0 = r22
            java.lang.StringBuilder r15 = r15.append(r0)
            java.lang.String r16 = " cost "
            java.lang.StringBuilder r15 = r15.append(r16)
            java.lang.StringBuilder r12 = r15.append(r12)
            java.lang.String r13 = "ms, download size = "
            java.lang.StringBuilder r12 = r12.append(r13)
            java.lang.StringBuilder r12 = r12.append(r8)
            java.lang.String r12 = r12.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r14, r12)
            if (r6 == 0) goto L_0x0231
            r6.close()     // Catch:{ IOException -> 0x02de }
        L_0x0231:
            r6 = r5
            r5 = r7
            r7 = r10
            r10 = r4
            r4 = r11
        L_0x0236:
            if (r4 != 0) goto L_0x0240
            r0 = r22
            recordRequestInfo(r0, r6, r10)
            com.mi.mimsgsdk.utils.AttachmentManagerUtils.updateResInvalidCoefficient(r22)
        L_0x0240:
            if (r5 == 0) goto L_0x0406
            if (r27 == 0) goto L_0x0406
            java.lang.String r5 = getSaftURL(r22)
            r0 = r22
            boolean r6 = r0.equals(r5)
            if (r6 != 0) goto L_0x0406
            r10 = 0
            r11 = 1
            r4 = r21
            r6 = r23
            r7 = r24
            r8 = r25
            r9 = r26
            com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse r4 = downloadFile(r4, r5, r6, r7, r8, r9, r10, r11)
            goto L_0x0036
        L_0x0262:
            r7 = 1
            long r16 = java.lang.System.currentTimeMillis()
            long r14 = r16 - r14
            if (r4 != 0) goto L_0x026c
            r4 = -1
        L_0x026c:
            r11 = 200(0xc8, float:2.8E-43)
            if (r4 == r11) goto L_0x0278
            r11 = 100
            if (r4 == r11) goto L_0x0278
            r11 = 206(0xce, float:2.89E-43)
            if (r4 != r11) goto L_0x0279
        L_0x0278:
            r4 = 0
        L_0x0279:
            java.lang.String r11 = "HttpDownloadLog"
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r16 = "DownLoadErrorCode"
            r0 = r16
            java.lang.StringBuilder r13 = r13.append(r0)
            java.lang.StringBuilder r13 = r13.append(r4)
            java.lang.String r13 = r13.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r11, r13)
            java.lang.String r11 = "HttpDownloadLog"
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r16 = "http downloadFile to "
            r0 = r16
            java.lang.StringBuilder r13 = r13.append(r0)
            r0 = r22
            java.lang.StringBuilder r13 = r13.append(r0)
            java.lang.String r16 = " cost "
            r0 = r16
            java.lang.StringBuilder r13 = r13.append(r0)
            java.lang.StringBuilder r13 = r13.append(r14)
            java.lang.String r14 = "ms, download size = "
            java.lang.StringBuilder r13 = r13.append(r14)
            java.lang.StringBuilder r13 = r13.append(r8)
            java.lang.String r13 = r13.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r11, r13)
            if (r5 == 0) goto L_0x02ca
            r5.close()     // Catch:{ IOException -> 0x02d3 }
        L_0x02ca:
            r5 = r12
            r20 = r4
            r4 = r7
            r7 = r10
            r10 = r20
            goto L_0x0236
        L_0x02d3:
            r5 = move-exception
            java.lang.String r11 = "HttpDownloadLog"
            java.lang.String r5 = r5.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r11, r5)
            goto L_0x02ca
        L_0x02de:
            r6 = move-exception
            java.lang.String r12 = "HttpDownloadLog"
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r12, r6)
            goto L_0x0231
        L_0x02ea:
            r4 = move-exception
            r20 = r4
            r4 = r6
            r6 = r5
            r5 = r20
        L_0x02f1:
            java.lang.String r10 = "HttpDownloadLog"
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ all -> 0x0414 }
            r13.<init>()     // Catch:{ all -> 0x0414 }
            java.lang.String r16 = "error to call url:"
            r0 = r16
            java.lang.StringBuilder r13 = r13.append(r0)     // Catch:{ all -> 0x0414 }
            r0 = r22
            java.lang.StringBuilder r13 = r13.append(r0)     // Catch:{ all -> 0x0414 }
            java.lang.String r16 = " error:"
            r0 = r16
            java.lang.StringBuilder r13 = r13.append(r0)     // Catch:{ all -> 0x0414 }
            java.lang.String r16 = r5.getMessage()     // Catch:{ all -> 0x0414 }
            r0 = r16
            java.lang.StringBuilder r13 = r13.append(r0)     // Catch:{ all -> 0x0414 }
            java.lang.String r13 = r13.toString()     // Catch:{ all -> 0x0414 }
            com.mi.milinkforgame.sdk.client.ClientLog.e(r10, r13, r5)     // Catch:{ all -> 0x0414 }
            long r16 = java.lang.System.currentTimeMillis()
            long r14 = r16 - r14
            if (r4 != 0) goto L_0x0328
            r4 = -1
        L_0x0328:
            r10 = 200(0xc8, float:2.8E-43)
            if (r4 == r10) goto L_0x0334
            r10 = 100
            if (r4 == r10) goto L_0x0334
            r10 = 206(0xce, float:2.89E-43)
            if (r4 != r10) goto L_0x0335
        L_0x0334:
            r4 = 0
        L_0x0335:
            java.lang.String r10 = "HttpDownloadLog"
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r16 = "DownLoadErrorCode"
            r0 = r16
            java.lang.StringBuilder r13 = r13.append(r0)
            java.lang.StringBuilder r13 = r13.append(r4)
            java.lang.String r13 = r13.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r10, r13)
            java.lang.String r10 = "HttpDownloadLog"
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r16 = "http downloadFile to "
            r0 = r16
            java.lang.StringBuilder r13 = r13.append(r0)
            r0 = r22
            java.lang.StringBuilder r13 = r13.append(r0)
            java.lang.String r16 = " cost "
            r0 = r16
            java.lang.StringBuilder r13 = r13.append(r0)
            java.lang.StringBuilder r13 = r13.append(r14)
            java.lang.String r14 = "ms, download size = "
            java.lang.StringBuilder r13 = r13.append(r14)
            java.lang.StringBuilder r13 = r13.append(r8)
            java.lang.String r13 = r13.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r10, r13)
            if (r7 == 0) goto L_0x0386
            r7.close()     // Catch:{ IOException -> 0x038c }
        L_0x0386:
            r7 = r5
            r10 = r4
            r4 = r11
            r5 = r12
            goto L_0x0236
        L_0x038c:
            r7 = move-exception
            java.lang.String r10 = "HttpDownloadLog"
            java.lang.String r7 = r7.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r10, r7)
            goto L_0x0386
        L_0x0397:
            r4 = move-exception
            r5 = r4
            r4 = r6
        L_0x039a:
            long r10 = java.lang.System.currentTimeMillis()
            long r10 = r10 - r14
            if (r4 != 0) goto L_0x03a2
            r4 = -1
        L_0x03a2:
            r6 = 200(0xc8, float:2.8E-43)
            if (r4 == r6) goto L_0x03ae
            r6 = 100
            if (r4 == r6) goto L_0x03ae
            r6 = 206(0xce, float:2.89E-43)
            if (r4 != r6) goto L_0x03af
        L_0x03ae:
            r4 = 0
        L_0x03af:
            java.lang.String r6 = "HttpDownloadLog"
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "DownLoadErrorCode"
            java.lang.StringBuilder r12 = r12.append(r13)
            java.lang.StringBuilder r4 = r12.append(r4)
            java.lang.String r4 = r4.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r6, r4)
            java.lang.String r4 = "HttpDownloadLog"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r12 = "http downloadFile to "
            java.lang.StringBuilder r6 = r6.append(r12)
            r0 = r22
            java.lang.StringBuilder r6 = r6.append(r0)
            java.lang.String r12 = " cost "
            java.lang.StringBuilder r6 = r6.append(r12)
            java.lang.StringBuilder r6 = r6.append(r10)
            java.lang.String r10 = "ms, download size = "
            java.lang.StringBuilder r6 = r6.append(r10)
            java.lang.StringBuilder r6 = r6.append(r8)
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r4, r6)
            if (r7 == 0) goto L_0x03fa
            r7.close()     // Catch:{ IOException -> 0x03fb }
        L_0x03fa:
            throw r5
        L_0x03fb:
            r4 = move-exception
            java.lang.String r6 = "HttpDownloadLog"
            java.lang.String r4 = r4.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r6, r4)
            goto L_0x03fa
        L_0x0406:
            com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse r5 = new com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse
            if (r4 == 0) goto L_0x0412
            r4 = 3
        L_0x040b:
            int r6 = (int) r8
            r5.<init>(r10, r4, r6, r7)
            r4 = r5
            goto L_0x0036
        L_0x0412:
            r4 = 2
            goto L_0x040b
        L_0x0414:
            r5 = move-exception
            goto L_0x039a
        L_0x0416:
            r6 = move-exception
            r7 = r5
            r5 = r6
            goto L_0x039a
        L_0x041a:
            r6 = move-exception
            r20 = r6
            r6 = r5
            r5 = r20
            goto L_0x02f1
        L_0x0422:
            r5 = move-exception
            goto L_0x02f1
        L_0x0425:
            r7 = move-exception
            r20 = r7
            r7 = r5
            r5 = r20
            goto L_0x02f1
        L_0x042d:
            r4 = move-exception
            r4 = r6
            r6 = r7
            goto L_0x01d0
        L_0x0432:
            r6 = move-exception
            r6 = r7
            goto L_0x01d0
        L_0x0436:
            r5 = move-exception
            r5 = r6
            r6 = r7
            goto L_0x01d0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.HttpDownloader.downloadFile(android.content.Context, java.lang.String, java.io.OutputStream, com.mi.mimsgsdk.utils.DiskLruCache$Snapshot, com.mi.mimsgsdk.utils.HttpDownloader$OnDownloadDiskCacheProgress, com.mi.mimsgsdk.utils.HttpDownloader$OnDiskLruCacheDownloadedTask, boolean, boolean):com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse");
    }

    public static DownloadResponse downloadFile(String str, File file, OnDownloadProgress onDownloadProgress, boolean z) {
        return downloadFile(str, file, onDownloadProgress, z, true, false);
    }

    /* JADX WARNING: Removed duplicated region for block: B:102:0x0389 A[SYNTHETIC, Splitter:B:102:0x0389] */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x038e A[SYNTHETIC, Splitter:B:105:0x038e] */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x044b A[SYNTHETIC, Splitter:B:123:0x044b] */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x0450 A[SYNTHETIC, Splitter:B:126:0x0450] */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x04c4 A[SYNTHETIC, Splitter:B:140:0x04c4] */
    /* JADX WARNING: Removed duplicated region for block: B:143:0x04c9 A[SYNTHETIC, Splitter:B:143:0x04c9] */
    /* JADX WARNING: Removed duplicated region for block: B:153:0x052a A[SYNTHETIC, Splitter:B:153:0x052a] */
    /* JADX WARNING: Removed duplicated region for block: B:156:0x052f A[SYNTHETIC, Splitter:B:156:0x052f] */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0549  */
    /* JADX WARNING: Removed duplicated region for block: B:182:0x0582  */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x058e  */
    /* JADX WARNING: Removed duplicated region for block: B:191:0x05a6  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x02eb  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x02ee  */
    @android.support.annotation.WorkerThread
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.mi.mimsgsdk.utils.HttpDownloader.DownloadResponse downloadFile(java.lang.String r30, java.io.File r31, com.mi.mimsgsdk.utils.HttpDownloader.OnDownloadProgress r32, boolean r33, boolean r34, boolean r35) {
        /*
            r17 = 0
            boolean r6 = com.mi.mimsgsdk.utils.AttachmentManagerUtils.isEffectiveRes(r30)
            if (r6 != 0) goto L_0x0038
            java.lang.String r6 = "HttpDownloadLog"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Invalid_resource: Try to download invalid resource after "
            java.lang.StringBuilder r7 = r7.append(r8)
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> r8 = com.mi.mimsgsdk.utils.AttachmentManagerUtils.mFailedDownloadingResStatic
            r0 = r30
            java.lang.Object r8 = r8.get(r0)
            java.lang.StringBuilder r7 = r7.append(r8)
            java.lang.String r8 = " times try"
            java.lang.StringBuilder r7 = r7.append(r8)
            java.lang.String r7 = r7.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r6, r7)
            com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse r6 = new com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse
            r7 = -2
            r8 = 2
            r9 = 0
            r10 = 0
            r6.<init>(r7, r8, r9, r10)
        L_0x0037:
            return r6
        L_0x0038:
            r6 = 0
            r0 = r30
            com.mi.mimsgsdk.upload.AttachmentUtils.addDownloadingResource(r0, r6)
            java.lang.System.currentTimeMillis()
            r16 = 0
            r7 = 0
            r10 = 0
            r12 = 0
            r11 = 0
            r9 = 0
            long r22 = java.lang.System.currentTimeMillis()
            r15 = 0
            java.lang.String r8 = ""
            java.net.URL r6 = new java.net.URL     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r0 = r30
            r6.<init>(r0)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.lang.String r14 = r6.getHost()     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r18 = 1
            java.net.HttpURLConnection.setFollowRedirects(r18)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            boolean r18 = com.mi.mimsgsdk.utils.Network.isCmwap()     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            if (r18 == 0) goto L_0x01d4
            java.lang.String r6 = com.mi.mimsgsdk.utils.Network.getCMWapUrl(r6)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.net.URL r18 = new java.net.URL     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r0 = r18
            r0.<init>(r6)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.net.URLConnection r6 = r18.openConnection()     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.net.HttpURLConnection r6 = (java.net.HttpURLConnection) r6     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.lang.String r18 = "X-Online-Host"
            r0 = r18
            r6.setRequestProperty(r0, r14)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r20 = r6
        L_0x0081:
            java.lang.String r6 = "Connection"
            java.lang.String r14 = "Keep-Alive"
            r0 = r20
            r0.setRequestProperty(r6, r14)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.lang.String r6 = "Accept-Encoding"
            java.lang.String r14 = "identity"
            r0 = r20
            r0.setRequestProperty(r6, r14)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            if (r35 == 0) goto L_0x00a5
            java.lang.String r6 = "Host"
            java.lang.String r14 = "kss.ksyun.com"
            r0 = r20
            r0.setRequestProperty(r6, r14)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.lang.String r6 = "sun.net.http.allowRestrictedHeaders"
            java.lang.String r14 = "true"
            java.lang.System.setProperty(r6, r14)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
        L_0x00a5:
            long r18 = r31.length()     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            if (r33 == 0) goto L_0x0108
            r24 = 0
            int r6 = (r18 > r24 ? 1 : (r18 == r24 ? 0 : -1))
            if (r6 == 0) goto L_0x0108
            java.lang.String r6 = "Range"
            java.lang.String r14 = "bytes=%d-"
            r21 = 1
            r0 = r21
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r21 = r0
            r24 = 0
            java.lang.Long r25 = java.lang.Long.valueOf(r18)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r21[r24] = r25     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r0 = r21
            java.lang.String r14 = java.lang.String.format(r14, r0)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r0 = r20
            r0.setRequestProperty(r6, r14)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.lang.String r6 = "HttpDownloadLog"
            java.lang.StringBuilder r14 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r14.<init>()     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.lang.String r21 = "Range:"
            r0 = r21
            java.lang.StringBuilder r14 = r14.append(r0)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.lang.String r21 = "bytes=%d-"
            r24 = 1
            r0 = r24
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r24 = r0
            r25 = 0
            java.lang.Long r26 = java.lang.Long.valueOf(r18)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r24[r25] = r26     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r0 = r21
            r1 = r24
            java.lang.String r21 = java.lang.String.format(r0, r1)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r0 = r21
            java.lang.StringBuilder r14 = r14.append(r0)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.lang.String r14 = r14.toString()     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            com.mi.milinkforgame.sdk.client.ClientLog.v(r6, r14)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r12 = r18
        L_0x0108:
            setConnectionTimeout(r20)     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r20.connect()     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            int r14 = r20.getResponseCode()     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.lang.String r6 = "HttpDownloadLog"
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            r10.<init>()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            java.lang.String r21 = "the response code is "
            r0 = r21
            java.lang.StringBuilder r10 = r10.append(r0)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            java.lang.StringBuilder r10 = r10.append(r14)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            java.lang.String r21 = ", connected in "
            r0 = r21
            java.lang.StringBuilder r10 = r10.append(r0)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            long r24 = java.lang.System.currentTimeMillis()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            long r24 = r24 - r22
            r0 = r24
            java.lang.StringBuilder r10 = r10.append(r0)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            java.lang.String r10 = r10.toString()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            com.mi.milinkforgame.sdk.client.ClientLog.v(r6, r10)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            r0 = r20
            r1 = r30
            java.lang.String r8 = getRequestId(r0, r1)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            r6 = -1
            if (r14 != r6) goto L_0x01f4
            java.lang.String r6 = "HttpDownloadLog"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            r7.<init>()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            java.lang.String r10 = "DownLoadErrorCode"
            java.lang.StringBuilder r7 = r7.append(r10)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            java.lang.StringBuilder r7 = r7.append(r14)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            java.lang.String r7 = r7.toString()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            com.mi.milinkforgame.sdk.client.ClientLog.v(r6, r7)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            android.content.Context r6 = com.mi.mimsgsdk.utils.GlobalData.app()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            boolean r6 = com.mi.mimsgsdk.utils.Network.hasNetwork(r6)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            if (r6 == 0) goto L_0x01de
            r0 = r30
            recordRequestInfo(r0, r8, r14)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
        L_0x0172:
            com.mi.mimsgsdk.upload.AttachmentUtils.removeDownloadingResource(r30)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse r6 = new com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            r7 = -1
            r10 = 2
            r18 = 0
            r19 = 0
            r0 = r18
            r1 = r19
            r6.<init>(r7, r10, r0, r1)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            long r12 = java.lang.System.currentTimeMillis()
            long r12 = r12 - r22
            java.lang.String r7 = "HttpDownloadLog"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r10 = "http downloadFile to "
            java.lang.StringBuilder r8 = r8.append(r10)
            r0 = r30
            java.lang.StringBuilder r8 = r8.append(r0)
            java.lang.String r10 = " cost "
            java.lang.StringBuilder r8 = r8.append(r10)
            java.lang.StringBuilder r8 = r8.append(r12)
            java.lang.String r10 = "ms, total size = "
            java.lang.StringBuilder r8 = r8.append(r10)
            long r12 = r31.length()
            java.lang.StringBuilder r8 = r8.append(r12)
            java.lang.String r8 = r8.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r7, r8)
            if (r9 == 0) goto L_0x01c1
            r9.close()     // Catch:{ IOException -> 0x01e9 }
        L_0x01c1:
            if (r11 == 0) goto L_0x0037
            r11.close()     // Catch:{ IOException -> 0x01c8 }
            goto L_0x0037
        L_0x01c8:
            r7 = move-exception
            java.lang.String r8 = "HttpDownloadLog"
            java.lang.String r7 = r7.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r8, r7)
            goto L_0x0037
        L_0x01d4:
            java.net.URLConnection r6 = r6.openConnection()     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            java.net.HttpURLConnection r6 = (java.net.HttpURLConnection) r6     // Catch:{ UnknownHostException -> 0x05d0, IOException -> 0x03d5, Throwable -> 0x0476 }
            r20 = r6
            goto L_0x0081
        L_0x01de:
            android.content.Context r6 = com.mi.mimsgsdk.utils.GlobalData.app()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            boolean r6 = com.mi.mimsgsdk.utils.Network.hasNetwork(r6)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            if (r6 == 0) goto L_0x0172
            goto L_0x0172
        L_0x01e9:
            r7 = move-exception
            java.lang.String r8 = "HttpDownloadLog"
            java.lang.String r7 = r7.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r8, r7)
            goto L_0x01c1
        L_0x01f4:
            if (r33 == 0) goto L_0x0215
            r24 = 0
            int r6 = (r18 > r24 ? 1 : (r18 == r24 ? 0 : -1))
            if (r6 <= 0) goto L_0x0215
            r6 = 206(0xce, float:2.89E-43)
            if (r14 == r6) goto L_0x0215
            r33 = 0
            r18 = 0
            r12 = 0
            boolean r6 = r31.exists()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            if (r6 == 0) goto L_0x0215
            boolean r6 = r31.isFile()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            if (r6 == 0) goto L_0x0215
            r31.delete()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
        L_0x0215:
            if (r33 == 0) goto L_0x0315
            int r6 = r20.getContentLength()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            r0 = r18
            int r10 = (int) r0     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            int r6 = r6 + r10
        L_0x021f:
            if (r32 == 0) goto L_0x022d
            long r0 = (long) r6     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            r24 = r0
            r0 = r32
            r1 = r18
            r3 = r24
            r0.onDownloaded(r1, r3)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
        L_0x022d:
            com.mi.mimsgsdk.utils.NetworkUtils$DoneHandlerInputStream r10 = new com.mi.mimsgsdk.utils.NetworkUtils$DoneHandlerInputStream     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            java.io.InputStream r18 = r20.getInputStream()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            r0 = r18
            r10.<init>(r0)     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            java.lang.String r9 = "HttpDownloadLog"
            java.lang.StringBuilder r18 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x05e3, IOException -> 0x05c5, Throwable -> 0x05b8, all -> 0x05ac }
            r18.<init>()     // Catch:{ UnknownHostException -> 0x05e3, IOException -> 0x05c5, Throwable -> 0x05b8, all -> 0x05ac }
            java.lang.String r19 = "content bytes "
            java.lang.StringBuilder r18 = r18.append(r19)     // Catch:{ UnknownHostException -> 0x05e3, IOException -> 0x05c5, Throwable -> 0x05b8, all -> 0x05ac }
            r0 = r18
            java.lang.StringBuilder r18 = r0.append(r6)     // Catch:{ UnknownHostException -> 0x05e3, IOException -> 0x05c5, Throwable -> 0x05b8, all -> 0x05ac }
            java.lang.String r18 = r18.toString()     // Catch:{ UnknownHostException -> 0x05e3, IOException -> 0x05c5, Throwable -> 0x05b8, all -> 0x05ac }
            r0 = r18
            com.mi.milinkforgame.sdk.client.ClientLog.v(r9, r0)     // Catch:{ UnknownHostException -> 0x05e3, IOException -> 0x05c5, Throwable -> 0x05b8, all -> 0x05ac }
            r9 = 10240(0x2800, float:1.4349E-41)
            byte[] r0 = new byte[r9]     // Catch:{ UnknownHostException -> 0x05e3, IOException -> 0x05c5, Throwable -> 0x05b8, all -> 0x05ac }
            r18 = r0
            java.io.FileOutputStream r9 = new java.io.FileOutputStream     // Catch:{ UnknownHostException -> 0x05e3, IOException -> 0x05c5, Throwable -> 0x05b8, all -> 0x05ac }
            r0 = r31
            r1 = r33
            r9.<init>(r0, r1)     // Catch:{ UnknownHostException -> 0x05e3, IOException -> 0x05c5, Throwable -> 0x05b8, all -> 0x05ac }
        L_0x0263:
            r0 = r18
            int r11 = r10.read(r0)     // Catch:{ UnknownHostException -> 0x033c, IOException -> 0x05ca, Throwable -> 0x05bc, all -> 0x05b0 }
            r19 = -1
            r0 = r19
            if (r11 == r0) goto L_0x05ee
            com.mi.mimsgsdk.utils.NetworkUtilsCallback r19 = networkCallback     // Catch:{ UnknownHostException -> 0x033c, IOException -> 0x05ca, Throwable -> 0x05bc, all -> 0x05b0 }
            if (r19 == 0) goto L_0x031b
            com.mi.mimsgsdk.utils.NetworkUtilsCallback r19 = networkCallback     // Catch:{ UnknownHostException -> 0x033c, IOException -> 0x05ca, Throwable -> 0x05bc, all -> 0x05b0 }
            r0 = r19
            r1 = r30
            boolean r19 = r0.continueDownloading(r1)     // Catch:{ UnknownHostException -> 0x033c, IOException -> 0x05ca, Throwable -> 0x05bc, all -> 0x05b0 }
            if (r19 != 0) goto L_0x031b
            r11 = 1
        L_0x0280:
            if (r11 != 0) goto L_0x05eb
            r6 = 1
        L_0x0283:
            long r18 = java.lang.System.currentTimeMillis()
            long r18 = r18 - r22
            java.lang.String r7 = "HttpDownloadLog"
            java.lang.StringBuilder r16 = new java.lang.StringBuilder
            r16.<init>()
            java.lang.String r20 = "http downloadFile to "
            r0 = r16
            r1 = r20
            java.lang.StringBuilder r16 = r0.append(r1)
            r0 = r16
            r1 = r30
            java.lang.StringBuilder r16 = r0.append(r1)
            java.lang.String r20 = " cost "
            r0 = r16
            r1 = r20
            java.lang.StringBuilder r16 = r0.append(r1)
            r0 = r16
            r1 = r18
            java.lang.StringBuilder r16 = r0.append(r1)
            java.lang.String r18 = "ms, total size = "
            r0 = r16
            r1 = r18
            java.lang.StringBuilder r16 = r0.append(r1)
            long r18 = r31.length()
            r0 = r16
            r1 = r18
            java.lang.StringBuilder r16 = r0.append(r1)
            java.lang.String r16 = r16.toString()
            r0 = r16
            com.mi.milinkforgame.sdk.client.ClientLog.v(r7, r0)
            if (r10 == 0) goto L_0x02d8
            r10.close()     // Catch:{ IOException -> 0x03a5 }
        L_0x02d8:
            if (r9 == 0) goto L_0x02dd
            r9.close()     // Catch:{ IOException -> 0x03b1 }
        L_0x02dd:
            r7 = r8
            r10 = r15
            r9 = r33
            r15 = r17
            r27 = r11
            r11 = r6
            r6 = r14
            r14 = r27
        L_0x02e9:
            if (r11 == 0) goto L_0x0549
            r8 = r6
        L_0x02ec:
            if (r11 != 0) goto L_0x0580
            r0 = r30
            recordRequestInfo(r0, r7, r8)
            com.mi.mimsgsdk.utils.AttachmentManagerUtils.updateResInvalidCoefficient(r30)
            if (r15 == 0) goto L_0x0580
            if (r34 == 0) goto L_0x0580
            java.lang.String r6 = getSaftURL(r30)
            r0 = r30
            boolean r7 = r0.equals(r6)
            if (r7 != 0) goto L_0x0580
            com.mi.mimsgsdk.upload.AttachmentUtils.removeDownloadingResource(r30)
            r10 = 0
            r11 = 1
            r7 = r31
            r8 = r32
            com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse r6 = downloadFile(r6, r7, r8, r9, r10, r11)
            goto L_0x0037
        L_0x0315:
            int r6 = r20.getContentLength()     // Catch:{ UnknownHostException -> 0x05db, IOException -> 0x05c1, Throwable -> 0x05b5 }
            goto L_0x021f
        L_0x031b:
            r19 = 0
            r0 = r18
            r1 = r19
            r9.write(r0, r1, r11)     // Catch:{ UnknownHostException -> 0x033c, IOException -> 0x05ca, Throwable -> 0x05bc, all -> 0x05b0 }
            long r0 = (long) r11     // Catch:{ UnknownHostException -> 0x033c, IOException -> 0x05ca, Throwable -> 0x05bc, all -> 0x05b0 }
            r20 = r0
            long r12 = r12 + r20
            if (r32 == 0) goto L_0x0335
            long r0 = (long) r6     // Catch:{ UnknownHostException -> 0x033c, IOException -> 0x05ca, Throwable -> 0x05bc, all -> 0x05b0 }
            r20 = r0
            r0 = r32
            r1 = r20
            r0.onDownloaded(r12, r1)     // Catch:{ UnknownHostException -> 0x033c, IOException -> 0x05ca, Throwable -> 0x05bc, all -> 0x05b0 }
        L_0x0335:
            r0 = r30
            com.mi.mimsgsdk.upload.AttachmentUtils.addDownloadingResource(r0, r12)     // Catch:{ UnknownHostException -> 0x033c, IOException -> 0x05ca, Throwable -> 0x05bc, all -> 0x05b0 }
            goto L_0x0263
        L_0x033c:
            r6 = move-exception
            r7 = r8
            r8 = r10
            r10 = r12
            r12 = r14
        L_0x0341:
            r6 = 0
            r13 = 1
            long r18 = java.lang.System.currentTimeMillis()
            long r18 = r18 - r22
            java.lang.String r14 = "HttpDownloadLog"
            java.lang.StringBuilder r17 = new java.lang.StringBuilder
            r17.<init>()
            java.lang.String r20 = "http downloadFile to "
            r0 = r17
            r1 = r20
            java.lang.StringBuilder r17 = r0.append(r1)
            r0 = r17
            r1 = r30
            java.lang.StringBuilder r17 = r0.append(r1)
            java.lang.String r20 = " cost "
            r0 = r17
            r1 = r20
            java.lang.StringBuilder r17 = r0.append(r1)
            java.lang.StringBuilder r17 = r17.append(r18)
            java.lang.String r18 = "ms, total size = "
            java.lang.StringBuilder r17 = r17.append(r18)
            long r18 = r31.length()
            java.lang.StringBuilder r17 = r17.append(r18)
            java.lang.String r17 = r17.toString()
            r0 = r17
            com.mi.milinkforgame.sdk.client.ClientLog.v(r14, r0)
            if (r8 == 0) goto L_0x038c
            r8.close()     // Catch:{ IOException -> 0x03be }
        L_0x038c:
            if (r9 == 0) goto L_0x0391
            r9.close()     // Catch:{ IOException -> 0x03c9 }
        L_0x0391:
            r14 = r16
            r9 = r33
            r27 = r12
            r28 = r6
            r6 = r27
            r29 = r15
            r15 = r13
            r12 = r10
            r10 = r29
            r11 = r28
            goto L_0x02e9
        L_0x03a5:
            r7 = move-exception
            java.lang.String r10 = "HttpDownloadLog"
            java.lang.String r7 = r7.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r10, r7)
            goto L_0x02d8
        L_0x03b1:
            r6 = move-exception
            java.lang.String r7 = "HttpDownloadLog"
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r7, r6)
            r6 = 0
            goto L_0x02dd
        L_0x03be:
            r8 = move-exception
            java.lang.String r14 = "HttpDownloadLog"
            java.lang.String r8 = r8.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r14, r8)
            goto L_0x038c
        L_0x03c9:
            r6 = move-exception
            java.lang.String r8 = "HttpDownloadLog"
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r8, r6)
            r6 = 0
            goto L_0x0391
        L_0x03d5:
            r6 = move-exception
            r7 = r6
            r14 = r10
        L_0x03d8:
            r6 = 0
            java.lang.String r10 = "HttpDownloadLog"
            java.lang.StringBuilder r15 = new java.lang.StringBuilder     // Catch:{ all -> 0x04ef }
            r15.<init>()     // Catch:{ all -> 0x04ef }
            java.lang.String r18 = "error to call url:"
            r0 = r18
            java.lang.StringBuilder r15 = r15.append(r0)     // Catch:{ all -> 0x04ef }
            r0 = r30
            java.lang.StringBuilder r15 = r15.append(r0)     // Catch:{ all -> 0x04ef }
            java.lang.String r18 = " error:"
            r0 = r18
            java.lang.StringBuilder r15 = r15.append(r0)     // Catch:{ all -> 0x04ef }
            java.lang.String r18 = r7.getMessage()     // Catch:{ all -> 0x04ef }
            r0 = r18
            java.lang.StringBuilder r15 = r15.append(r0)     // Catch:{ all -> 0x04ef }
            java.lang.String r15 = r15.toString()     // Catch:{ all -> 0x04ef }
            com.mi.milinkforgame.sdk.client.ClientLog.e(r10, r15, r7)     // Catch:{ all -> 0x04ef }
            long r18 = java.lang.System.currentTimeMillis()
            long r18 = r18 - r22
            java.lang.String r10 = "HttpDownloadLog"
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>()
            java.lang.String r20 = "http downloadFile to "
            r0 = r20
            java.lang.StringBuilder r15 = r15.append(r0)
            r0 = r30
            java.lang.StringBuilder r15 = r15.append(r0)
            java.lang.String r20 = " cost "
            r0 = r20
            java.lang.StringBuilder r15 = r15.append(r0)
            r0 = r18
            java.lang.StringBuilder r15 = r15.append(r0)
            java.lang.String r18 = "ms, total size = "
            r0 = r18
            java.lang.StringBuilder r15 = r15.append(r0)
            long r18 = r31.length()
            r0 = r18
            java.lang.StringBuilder r15 = r15.append(r0)
            java.lang.String r15 = r15.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r10, r15)
            if (r9 == 0) goto L_0x044e
            r9.close()     // Catch:{ IOException -> 0x045f }
        L_0x044e:
            if (r11 == 0) goto L_0x0453
            r11.close()     // Catch:{ IOException -> 0x046a }
        L_0x0453:
            r10 = r7
            r11 = r6
            r15 = r17
            r9 = r33
            r6 = r14
            r7 = r8
            r14 = r16
            goto L_0x02e9
        L_0x045f:
            r9 = move-exception
            java.lang.String r10 = "HttpDownloadLog"
            java.lang.String r9 = r9.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r10, r9)
            goto L_0x044e
        L_0x046a:
            r6 = move-exception
            java.lang.String r9 = "HttpDownloadLog"
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r9, r6)
            r6 = 0
            goto L_0x0453
        L_0x0476:
            r6 = move-exception
            r14 = r10
        L_0x0478:
            java.lang.String r7 = "HttpDownloadLog"
            java.lang.String r10 = "unexpected error"
            com.mi.milinkforgame.sdk.client.ClientLog.e(r7, r10, r6)     // Catch:{ all -> 0x04ef }
            r6 = 0
            long r18 = java.lang.System.currentTimeMillis()
            long r18 = r18 - r22
            java.lang.String r7 = "HttpDownloadLog"
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r20 = "http downloadFile to "
            r0 = r20
            java.lang.StringBuilder r10 = r10.append(r0)
            r0 = r30
            java.lang.StringBuilder r10 = r10.append(r0)
            java.lang.String r20 = " cost "
            r0 = r20
            java.lang.StringBuilder r10 = r10.append(r0)
            r0 = r18
            java.lang.StringBuilder r10 = r10.append(r0)
            java.lang.String r18 = "ms, total size = "
            r0 = r18
            java.lang.StringBuilder r10 = r10.append(r0)
            long r18 = r31.length()
            r0 = r18
            java.lang.StringBuilder r10 = r10.append(r0)
            java.lang.String r10 = r10.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r7, r10)
            if (r9 == 0) goto L_0x04c7
            r9.close()     // Catch:{ IOException -> 0x04d8 }
        L_0x04c7:
            if (r11 == 0) goto L_0x04cc
            r11.close()     // Catch:{ IOException -> 0x04e3 }
        L_0x04cc:
            r7 = r8
            r10 = r15
            r11 = r6
            r9 = r33
            r15 = r17
            r6 = r14
            r14 = r16
            goto L_0x02e9
        L_0x04d8:
            r7 = move-exception
            java.lang.String r9 = "HttpDownloadLog"
            java.lang.String r7 = r7.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r9, r7)
            goto L_0x04c7
        L_0x04e3:
            r6 = move-exception
            java.lang.String r7 = "HttpDownloadLog"
            java.lang.String r6 = r6.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r7, r6)
            r6 = 0
            goto L_0x04cc
        L_0x04ef:
            r6 = move-exception
        L_0x04f0:
            long r12 = java.lang.System.currentTimeMillis()
            long r12 = r12 - r22
            java.lang.String r7 = "HttpDownloadLog"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r10 = "http downloadFile to "
            java.lang.StringBuilder r8 = r8.append(r10)
            r0 = r30
            java.lang.StringBuilder r8 = r8.append(r0)
            java.lang.String r10 = " cost "
            java.lang.StringBuilder r8 = r8.append(r10)
            java.lang.StringBuilder r8 = r8.append(r12)
            java.lang.String r10 = "ms, total size = "
            java.lang.StringBuilder r8 = r8.append(r10)
            long r12 = r31.length()
            java.lang.StringBuilder r8 = r8.append(r12)
            java.lang.String r8 = r8.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.v(r7, r8)
            if (r9 == 0) goto L_0x052d
            r9.close()     // Catch:{ IOException -> 0x0533 }
        L_0x052d:
            if (r11 == 0) goto L_0x0532
            r11.close()     // Catch:{ IOException -> 0x053e }
        L_0x0532:
            throw r6
        L_0x0533:
            r7 = move-exception
            java.lang.String r8 = "HttpDownloadLog"
            java.lang.String r7 = r7.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r8, r7)
            goto L_0x052d
        L_0x053e:
            r7 = move-exception
            java.lang.String r8 = "HttpDownloadLog"
            java.lang.String r7 = r7.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r8, r7)
            goto L_0x0532
        L_0x0549:
            if (r6 != 0) goto L_0x054c
            r6 = -1
        L_0x054c:
            r8 = 200(0xc8, float:2.8E-43)
            if (r6 == r8) goto L_0x0558
            r8 = 100
            if (r6 == r8) goto L_0x0558
            r8 = 206(0xce, float:2.89E-43)
            if (r6 != r8) goto L_0x0559
        L_0x0558:
            r6 = 0
        L_0x0559:
            android.content.Context r8 = com.mi.mimsgsdk.utils.GlobalData.app()
            boolean r8 = com.mi.mimsgsdk.utils.Network.hasNetwork(r8)
            if (r8 != 0) goto L_0x0566
            r8 = r6
            goto L_0x02ec
        L_0x0566:
            android.content.Context r8 = com.mi.mimsgsdk.utils.GlobalData.app()
            boolean r8 = com.mi.mimsgsdk.utils.Network.hasNetwork(r8)
            if (r8 == 0) goto L_0x0573
            r8 = r6
            goto L_0x02ec
        L_0x0573:
            android.content.Context r8 = com.mi.mimsgsdk.utils.GlobalData.app()
            boolean r8 = com.mi.mimsgsdk.utils.Network.hasNetwork(r8)
            if (r8 == 0) goto L_0x057d
        L_0x057d:
            r8 = r6
            goto L_0x02ec
        L_0x0580:
            if (r32 == 0) goto L_0x0587
            if (r14 == 0) goto L_0x0596
            r32.onCanceled()
        L_0x0587:
            com.mi.mimsgsdk.upload.AttachmentUtils.removeDownloadingResource(r30)
            com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse r7 = new com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse
            if (r14 == 0) goto L_0x05a6
            r6 = 1
        L_0x058f:
            int r9 = (int) r12
            r7.<init>(r8, r6, r9, r10)
            r6 = r7
            goto L_0x0037
        L_0x0596:
            if (r11 != 0) goto L_0x059c
            r32.onFailed()
            goto L_0x0587
        L_0x059c:
            java.lang.String r6 = r31.getAbsolutePath()
            r0 = r32
            r0.onCompleted(r6)
            goto L_0x0587
        L_0x05a6:
            if (r11 == 0) goto L_0x05aa
            r6 = 3
            goto L_0x058f
        L_0x05aa:
            r6 = 2
            goto L_0x058f
        L_0x05ac:
            r6 = move-exception
            r9 = r10
            goto L_0x04f0
        L_0x05b0:
            r6 = move-exception
            r11 = r9
            r9 = r10
            goto L_0x04f0
        L_0x05b5:
            r6 = move-exception
            goto L_0x0478
        L_0x05b8:
            r6 = move-exception
            r9 = r10
            goto L_0x0478
        L_0x05bc:
            r6 = move-exception
            r11 = r9
            r9 = r10
            goto L_0x0478
        L_0x05c1:
            r6 = move-exception
            r7 = r6
            goto L_0x03d8
        L_0x05c5:
            r6 = move-exception
            r7 = r6
            r9 = r10
            goto L_0x03d8
        L_0x05ca:
            r6 = move-exception
            r7 = r6
            r11 = r9
            r9 = r10
            goto L_0x03d8
        L_0x05d0:
            r6 = move-exception
            r7 = r8
            r8 = r9
            r9 = r11
            r27 = r12
            r12 = r10
            r10 = r27
            goto L_0x0341
        L_0x05db:
            r6 = move-exception
            r7 = r8
            r8 = r9
            r9 = r11
            r10 = r12
            r12 = r14
            goto L_0x0341
        L_0x05e3:
            r6 = move-exception
            r7 = r8
            r9 = r11
            r8 = r10
            r10 = r12
            r12 = r14
            goto L_0x0341
        L_0x05eb:
            r6 = r7
            goto L_0x0283
        L_0x05ee:
            r11 = r16
            goto L_0x0280
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.HttpDownloader.downloadFile(java.lang.String, java.io.File, com.mi.mimsgsdk.utils.HttpDownloader$OnDownloadProgress, boolean, boolean, boolean):com.mi.mimsgsdk.utils.HttpDownloader$DownloadResponse");
    }

    public static void setConnectionTimeout(HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(15000);
    }

    public static void hideSoftKeyboard(Activity activity) {
        if (activity != null && !activity.isFinishing()) {
            InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
            if (inputMethodManager != null && activity.getCurrentFocus() != null) {
                inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 0);
            }
        }
    }

    public static void showSoftKeyboard(Activity activity, EditText editText) {
        if (activity != null && !activity.isFinishing()) {
            editText.requestFocus();
            ((InputMethodManager) activity.getSystemService("input_method")).showSoftInput(editText, 0);
        }
    }

    private static void recordRequestInfo(String str, String str2, int i) {
        String ks3ServiceIP = getKs3ServiceIP(str);
        ClientLog.v(DOWNLOAD_LOG, "Service ip:" + ks3ServiceIP);
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(new BasicNameValuePair("LogRequestId", str2));
            arrayList.add(new BasicNameValuePair("LogTargetIp", ks3ServiceIP));
            Network.doHttpPost(GlobalData.app(), LOG_SERVER_URL, arrayList);
            ClientLog.v(DOWNLOAD_LOG, arrayList.toString());
        } catch (IOException e) {
            ClientLog.e(DOWNLOAD_LOG, e.toString());
        }
    }

    private static String getSaftURL(String str) {
        return str.replace(getKs3Host(str), getSaftIP());
    }

    private static String parse(String str) {
        try {
            String string = new JSONObject(str).getString("ct");
            return string.substring(0, string.indexOf(Constants.ACCEPT_TIME_SEPARATOR_SP));
        } catch (JSONException e) {
            ThrowableExtension.printStackTrace(e);
            return "";
        }
    }

    private static String getKs3ServiceIP(String str) {
        String str2 = "";
        try {
            return InetAddress.getByName(getKs3Host(str)).getHostAddress();
        } catch (UnknownHostException e) {
            ThrowableExtension.printStackTrace(e);
            ClientLog.i(DOWNLOAD_LOG, "Get host address failed,reason:" + e.getMessage());
            return str2;
        }
    }

    private static String getKs3Host(String str) {
        int length = Http.PROTOCOL_PREFIX.length();
        if (TextUtils.isEmpty(str) || str.length() < length) {
            return "";
        }
        int indexOf = str.indexOf("/", length);
        if (indexOf == -1) {
            indexOf = str.length();
        }
        return str.substring(length, indexOf);
    }

    public static String getSaftIP() {
        String str = "";
        HttpGet httpGet = new HttpGet(Ks3_Client_SATEFY_IP_URL_NORMAL);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        try {
            HttpResponse execute = defaultHttpClient.execute(httpGet);
            if (execute.getStatusLine().getStatusCode() == 200) {
                ClientLog.i(DOWNLOAD_LOG, "get ip success");
                return parse(EntityUtils.toString(execute.getEntity()));
            }
            ClientLog.i(DOWNLOAD_LOG, "get ip failure");
            HttpResponse execute2 = defaultHttpClient.execute(new HttpGet(Ks3_Client_SATEFY_IP_URL_UNNORMAL));
            if (execute2.getStatusLine().getStatusCode() == 200) {
                ClientLog.v(DOWNLOAD_LOG, "get ip second success");
                return parse(EntityUtils.toString(execute2.getEntity()));
            }
            ClientLog.v(DOWNLOAD_LOG, "get ip second failure");
            return str;
        } catch (ClientProtocolException e) {
            ThrowableExtension.printStackTrace(e);
            return str;
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
            return str;
        }
    }

    private static String getRequestId(HttpURLConnection httpURLConnection, String str) {
        String str2;
        Map headerFields = httpURLConnection.getHeaderFields();
        String str3 = "";
        for (String str4 : headerFields.keySet()) {
            List list = (List) headerFields.get(str4);
            String str5 = "";
            int i = 0;
            while (i < list.size()) {
                String str6 = str5 + ((String) list.get(i));
                i++;
                str5 = str6;
            }
            if ("x-kss-request-id".equals(str4)) {
                ClientLog.v(DOWNLOAD_LOG, "requestId " + str4 + "=" + str5);
                str2 = str5;
            } else {
                str2 = str3;
            }
            str3 = str2;
        }
        ClientLog.v(DOWNLOAD_LOG, "Request Server IP:" + getKs3ServiceIP(str));
        return str3;
    }
}
