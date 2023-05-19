package com.xiaomi.push;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import com.umeng.analytics.pro.UContent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
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

/* renamed from: com.xiaomi.push.bi */
/* loaded from: classes2.dex */
public class C6013bi {

    /* renamed from: a */
    public static final Pattern f21101a = Pattern.compile("([^\\s;]+)(.*)");

    /* renamed from: b */
    public static final Pattern f21102b = Pattern.compile("(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);

    /* renamed from: c */
    public static final Pattern f21103c = Pattern.compile("(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);

    /* renamed from: com.xiaomi.push.bi$a */
    /* loaded from: classes2.dex */
    public static final class C6014a extends FilterInputStream {

        /* renamed from: a */
        private boolean f21104a;

        public C6014a(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read;
            if (this.f21104a || (read = super.read(bArr, i, i2)) == -1) {
                this.f21104a = true;
                return -1;
            }
            return read;
        }
    }

    /* renamed from: com.xiaomi.push.bi$b */
    /* loaded from: classes2.dex */
    public static class C6015b {

        /* renamed from: a */
        public int f21105a;

        /* renamed from: a */
        public Map<String, String> f21106a;

        public String toString() {
            return String.format("resCode = %1$d, headers = %2$s", Integer.valueOf(this.f21105a), this.f21106a.toString());
        }
    }

    /* renamed from: a */
    public static int m3677a(Context context) {
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

    /* renamed from: a */
    public static NetworkInfo m3676a(Context context) {
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
    /* renamed from: a */
    private static C6011bg m3673a(Context context, String str, String str2, Map<String, String> map, String str3) {
        boolean z;
        BufferedReader bufferedReader;
        C6011bg c6011bg = new C6011bg();
        try {
            try {
                try {
                    HttpURLConnection m3670a = m3670a(context, m3665a(str));
                    m3670a.setConnectTimeout(10000);
                    m3670a.setReadTimeout(15000);
                    String str4 = str2;
                    if (str2 == 0) {
                        str4 = Constants.HTTP_GET;
                    }
                    m3670a.setRequestMethod(str4);
                    int i = 0;
                    if (map != null) {
                        z = com.efs.sdk.base.Constants.CP_GZIP.equalsIgnoreCase(map.get("Content-Encoding"));
                        for (String str5 : map.keySet()) {
                            m3670a.setRequestProperty(str5, map.get(str5));
                        }
                    } else {
                        z = false;
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        m3670a.setDoOutput(true);
                        byte[] bytes = str3.getBytes();
                        OutputStream gZIPOutputStream = z ? new GZIPOutputStream(m3670a.getOutputStream()) : m3670a.getOutputStream();
                        try {
                            gZIPOutputStream.write(bytes, 0, bytes.length);
                            gZIPOutputStream.flush();
                            gZIPOutputStream.close();
                        } catch (IOException e) {
                            e = e;
                            throw new IOException("err while request " + str + com.xiaomi.mipush.sdk.Constants.COLON_SEPARATOR + e.getClass().getSimpleName());
                        } catch (Throwable th) {
                            th = th;
                            throw new IOException(th.getMessage());
                        }
                    }
                    c6011bg.f21098a = m3670a.getResponseCode();
                    AbstractC5876b.m4147a("Http POST Response Code: " + c6011bg.f21098a);
                    while (true) {
                        String headerFieldKey = m3670a.getHeaderFieldKey(i);
                        String headerField = m3670a.getHeaderField(i);
                        if (headerFieldKey == null && headerField == null) {
                            try {
                                break;
                            } catch (IOException unused) {
                                bufferedReader = new BufferedReader(new InputStreamReader(new C6014a(m3670a.getErrorStream())));
                            }
                        } else {
                            c6011bg.f21100a.put(headerFieldKey, headerField);
                            i = i + 1 + 1;
                        }
                    }
                    bufferedReader = new BufferedReader(new InputStreamReader(new C6014a(m3670a.getInputStream())));
                    try {
                        StringBuffer stringBuffer = new StringBuffer();
                        String property = System.getProperty("line.separator");
                        for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                            stringBuffer.append(readLine);
                            stringBuffer.append(property);
                        }
                        c6011bg.f21099a = stringBuffer.toString();
                        bufferedReader.close();
                        C5968aa.m3810a((Closeable) null);
                        C5968aa.m3810a((Closeable) null);
                        return c6011bg;
                    } catch (IOException e2) {
                        e = e2;
                        throw new IOException("err while request " + str + com.xiaomi.mipush.sdk.Constants.COLON_SEPARATOR + e.getClass().getSimpleName());
                    } catch (Throwable th2) {
                        th = th2;
                        throw new IOException(th.getMessage());
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (Throwable th4) {
            C5968aa.m3810a((Closeable) null);
            C5968aa.m3810a((Closeable) str2);
            throw th4;
        }
    }

    /* renamed from: a */
    public static C6011bg m3672a(Context context, String str, Map<String, String> map) {
        return m3673a(context, str, Constants.HTTP_POST, (Map<String, String>) null, m3663a(map));
    }

    /* renamed from: a */
    public static InputStream m3669a(Context context, URL url, boolean z, String str, String str2) {
        return m3667a(context, url, z, str, str2, null, null);
    }

    /* renamed from: a */
    public static InputStream m3667a(Context context, URL url, boolean z, String str, String str2, Map<String, String> map, C6015b c6015b) {
        if (context != null) {
            if (url != null) {
                URL url2 = !z ? new URL(m3666a(url.toString())) : url;
                try {
                    HttpURLConnection.setFollowRedirects(true);
                    HttpURLConnection m3670a = m3670a(context, url2);
                    m3670a.setConnectTimeout(10000);
                    m3670a.setReadTimeout(15000);
                    if (!TextUtils.isEmpty(str)) {
                        m3670a.setRequestProperty("User-Agent", str);
                    }
                    if (str2 != null) {
                        m3670a.setRequestProperty(HttpHeaders.COOKIE, str2);
                    }
                    if (map != null) {
                        for (String str3 : map.keySet()) {
                            m3670a.setRequestProperty(str3, map.get(str3));
                        }
                    }
                    if (c6015b != null && (url.getProtocol().equals("http") || url.getProtocol().equals("https"))) {
                        c6015b.f21105a = m3670a.getResponseCode();
                        if (c6015b.f21106a == null) {
                            c6015b.f21106a = new HashMap();
                        }
                        int i = 0;
                        while (true) {
                            String headerFieldKey = m3670a.getHeaderFieldKey(i);
                            String headerField = m3670a.getHeaderField(i);
                            if (headerFieldKey == null && headerField == null) {
                                break;
                            }
                            if (!TextUtils.isEmpty(headerFieldKey) && !TextUtils.isEmpty(headerField)) {
                                c6015b.f21106a.put(headerFieldKey, headerField);
                            }
                            i++;
                        }
                    }
                    return new C6014a(m3670a.getInputStream());
                } catch (IOException e) {
                    throw new IOException("IOException:" + e.getClass().getSimpleName());
                } catch (Throwable th) {
                    throw new IOException(th.getMessage());
                }
            }
            throw new IllegalArgumentException(SocialConstants.PARAM_URL);
        }
        throw new IllegalArgumentException(UContent.f19653R);
    }

    /* renamed from: a */
    public static String m3675a(Context context) {
        if (m3659e(context)) {
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

    /* renamed from: a */
    public static String m3671a(Context context, URL url) {
        return m3668a(context, url, false, null, "UTF-8", null);
    }

    /* renamed from: a */
    public static String m3668a(Context context, URL url, boolean z, String str, String str2, String str3) {
        InputStream inputStream;
        try {
            inputStream = m3669a(context, url, z, str, str3);
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            StringBuilder sb = new StringBuilder(1024);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str2));
            char[] cArr = new char[4096];
            while (true) {
                int read = bufferedReader.read(cArr);
                if (-1 == read) {
                    C5968aa.m3810a(inputStream);
                    return sb.toString();
                }
                sb.append(cArr, 0, read);
            }
        } catch (Throwable th2) {
            th = th2;
            C5968aa.m3810a(inputStream);
            throw th;
        }
    }

    /* renamed from: a */
    public static String m3666a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        new String();
        return String.format("%s&key=%s", str, C6022bn.m3624a(String.format("%sbe988a6134bc8254465424e5a70ef037", str)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static String m3664a(String str, Map<String, String> map, File file, String str2) {
        if (!file.exists()) {
            return null;
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
                FileInputStream fileInputStream = new FileInputStream(file);
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
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new C6014a(httpURLConnection.getInputStream())));
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                String stringBuffer2 = stringBuffer.toString();
                                C5968aa.m3810a(fileInputStream);
                                C5968aa.m3810a(bufferedReader);
                                return stringBuffer2;
                            }
                            stringBuffer.append(readLine);
                        } catch (IOException e) {
                            e = e;
                            throw new IOException("IOException:" + e.getClass().getSimpleName());
                        } catch (Throwable th) {
                            th = th;
                            throw new IOException(th.getMessage());
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            C5968aa.m3810a((Closeable) null);
            C5968aa.m3810a((Closeable) file);
            throw th4;
        }
    }

    /* renamed from: a */
    public static String m3663a(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                try {
                    stringBuffer.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                    stringBuffer.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    stringBuffer.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
                    stringBuffer.append(ContainerUtils.FIELD_DELIMITER);
                } catch (UnsupportedEncodingException e) {
                    AbstractC5876b.m4147a("Failed to convert from params map to string: " + e);
                    AbstractC5876b.m4147a("map: " + map.toString());
                    return null;
                }
            }
        }
        if (stringBuffer.length() > 0) {
            stringBuffer = stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public static HttpURLConnection m3670a(Context context, URL url) {
        return (HttpURLConnection) (("http".equals(url.getProtocol()) && m3674a(context)) ? url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.200", 80))) : url.openConnection());
    }

    /* renamed from: a */
    private static URL m3665a(String str) {
        return new URL(str);
    }

    /* renamed from: a */
    public static boolean m3674a(Context context) {
        ConnectivityManager connectivityManager;
        if ("CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService("phone")).getSimCountryIso())) {
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
        return false;
    }

    /* renamed from: b */
    public static boolean m3662b(Context context) {
        return m3677a(context) >= 0;
    }

    /* renamed from: c */
    public static boolean m3661c(Context context) {
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
                z = m3662b(context);
            }
            return z && m3660d(context);
        }
        z = false;
        if (z) {
            return false;
        }
    }

    /* renamed from: d */
    public static boolean m3660d(Context context) {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception unused) {
            networkInfo = null;
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    /* renamed from: e */
    public static boolean m3659e(Context context) {
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

    /* renamed from: f */
    public static boolean m3658f(Context context) {
        NetworkInfo m3676a = m3676a(context);
        return m3676a != null && m3676a.getType() == 0 && 20 == m3676a.getSubtype();
    }

    /* renamed from: g */
    public static boolean m3657g(Context context) {
        NetworkInfo m3676a = m3676a(context);
        return m3676a != null && m3676a.getType() == 0 && 13 == m3676a.getSubtype();
    }

    /* renamed from: h */
    public static boolean m3656h(Context context) {
        NetworkInfo m3676a = m3676a(context);
        if (m3676a != null && m3676a.getType() == 0) {
            String subtypeName = m3676a.getSubtypeName();
            if (!"TD-SCDMA".equalsIgnoreCase(subtypeName) && !"CDMA2000".equalsIgnoreCase(subtypeName) && !"WCDMA".equalsIgnoreCase(subtypeName)) {
                switch (m3676a.getSubtype()) {
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
        return false;
    }

    /* renamed from: i */
    public static boolean m3655i(Context context) {
        NetworkInfo m3676a = m3676a(context);
        if (m3676a != null && m3676a.getType() == 0) {
            int subtype = m3676a.getSubtype();
            return subtype == 1 || subtype == 2 || subtype == 4 || subtype == 7 || subtype == 11;
        }
        return false;
    }
}
