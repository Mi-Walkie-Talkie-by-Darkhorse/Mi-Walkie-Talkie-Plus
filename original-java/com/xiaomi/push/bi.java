package com.xiaomi.push;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import com.umeng.analytics.pro.c;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes2.dex */
public class bi {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f8776a = Pattern.compile("([^\\s;]+)(.*)");

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f8777b = Pattern.compile("(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f8778c = Pattern.compile("(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);

    /* loaded from: classes2.dex */
    public static final class a extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private boolean f8779a;

        public a(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read;
            if (!this.f8779a && (read = super.read(bArr, i, i2)) != -1) {
                return read;
            }
            this.f8779a = true;
            return -1;
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f8780a;

        /* renamed from: a  reason: collision with other field name */
        public Map<String, String> f130a;

        public String toString() {
            return String.format("resCode = %1$d, headers = %2$s", Integer.valueOf(this.f8780a), this.f130a.toString());
        }
    }

    public static int a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return -1;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return -1;
            }
            return activeNetworkInfo.getType();
        } catch (Exception unused) {
            return -1;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static NetworkInfo m93a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return null;
            }
            return connectivityManager.getActiveNetworkInfo();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static bg a(Context context, String str, String str2, Map<String, String> map, String str3) {
        IOException e;
        Throwable th;
        boolean z;
        BufferedReader bufferedReader;
        bg bgVar = new bg();
        Closeable closeable = null;
        try {
            try {
                try {
                    HttpURLConnection a2 = m95a(context, m96a(str));
                    a2.setConnectTimeout(10000);
                    a2.setReadTimeout(15000);
                    String str4 = str2;
                    if (str2 == 0) {
                        str4 = Constants.HTTP_GET;
                    }
                    a2.setRequestMethod(str4);
                    int i = 0;
                    if (map != null) {
                        z = com.efs.sdk.base.Constants.CP_GZIP.equalsIgnoreCase(map.get("Content-Encoding"));
                        for (String str5 : map.keySet()) {
                            a2.setRequestProperty(str5, map.get(str5));
                        }
                    } else {
                        z = false;
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        a2.setDoOutput(true);
                        byte[] bytes = str3.getBytes();
                        OutputStream gZIPOutputStream = z ? new GZIPOutputStream(a2.getOutputStream()) : a2.getOutputStream();
                        try {
                            gZIPOutputStream.write(bytes, 0, bytes.length);
                            gZIPOutputStream.flush();
                            gZIPOutputStream.close();
                        } catch (IOException e2) {
                            e = e2;
                            throw new IOException("err while request " + str + com.xiaomi.mipush.sdk.Constants.COLON_SEPARATOR + e.getClass().getSimpleName());
                        } catch (Throwable th2) {
                            th = th2;
                            throw new IOException(th.getMessage());
                        }
                    }
                    bgVar.f8775a = a2.getResponseCode();
                    com.xiaomi.channel.commonutils.logger.b.m1a("Http POST Response Code: " + bgVar.f8775a);
                    while (true) {
                        String headerFieldKey = a2.getHeaderFieldKey(i);
                        String headerField = a2.getHeaderField(i);
                        if (headerFieldKey == null && headerField == null) {
                            try {
                                break;
                            } catch (IOException unused) {
                                bufferedReader = new BufferedReader(new InputStreamReader(new a(a2.getErrorStream())));
                            }
                        } else {
                            bgVar.f129a.put(headerFieldKey, headerField);
                            i = i + 1 + 1;
                        }
                    }
                    bufferedReader = new BufferedReader(new InputStreamReader(new a(a2.getInputStream())));
                } catch (IOException e3) {
                    e = e3;
                }
            } catch (Throwable th3) {
                th = th3;
            }
            try {
                StringBuffer stringBuffer = new StringBuffer();
                String property = System.getProperty("line.separator");
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    stringBuffer.append(readLine);
                    stringBuffer.append(property);
                }
                bgVar.f128a = stringBuffer.toString();
                bufferedReader.close();
                return bgVar;
            } catch (IOException e4) {
                e = e4;
                throw new IOException("err while request " + str + com.xiaomi.mipush.sdk.Constants.COLON_SEPARATOR + e.getClass().getSimpleName());
            } catch (Throwable th4) {
                th = th4;
                throw new IOException(th.getMessage());
            }
        } finally {
            aa.a(closeable);
            aa.a((Closeable) str2);
        }
    }

    public static bg a(Context context, String str, Map<String, String> map) {
        return a(context, str, Constants.HTTP_POST, (Map<String, String>) null, a(map));
    }

    public static InputStream a(Context context, URL url, boolean z, String str, String str2) {
        return a(context, url, z, str, str2, null, null);
    }

    public static InputStream a(Context context, URL url, boolean z, String str, String str2, Map<String, String> map, b bVar) {
        if (context == null) {
            throw new IllegalArgumentException(c.R);
        } else if (url != null) {
            URL url2 = !z ? new URL(a(url.toString())) : url;
            try {
                HttpURLConnection.setFollowRedirects(true);
                HttpURLConnection a2 = m95a(context, url2);
                a2.setConnectTimeout(10000);
                a2.setReadTimeout(15000);
                if (!TextUtils.isEmpty(str)) {
                    a2.setRequestProperty("User-Agent", str);
                }
                if (str2 != null) {
                    a2.setRequestProperty(HttpHeaders.COOKIE, str2);
                }
                if (map != null) {
                    for (String str3 : map.keySet()) {
                        a2.setRequestProperty(str3, map.get(str3));
                    }
                }
                if (bVar != null && (url.getProtocol().equals("http") || url.getProtocol().equals("https"))) {
                    bVar.f8780a = a2.getResponseCode();
                    if (bVar.f130a == null) {
                        bVar.f130a = new HashMap();
                    }
                    int i = 0;
                    while (true) {
                        String headerFieldKey = a2.getHeaderFieldKey(i);
                        String headerField = a2.getHeaderField(i);
                        if (headerFieldKey == null && headerField == null) {
                            break;
                        }
                        if (!TextUtils.isEmpty(headerFieldKey) && !TextUtils.isEmpty(headerField)) {
                            bVar.f130a.put(headerFieldKey, headerField);
                        }
                        i++;
                    }
                }
                return new a(a2.getInputStream());
            } catch (IOException e) {
                throw new IOException("IOException:" + e.getClass().getSimpleName());
            } catch (Throwable th) {
                throw new IOException(th.getMessage());
            }
        } else {
            throw new IllegalArgumentException(SocialConstants.PARAM_URL);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static String m94a(Context context) {
        if (e(context)) {
            return "wifi";
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return "";
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return "";
            }
            return (activeNetworkInfo.getTypeName() + com.xiaomi.mipush.sdk.Constants.ACCEPT_TIME_SEPARATOR_SERVER + activeNetworkInfo.getSubtypeName() + com.xiaomi.mipush.sdk.Constants.ACCEPT_TIME_SEPARATOR_SERVER + activeNetworkInfo.getExtraInfo()).toLowerCase();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String a(Context context, URL url) {
        return a(context, url, false, null, "UTF-8", null);
    }

    public static String a(Context context, URL url, boolean z, String str, String str2, String str3) {
        Throwable th;
        InputStream inputStream;
        try {
            inputStream = a(context, url, z, str, str3);
            try {
                StringBuilder sb = new StringBuilder(1024);
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str2));
                char[] cArr = new char[4096];
                while (true) {
                    int read = bufferedReader.read(cArr);
                    if (-1 != read) {
                        sb.append(cArr, 0, read);
                    } else {
                        aa.a(inputStream);
                        return sb.toString();
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                aa.a(inputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        new String();
        return String.format("%s&key=%s", str, bn.a(String.format("%sbe988a6134bc8254465424e5a70ef037", str)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.io.Closeable, java.lang.String] */
    public static String a(String str, Map<String, String> map, File file, String str2) {
        IOException e;
        Throwable th;
        FileInputStream fileInputStream = 0;
        if (!file.exists()) {
            return fileInputStream;
        }
        String name = file.getName();
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setReadTimeout(15000);
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestMethod(Constants.HTTP_POST);
                httpURLConnection.setRequestProperty(HttpHeaders.CONNECTION, "Keep-Alive");
                httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=*****");
                if (map != null) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                httpURLConnection.setFixedLengthStreamingMode(name.length() + 77 + ((int) file.length()) + str2.length());
                DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                dataOutputStream.writeBytes("--*****\r\n");
                dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str2 + "\";filename=\"" + file.getName() + "\"\r\n");
                dataOutputStream.writeBytes("\r\n");
                fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        dataOutputStream.write(bArr, 0, read);
                        dataOutputStream.flush();
                    }
                    dataOutputStream.writeBytes("\r\n");
                    dataOutputStream.writeBytes("--");
                    dataOutputStream.writeBytes("*****");
                    dataOutputStream.writeBytes("--");
                    dataOutputStream.writeBytes("\r\n");
                    dataOutputStream.flush();
                    StringBuffer stringBuffer = new StringBuffer();
                    file = new BufferedReader(new InputStreamReader(new a(httpURLConnection.getInputStream())));
                    while (true) {
                        try {
                            String readLine = file.readLine();
                            if (readLine == null) {
                                return stringBuffer.toString();
                            }
                            stringBuffer.append(readLine);
                        } catch (IOException e2) {
                            e = e2;
                            throw new IOException("IOException:" + e.getClass().getSimpleName());
                        } catch (Throwable th2) {
                            th = th2;
                            throw new IOException(th.getMessage());
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                } catch (Throwable th3) {
                    th = th3;
                }
            } finally {
                aa.a((Closeable) fileInputStream);
                aa.a((Closeable) file);
            }
        } catch (IOException e4) {
            e = e4;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static String a(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                try {
                    stringBuffer.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                    stringBuffer.append("=");
                    stringBuffer.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
                    stringBuffer.append("&");
                } catch (UnsupportedEncodingException e) {
                    com.xiaomi.channel.commonutils.logger.b.m1a("Failed to convert from params map to string: " + e);
                    com.xiaomi.channel.commonutils.logger.b.m1a("map: " + map.toString());
                    return null;
                }
            }
        }
        if (stringBuffer.length() > 0) {
            stringBuffer = stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }

    /* renamed from: a  reason: collision with other method in class */
    public static HttpURLConnection m95a(Context context, URL url) {
        return (HttpURLConnection) (("http".equals(url.getProtocol()) && m97a(context)) ? url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.200", 80))) : url.openConnection());
    }

    /* renamed from: a  reason: collision with other method in class */
    private static URL m96a(String str) {
        return new URL(str);
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m97a(Context context) {
        ConnectivityManager connectivityManager;
        if (!"CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService("phone")).getSimCountryIso())) {
            return false;
        }
        try {
            connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception unused) {
        }
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        String extraInfo = activeNetworkInfo.getExtraInfo();
        return !TextUtils.isEmpty(extraInfo) && extraInfo.length() >= 3 && extraInfo.contains("ctwap");
    }

    public static boolean b(Context context) {
        return a(context) >= 0;
    }

    public static boolean c(Context context) {
        boolean z;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                    if (networkCapabilities != null) {
                        z = networkCapabilities.hasCapability(16);
                    }
                } catch (Exception unused) {
                }
            } else {
                z = b(context);
            }
            return z && d(context);
        }
        z = false;
        if (z) {
            return false;
        }
    }

    public static boolean d(Context context) {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception unused) {
            networkInfo = null;
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean e(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && 1 == activeNetworkInfo.getType();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean f(Context context) {
        NetworkInfo a2 = m93a(context);
        return a2 != null && a2.getType() == 0 && 20 == a2.getSubtype();
    }

    public static boolean g(Context context) {
        NetworkInfo a2 = m93a(context);
        return a2 != null && a2.getType() == 0 && 13 == a2.getSubtype();
    }

    public static boolean h(Context context) {
        NetworkInfo a2 = m93a(context);
        if (a2 == null || a2.getType() != 0) {
            return false;
        }
        String subtypeName = a2.getSubtypeName();
        if (!"TD-SCDMA".equalsIgnoreCase(subtypeName) && !"CDMA2000".equalsIgnoreCase(subtypeName) && !"WCDMA".equalsIgnoreCase(subtypeName)) {
            switch (a2.getSubtype()) {
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    break;
                case 4:
                case 7:
                case 11:
                case 13:
                default:
                    return false;
            }
        }
        return true;
    }

    public static boolean i(Context context) {
        NetworkInfo a2 = m93a(context);
        if (a2 == null || a2.getType() != 0) {
            return false;
        }
        int subtype = a2.getSubtype();
        return subtype == 1 || subtype == 2 || subtype == 4 || subtype == 7 || subtype == 11;
    }
}
