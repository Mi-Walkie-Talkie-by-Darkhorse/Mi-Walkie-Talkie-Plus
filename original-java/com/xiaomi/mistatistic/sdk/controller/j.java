package com.xiaomi.mistatistic.sdk.controller;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.ifengyu.im.account.UserInfo;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.CustomSettings;
import com.xiaomi.xmsf.push.service.a.C0074a;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.HttpHost;

/* compiled from: NetworkUtils */
public abstract class j {

    /* compiled from: NetworkUtils */
    public static final class a extends FilterInputStream {
        private boolean a;

        public a(InputStream inputStream) {
            super(inputStream);
        }

        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (!this.a) {
                int read = super.read(bArr, i, i2);
                if (read != -1) {
                    return read;
                }
            }
            this.a = true;
            return -1;
        }
    }

    /* compiled from: NetworkUtils */
    public interface b {
        void a(String str);
    }

    public static boolean a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                return 1 == activeNetworkInfo.getType();
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static String b(Context context) {
        if (a(context)) {
            return "WIFI";
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return "";
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return "";
                }
                return (activeNetworkInfo.getTypeName() + "-" + activeNetworkInfo.getSubtypeName() + "-" + activeNetworkInfo.getExtraInfo()).toLowerCase();
            } catch (Exception e) {
                return "";
            }
        } catch (Exception e2) {
            return "";
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0047 A[SYNTHETIC, Splitter:B:17:0x0047] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x004c A[Catch:{ IOException -> 0x00da }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r9, java.lang.String r10, java.util.Map<java.lang.String, java.lang.String> r11, com.xiaomi.mistatistic.sdk.controller.j.b r12) throws java.io.IOException {
        /*
            r1 = 0
            boolean r0 = android.text.TextUtils.isEmpty(r10)
            if (r0 == 0) goto L_0x000f
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "url"
            r0.<init>(r1)
            throw r0
        L_0x000f:
            java.net.URL r0 = new java.net.URL     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.lang.String r2 = com.xiaomi.mistatistic.sdk.controller.q.a(r9, r10)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            r0.<init>(r2)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.net.HttpURLConnection r0 = a(r9, r0)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            r2 = 10000(0x2710, float:1.4013E-41)
            r0.setConnectTimeout(r2)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            r2 = 15000(0x3a98, float:2.102E-41)
            r0.setReadTimeout(r2)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.lang.String r2 = "POST"
            r0.setRequestMethod(r2)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            a(r11)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.lang.String r2 = b(r11)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            if (r2 != 0) goto L_0x0050
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.lang.String r2 = "nameValuePairs"
            r0.<init>(r2)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            throw r0     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
        L_0x003c:
            r0 = move-exception
            r2 = r1
        L_0x003e:
            java.lang.String r3 = "doHttpPost IOException:"
            com.xiaomi.mistatistic.sdk.controller.h.a(r3, r0)     // Catch:{ all -> 0x0044 }
            throw r0     // Catch:{ all -> 0x0044 }
        L_0x0044:
            r0 = move-exception
        L_0x0045:
            if (r2 == 0) goto L_0x004a
            r2.close()     // Catch:{ IOException -> 0x00da }
        L_0x004a:
            if (r1 == 0) goto L_0x004f
            r1.close()     // Catch:{ IOException -> 0x00da }
        L_0x004f:
            throw r0
        L_0x0050:
            r3 = 1
            r0.setDoOutput(r3)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            byte[] r3 = r2.getBytes()     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.io.OutputStream r2 = r0.getOutputStream()     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            r4 = 0
            int r5 = r3.length     // Catch:{ IOException -> 0x00ee, Throwable -> 0x00e7 }
            r2.write(r3, r4, r5)     // Catch:{ IOException -> 0x00ee, Throwable -> 0x00e7 }
            r2.flush()     // Catch:{ IOException -> 0x00ee, Throwable -> 0x00e7 }
            r2.close()     // Catch:{ IOException -> 0x00ee, Throwable -> 0x00e7 }
            r3 = 0
            int r2 = r0.getResponseCode()     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.lang.String r4 = "doHttpPost-"
            java.lang.String r5 = "url:%s,responseCode:%d"
            r6 = 2
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            r7 = 0
            r6[r7] = r10     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            r7 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            r6[r7] = r2     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.lang.String r2 = java.lang.String.format(r5, r6)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            com.xiaomi.mistatistic.sdk.controller.h.b(r4, r2)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            com.xiaomi.mistatistic.sdk.controller.j$a r5 = new com.xiaomi.mistatistic.sdk.controller.j$a     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.io.InputStream r0 = r0.getInputStream()     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            r5.<init>(r0)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            r4.<init>(r5)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            r2.<init>(r4)     // Catch:{ IOException -> 0x003c, Throwable -> 0x00c9, all -> 0x00dd }
            java.lang.String r0 = r2.readLine()     // Catch:{ IOException -> 0x00f1, Throwable -> 0x00e9, all -> 0x00e1 }
            java.lang.StringBuffer r4 = new java.lang.StringBuffer     // Catch:{ IOException -> 0x00f1, Throwable -> 0x00e9, all -> 0x00e1 }
            r4.<init>()     // Catch:{ IOException -> 0x00f1, Throwable -> 0x00e9, all -> 0x00e1 }
            java.lang.String r5 = "line.separator"
            java.lang.String r5 = java.lang.System.getProperty(r5)     // Catch:{ IOException -> 0x00f1, Throwable -> 0x00e9, all -> 0x00e1 }
        L_0x00a6:
            if (r0 == 0) goto L_0x00b3
            r4.append(r0)     // Catch:{ IOException -> 0x00f1, Throwable -> 0x00e9, all -> 0x00e1 }
            r4.append(r5)     // Catch:{ IOException -> 0x00f1, Throwable -> 0x00e9, all -> 0x00e1 }
            java.lang.String r0 = r2.readLine()     // Catch:{ IOException -> 0x00f1, Throwable -> 0x00e9, all -> 0x00e1 }
            goto L_0x00a6
        L_0x00b3:
            java.lang.String r0 = r4.toString()     // Catch:{ IOException -> 0x00f1, Throwable -> 0x00e9, all -> 0x00e1 }
            r12.a(r0)     // Catch:{ IOException -> 0x00f1, Throwable -> 0x00e9, all -> 0x00e1 }
            r2.close()     // Catch:{ IOException -> 0x00f1, Throwable -> 0x00e9, all -> 0x00e1 }
            r0 = 0
            if (r1 == 0) goto L_0x00c3
            r3.close()     // Catch:{ IOException -> 0x00f7 }
        L_0x00c3:
            if (r1 == 0) goto L_0x00c8
            r0.close()     // Catch:{ IOException -> 0x00f7 }
        L_0x00c8:
            return
        L_0x00c9:
            r0 = move-exception
            r2 = r1
        L_0x00cb:
            java.lang.String r3 = "doHttpPost Throwable:"
            com.xiaomi.mistatistic.sdk.controller.h.a(r3, r0)     // Catch:{ all -> 0x0044 }
            java.io.IOException r3 = new java.io.IOException     // Catch:{ all -> 0x0044 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0044 }
            r3.<init>(r0)     // Catch:{ all -> 0x0044 }
            throw r3     // Catch:{ all -> 0x0044 }
        L_0x00da:
            r1 = move-exception
            goto L_0x004f
        L_0x00dd:
            r0 = move-exception
            r2 = r1
            goto L_0x0045
        L_0x00e1:
            r0 = move-exception
            r8 = r2
            r2 = r1
            r1 = r8
            goto L_0x0045
        L_0x00e7:
            r0 = move-exception
            goto L_0x00cb
        L_0x00e9:
            r0 = move-exception
            r8 = r2
            r2 = r1
            r1 = r8
            goto L_0x00cb
        L_0x00ee:
            r0 = move-exception
            goto L_0x003e
        L_0x00f1:
            r0 = move-exception
            r8 = r2
            r2 = r1
            r1 = r8
            goto L_0x003e
        L_0x00f7:
            r0 = move-exception
            goto L_0x00c8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.j.a(android.content.Context, java.lang.String, java.util.Map, com.xiaomi.mistatistic.sdk.controller.j$b):void");
    }

    protected static void a(Map<String, String> map) {
        try {
            StringBuilder sb = new StringBuilder();
            new HashMap();
            if (map != null) {
                ArrayList<String> arrayList = new ArrayList<>(map.keySet());
                h.b("mistats_NetworkUtils_keys:" + arrayList.toString());
                Collections.sort(arrayList);
                if (!arrayList.isEmpty()) {
                    for (String str : arrayList) {
                        sb.append(str + ((String) map.get(str)));
                    }
                }
            }
            sb.append("mistats_sdkconfig_jafej!@#)(*e@!#");
            map.put("sign", q.b(sb.toString()).toLowerCase(Locale.getDefault()));
        } catch (Exception e) {
            h.a("sign exception:", (Throwable) e);
        }
    }

    public static String b(Map<String, String> map) {
        StringBuffer stringBuffer;
        if (map == null || map.size() <= 0) {
            return null;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        for (Entry entry : map.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                try {
                    stringBuffer2.append(URLEncoder.encode((String) entry.getKey(), "UTF-8"));
                    stringBuffer2.append("=");
                    stringBuffer2.append(URLEncoder.encode((String) entry.getValue(), "UTF-8"));
                    stringBuffer2.append("&");
                } catch (UnsupportedEncodingException e) {
                    return null;
                }
            }
        }
        if (stringBuffer2.length() > 0) {
            stringBuffer = stringBuffer2.deleteCharAt(stringBuffer2.length() - 1);
        } else {
            stringBuffer = stringBuffer2;
        }
        return stringBuffer.toString();
    }

    public static HttpURLConnection a(Context context, URL url) throws IOException {
        if (!HttpHost.DEFAULT_SCHEME_NAME.equals(url.getProtocol())) {
            return (HttpURLConnection) url.openConnection();
        }
        if (d(context)) {
            return (HttpURLConnection) url.openConnection(new Proxy(Type.HTTP, new InetSocketAddress("10.0.0.200", 80)));
        }
        if (!c(context)) {
            return (HttpURLConnection) url.openConnection();
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(a(url)).openConnection();
        httpURLConnection.addRequestProperty("X-Online-Host", url.getHost());
        return httpURLConnection;
    }

    public static String a(URL url) {
        StringBuilder sb = new StringBuilder();
        sb.append(url.getProtocol()).append("://").append("10.0.0.172").append(url.getPath());
        if (!TextUtils.isEmpty(url.getQuery())) {
            sb.append("?").append(url.getQuery());
        }
        return sb.toString();
    }

    public static boolean c(Context context) {
        if (!"CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getSimCountryIso())) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (TextUtils.isEmpty(extraInfo) || extraInfo.length() < 3 || extraInfo.contains("ctwap")) {
                    return false;
                }
                return extraInfo.regionMatches(true, extraInfo.length() - 3, "wap", 0, 3);
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean d(Context context) {
        if (!"CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getSimCountryIso())) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (TextUtils.isEmpty(extraInfo) || extraInfo.length() < 3) {
                    return false;
                }
                return extraInfo.contains("ctwap");
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static void a(String str, Map<String, String> map, b bVar) throws IOException {
        if (!CustomSettings.isDataUploadingEnabled()) {
            h.d("upload is disabled.");
            bVar.a("");
            return;
        }
        h.a("Uploading to: " + str);
        if (map != null) {
            map.put("bc", BuildSetting.getMiuiBuildCode());
        }
        if (!CustomSettings.isUseSystemUploadingService()) {
            h.a("Uploading under app network");
            a(c.a(), str, map, bVar);
        } else if (a()) {
            try {
                h.a("Uploading via sys service, unmetered network connected");
                b(c.a(), str, map, bVar);
            } catch (Exception e) {
                throw new IOException("exception thrown from IPC." + e.getMessage());
            }
        } else {
            bVar.a(null);
            h.a("Uploading via sys service, metered network connected, skip");
        }
    }

    @SuppressLint({"NewApi"})
    public static boolean a() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) c.a().getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            if (activeNetworkInfo.getType() == 1) {
                return true;
            }
            if (VERSION.SDK_INT < 16) {
                return false;
            }
            return !connectivityManager.isActiveNetworkMetered();
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x007e A[SYNTHETIC, Splitter:B:18:0x007e] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0083 A[Catch:{ IOException -> 0x0171 }] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0088 A[Catch:{ IOException -> 0x0171 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.lang.String r8, java.util.Map<java.lang.String, java.lang.String> r9, java.io.File r10, java.lang.String r11) throws java.io.IOException {
        /*
            r3 = 0
            boolean r0 = r10.exists()
            if (r0 != 0) goto L_0x0009
            r0 = r3
        L_0x0008:
            return r0
        L_0x0009:
            java.lang.String r4 = r10.getName()
            java.lang.String r0 = "\r\n"
            java.lang.String r0 = "--"
            java.lang.String r0 = "*****"
            java.net.URL r0 = new java.net.URL     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            android.content.Context r1 = com.xiaomi.mistatistic.sdk.controller.c.a()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.lang.String r1 = com.xiaomi.mistatistic.sdk.controller.q.a(r1, r8)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            r0.<init>(r1)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.net.URLConnection r0 = r0.openConnection()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            r1 = 15000(0x3a98, float:2.102E-41)
            r0.setReadTimeout(r1)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            r1 = 10000(0x2710, float:1.4013E-41)
            r0.setConnectTimeout(r1)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            r1 = 1
            r0.setDoInput(r1)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            r1 = 1
            r0.setDoOutput(r1)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            r1 = 0
            r0.setUseCaches(r1)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.lang.String r1 = "POST"
            r0.setRequestMethod(r1)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.lang.String r1 = "Connection"
            java.lang.String r2 = "Keep-Alive"
            r0.setRequestProperty(r1, r2)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.lang.String r1 = "Content-Type"
            java.lang.String r2 = "multipart/form-data;boundary=*****"
            r0.setRequestProperty(r1, r2)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            if (r9 == 0) goto L_0x008c
            java.util.Set r1 = r9.entrySet()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.util.Iterator r5 = r1.iterator()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
        L_0x0059:
            boolean r1 = r5.hasNext()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            if (r1 == 0) goto L_0x008c
            java.lang.Object r1 = r5.next()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.lang.Object r2 = r1.getKey()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.lang.String r2 = (java.lang.String) r2     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.lang.Object r1 = r1.getValue()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            r0.setRequestProperty(r2, r1)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            goto L_0x0059
        L_0x0075:
            r0 = move-exception
            r1 = r3
            r2 = r3
        L_0x0078:
            throw r0     // Catch:{ all -> 0x0079 }
        L_0x0079:
            r0 = move-exception
            r4 = r2
            r2 = r1
        L_0x007c:
            if (r4 == 0) goto L_0x0081
            r4.close()     // Catch:{ IOException -> 0x0171 }
        L_0x0081:
            if (r2 == 0) goto L_0x0086
            r2.close()     // Catch:{ IOException -> 0x0171 }
        L_0x0086:
            if (r3 == 0) goto L_0x008b
            r3.close()     // Catch:{ IOException -> 0x0171 }
        L_0x008b:
            throw r0
        L_0x008c:
            int r1 = r4.length()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            int r1 = r1 + 77
            long r4 = r10.length()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            int r2 = (int) r4     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            int r1 = r1 + r2
            int r2 = r11.length()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            int r1 = r1 + r2
            r0.setFixedLengthStreamingMode(r1)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.io.DataOutputStream r2 = new java.io.DataOutputStream     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.io.OutputStream r1 = r0.getOutputStream()     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            r2.<init>(r1)     // Catch:{ IOException -> 0x0075, Throwable -> 0x0161, all -> 0x0179 }
            java.lang.String r1 = "--*****\r\n"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            r1.<init>()     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            java.lang.String r4 = "Content-Disposition: form-data; name=\""
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            java.lang.StringBuilder r1 = r1.append(r11)     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            java.lang.String r4 = "\";filename=\""
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            java.lang.String r4 = r10.getName()     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            java.lang.String r4 = "\""
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            java.lang.String r4 = "\r\n"
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            java.lang.String r1 = r1.toString()     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            java.lang.String r1 = "\r\n"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            r4.<init>(r10)     // Catch:{ IOException -> 0x018e, Throwable -> 0x0186, all -> 0x017e }
            r1 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r1]     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
        L_0x00ec:
            int r5 = r4.read(r1)     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            r6 = -1
            if (r5 == r6) goto L_0x0100
            r6 = 0
            r2.write(r1, r6, r5)     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            r2.flush()     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            goto L_0x00ec
        L_0x00fb:
            r0 = move-exception
            r1 = r2
            r2 = r4
            goto L_0x0078
        L_0x0100:
            java.lang.String r1 = "\r\n"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            java.lang.String r1 = "--"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            java.lang.String r1 = "*****"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            java.lang.String r1 = "--"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            java.lang.String r1 = "\r\n"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            r2.flush()     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            java.lang.StringBuffer r5 = new java.lang.StringBuffer     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            r5.<init>()     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            java.io.InputStreamReader r6 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            com.xiaomi.mistatistic.sdk.controller.j$a r7 = new com.xiaomi.mistatistic.sdk.controller.j$a     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            java.io.InputStream r0 = r0.getInputStream()     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            r7.<init>(r0)     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            r6.<init>(r7)     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
            r1.<init>(r6)     // Catch:{ IOException -> 0x00fb, Throwable -> 0x0189 }
        L_0x0134:
            java.lang.String r0 = r1.readLine()     // Catch:{ IOException -> 0x013e, Throwable -> 0x018b, all -> 0x0182 }
            if (r0 == 0) goto L_0x0144
            r5.append(r0)     // Catch:{ IOException -> 0x013e, Throwable -> 0x018b, all -> 0x0182 }
            goto L_0x0134
        L_0x013e:
            r0 = move-exception
            r3 = r1
            r1 = r2
            r2 = r4
            goto L_0x0078
        L_0x0144:
            java.lang.String r0 = r5.toString()     // Catch:{ IOException -> 0x013e, Throwable -> 0x018b, all -> 0x0182 }
            if (r4 == 0) goto L_0x014d
            r4.close()     // Catch:{ IOException -> 0x0159 }
        L_0x014d:
            if (r2 == 0) goto L_0x0152
            r2.close()     // Catch:{ IOException -> 0x0159 }
        L_0x0152:
            if (r1 == 0) goto L_0x0008
            r1.close()     // Catch:{ IOException -> 0x0159 }
            goto L_0x0008
        L_0x0159:
            r1 = move-exception
            java.lang.String r2 = ""
            com.xiaomi.mistatistic.sdk.controller.h.a(r2, r1)
            goto L_0x0008
        L_0x0161:
            r0 = move-exception
            r2 = r3
            r4 = r3
        L_0x0164:
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x016e }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x016e }
            r1.<init>(r0)     // Catch:{ all -> 0x016e }
            throw r1     // Catch:{ all -> 0x016e }
        L_0x016e:
            r0 = move-exception
            goto L_0x007c
        L_0x0171:
            r1 = move-exception
            java.lang.String r2 = ""
            com.xiaomi.mistatistic.sdk.controller.h.a(r2, r1)
            goto L_0x008b
        L_0x0179:
            r0 = move-exception
            r2 = r3
            r4 = r3
            goto L_0x007c
        L_0x017e:
            r0 = move-exception
            r4 = r3
            goto L_0x007c
        L_0x0182:
            r0 = move-exception
            r3 = r1
            goto L_0x007c
        L_0x0186:
            r0 = move-exception
            r4 = r3
            goto L_0x0164
        L_0x0189:
            r0 = move-exception
            goto L_0x0164
        L_0x018b:
            r0 = move-exception
            r3 = r1
            goto L_0x0164
        L_0x018e:
            r0 = move-exception
            r1 = r2
            r2 = r3
            goto L_0x0078
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.j.a(java.lang.String, java.util.Map, java.io.File, java.lang.String):java.lang.String");
    }

    public static void b(final Context context, final String str, final Map<String, String> map, final b bVar) {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.xiaomi.xmsf", "com.xiaomi.xmsf.push.service.HttpService");
            if (!context.bindService(intent, new ServiceConnection() {
                /* access modifiers changed from: private */
                public boolean e = false;

                public void onServiceDisconnected(ComponentName componentName) {
                    h.a("error while perform IPC connection.", (Throwable) null);
                    if (!this.e) {
                        bVar.a(null);
                        h.a("disconnected, remote http post hasn't not processed");
                    }
                }

                public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
                    d.a().a((com.xiaomi.mistatistic.sdk.controller.d.a) new com.xiaomi.mistatistic.sdk.controller.d.a() {
                        public void a() {
                            try {
                                bVar.a(C0074a.a(iBinder).a(q.a(context, str), map));
                                AnonymousClass1.this.e = true;
                                h.a("connected, do remote http post");
                                context.unbindService(this);
                            } catch (Throwable th) {
                                h.a("error while uploading the logs by IPC.", th);
                                bVar.a(null);
                                AnonymousClass1.this.e = true;
                            }
                        }
                    });
                }
            }, 1)) {
                h.a("failed to bind");
                bVar.a(null);
            }
        } catch (Exception e) {
            h.a("uploadDataThroughSystemService", (Throwable) e);
            bVar.a(null);
        }
    }
}
