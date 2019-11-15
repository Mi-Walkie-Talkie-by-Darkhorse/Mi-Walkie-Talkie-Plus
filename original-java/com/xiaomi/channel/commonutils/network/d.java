package com.xiaomi.channel.commonutils.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.ifengyu.im.account.UserInfo;
import com.mi.mimsgsdk.utils.Network;
import com.xiaomi.channel.commonutils.string.c;
import java.io.BufferedReader;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Pattern;
import org.apache.http.HttpHost;

public class d {
    public static final Pattern a = Pattern.compile("([^\\s;]+)(.*)");
    public static final Pattern b = Pattern.compile("(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
    public static final Pattern c = Pattern.compile("(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);

    public static final class a extends FilterInputStream {
        private boolean a;

        public a(InputStream inputStream) {
            super(inputStream);
        }

        public int read(byte[] bArr, int i, int i2) {
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

    public static class b {
        public int a;
        public Map<String, String> b;

        public String toString() {
            return String.format("resCode = %1$d, headers = %2$s", new Object[]{Integer.valueOf(this.a), this.b.toString()});
        }
    }

    public static int a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return -1;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return -1;
                }
                return activeNetworkInfo.getType();
            } catch (Exception e) {
                return -1;
            }
        } catch (Exception e2) {
            return -1;
        }
    }

    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r1v1 */
    /* JADX WARNING: type inference failed for: r1v2 */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r1v3, types: [java.io.OutputStream] */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r1v5 */
    /* JADX WARNING: type inference failed for: r8v0 */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r1v7 */
    /* JADX WARNING: type inference failed for: r1v13, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r1v14, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r8v1 */
    /* JADX WARNING: type inference failed for: r1v15 */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: type inference failed for: r8v2 */
    /* JADX WARNING: type inference failed for: r1v16 */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r1v18, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r1v19, types: [java.io.OutputStream] */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r1v20 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r2v12 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r2v14 */
    /* JADX WARNING: type inference failed for: r2v15 */
    /* JADX WARNING: type inference failed for: r1v23 */
    /* JADX WARNING: type inference failed for: r1v24 */
    /* JADX WARNING: type inference failed for: r1v25 */
    /* JADX WARNING: type inference failed for: r1v26 */
    /* JADX WARNING: type inference failed for: r1v27 */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0040, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0041, code lost:
        r1 = 0;
        r2 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00eb, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00ec, code lost:
        r1 = 0;
        r2 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x0122, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0123, code lost:
        r1 = 0;
        r2 = r2;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r2v1
  assigns: []
  uses: []
  mth insns count: 128
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0049 A[SYNTHETIC, Splitter:B:18:0x0049] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x004e A[Catch:{ IOException -> 0x0118 }] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00eb A[ExcHandler: Throwable (th java.lang.Throwable), Splitter:B:1:0x0007] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0122 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:1:0x0007] */
    /* JADX WARNING: Unknown variable types count: 14 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.xiaomi.channel.commonutils.network.b a(android.content.Context r9, java.lang.String r10, java.lang.String r11, java.util.Map<java.lang.String, java.lang.String> r12, java.lang.String r13) {
        /*
            r3 = 0
            r2 = 0
            com.xiaomi.channel.commonutils.network.b r5 = new com.xiaomi.channel.commonutils.network.b
            r5.<init>()
            java.net.URL r0 = b(r10)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.net.HttpURLConnection r6 = b(r9, r0)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            r0 = 10000(0x2710, float:1.4013E-41)
            r6.setConnectTimeout(r0)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            r0 = 15000(0x3a98, float:2.102E-41)
            r6.setReadTimeout(r0)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            if (r11 != 0) goto L_0x001d
            java.lang.String r11 = "GET"
        L_0x001d:
            r6.setRequestMethod(r11)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            if (r12 == 0) goto L_0x0052
            java.util.Set r0 = r12.keySet()     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.util.Iterator r4 = r0.iterator()     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
        L_0x002a:
            boolean r0 = r4.hasNext()     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            if (r0 == 0) goto L_0x0052
            java.lang.Object r0 = r4.next()     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.lang.Object r1 = r12.get(r0)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            r6.setRequestProperty(r0, r1)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            goto L_0x002a
        L_0x0040:
            r0 = move-exception
            r1 = r2
        L_0x0042:
            throw r0     // Catch:{ all -> 0x0043 }
        L_0x0043:
            r0 = move-exception
            r8 = r1
            r1 = r2
            r2 = r8
        L_0x0047:
            if (r1 == 0) goto L_0x004c
            r1.close()     // Catch:{ IOException -> 0x0118 }
        L_0x004c:
            if (r2 == 0) goto L_0x0051
            r2.close()     // Catch:{ IOException -> 0x0118 }
        L_0x0051:
            throw r0
        L_0x0052:
            boolean r0 = android.text.TextUtils.isEmpty(r13)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            if (r0 != 0) goto L_0x013c
            r0 = 1
            r6.setDoOutput(r0)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            byte[] r0 = r13.getBytes()     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.io.OutputStream r1 = r6.getOutputStream()     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            r4 = 0
            int r7 = r0.length     // Catch:{ IOException -> 0x0133, Throwable -> 0x012c }
            r1.write(r0, r4, r7)     // Catch:{ IOException -> 0x0133, Throwable -> 0x012c }
            r1.flush()     // Catch:{ IOException -> 0x0133, Throwable -> 0x012c }
            r1.close()     // Catch:{ IOException -> 0x0133, Throwable -> 0x012c }
            r4 = r2
        L_0x0070:
            int r0 = r6.getResponseCode()     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            r5.a = r0     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.lang.String r0 = "com.xiaomi.common.Network"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            r1.<init>()     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.lang.String r7 = "Http POST Response Code: "
            java.lang.StringBuilder r1 = r1.append(r7)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            int r7 = r5.a     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.lang.StringBuilder r1 = r1.append(r7)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.lang.String r1 = r1.toString()     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            android.util.Log.d(r0, r1)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            r0 = r3
        L_0x0091:
            java.lang.String r1 = r6.getHeaderFieldKey(r0)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.lang.String r3 = r6.getHeaderField(r0)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            if (r1 != 0) goto L_0x00cc
            if (r3 != 0) goto L_0x00cc
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch:{ IOException -> 0x00d6, Throwable -> 0x00eb, all -> 0x0122 }
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x00d6, Throwable -> 0x00eb, all -> 0x0122 }
            com.xiaomi.channel.commonutils.network.d$a r3 = new com.xiaomi.channel.commonutils.network.d$a     // Catch:{ IOException -> 0x00d6, Throwable -> 0x00eb, all -> 0x0122 }
            java.io.InputStream r7 = r6.getInputStream()     // Catch:{ IOException -> 0x00d6, Throwable -> 0x00eb, all -> 0x0122 }
            r3.<init>(r7)     // Catch:{ IOException -> 0x00d6, Throwable -> 0x00eb, all -> 0x0122 }
            r0.<init>(r3)     // Catch:{ IOException -> 0x00d6, Throwable -> 0x00eb, all -> 0x0122 }
            r1.<init>(r0)     // Catch:{ IOException -> 0x00d6, Throwable -> 0x00eb, all -> 0x0122 }
        L_0x00b0:
            java.lang.String r0 = r1.readLine()     // Catch:{ IOException -> 0x0139, Throwable -> 0x012e, all -> 0x0126 }
            java.lang.StringBuffer r3 = new java.lang.StringBuffer     // Catch:{ IOException -> 0x0139, Throwable -> 0x012e, all -> 0x0126 }
            r3.<init>()     // Catch:{ IOException -> 0x0139, Throwable -> 0x012e, all -> 0x0126 }
            java.lang.String r6 = "line.separator"
            java.lang.String r6 = java.lang.System.getProperty(r6)     // Catch:{ IOException -> 0x0139, Throwable -> 0x012e, all -> 0x0126 }
        L_0x00bf:
            if (r0 == 0) goto L_0x00fa
            r3.append(r0)     // Catch:{ IOException -> 0x0139, Throwable -> 0x012e, all -> 0x0126 }
            r3.append(r6)     // Catch:{ IOException -> 0x0139, Throwable -> 0x012e, all -> 0x0126 }
            java.lang.String r0 = r1.readLine()     // Catch:{ IOException -> 0x0139, Throwable -> 0x012e, all -> 0x0126 }
            goto L_0x00bf
        L_0x00cc:
            java.util.Map<java.lang.String, java.lang.String> r7 = r5.b     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            r7.put(r1, r3)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            int r0 = r0 + 1
            int r0 = r0 + 1
            goto L_0x0091
        L_0x00d6:
            r0 = move-exception
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            com.xiaomi.channel.commonutils.network.d$a r3 = new com.xiaomi.channel.commonutils.network.d$a     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            java.io.InputStream r6 = r6.getErrorStream()     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            r3.<init>(r6)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            r0.<init>(r3)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            r1.<init>(r0)     // Catch:{ IOException -> 0x0040, Throwable -> 0x00eb, all -> 0x0122 }
            goto L_0x00b0
        L_0x00eb:
            r0 = move-exception
            r1 = r2
        L_0x00ed:
            java.io.IOException r3 = new java.io.IOException     // Catch:{ all -> 0x00f7 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x00f7 }
            r3.<init>(r0)     // Catch:{ all -> 0x00f7 }
            throw r3     // Catch:{ all -> 0x00f7 }
        L_0x00f7:
            r0 = move-exception
            goto L_0x0047
        L_0x00fa:
            java.lang.String r0 = r3.toString()     // Catch:{ IOException -> 0x0139, Throwable -> 0x012e, all -> 0x0126 }
            r5.c = r0     // Catch:{ IOException -> 0x0139, Throwable -> 0x012e, all -> 0x0126 }
            r1.close()     // Catch:{ IOException -> 0x0139, Throwable -> 0x012e, all -> 0x0126 }
            r0 = 0
            if (r2 == 0) goto L_0x0109
            r4.close()     // Catch:{ IOException -> 0x010f }
        L_0x0109:
            if (r2 == 0) goto L_0x010e
            r0.close()     // Catch:{ IOException -> 0x010f }
        L_0x010e:
            return r5
        L_0x010f:
            r0 = move-exception
            java.lang.String r1 = "com.xiaomi.common.Network"
            java.lang.String r2 = "error while closing strean"
            android.util.Log.e(r1, r2, r0)
            goto L_0x010e
        L_0x0118:
            r1 = move-exception
            java.lang.String r2 = "com.xiaomi.common.Network"
            java.lang.String r3 = "error while closing strean"
            android.util.Log.e(r2, r3, r1)
            goto L_0x0051
        L_0x0122:
            r0 = move-exception
            r1 = r2
            goto L_0x0047
        L_0x0126:
            r0 = move-exception
            r8 = r1
            r1 = r2
            r2 = r8
            goto L_0x0047
        L_0x012c:
            r0 = move-exception
            goto L_0x00ed
        L_0x012e:
            r0 = move-exception
            r8 = r1
            r1 = r2
            r2 = r8
            goto L_0x00ed
        L_0x0133:
            r0 = move-exception
            r8 = r2
            r2 = r1
            r1 = r8
            goto L_0x0042
        L_0x0139:
            r0 = move-exception
            goto L_0x0042
        L_0x013c:
            r4 = r2
            goto L_0x0070
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.channel.commonutils.network.d.a(android.content.Context, java.lang.String, java.lang.String, java.util.Map, java.lang.String):com.xiaomi.channel.commonutils.network.b");
    }

    public static b a(Context context, String str, Map<String, String> map) {
        return a(context, str, "POST", null, a(map));
    }

    public static InputStream a(Context context, URL url, boolean z, String str, String str2) {
        return a(context, url, z, str, str2, null, null);
    }

    public static InputStream a(Context context, URL url, boolean z, String str, String str2, Map<String, String> map, b bVar) {
        if (context == null) {
            throw new IllegalArgumentException("context");
        } else if (url == null) {
            throw new IllegalArgumentException("url");
        } else {
            URL url2 = !z ? new URL(a(url.toString())) : url;
            try {
                HttpURLConnection.setFollowRedirects(true);
                HttpURLConnection b2 = b(context, url2);
                b2.setConnectTimeout(10000);
                b2.setReadTimeout(15000);
                if (!TextUtils.isEmpty(str)) {
                    b2.setRequestProperty("User-Agent", str);
                }
                if (str2 != null) {
                    b2.setRequestProperty("Cookie", str2);
                }
                if (map != null) {
                    for (String str3 : map.keySet()) {
                        b2.setRequestProperty(str3, (String) map.get(str3));
                    }
                }
                if (bVar != null) {
                    if (url.getProtocol().equals(HttpHost.DEFAULT_SCHEME_NAME) || url.getProtocol().equals("https")) {
                        bVar.a = b2.getResponseCode();
                        if (bVar.b == null) {
                            bVar.b = new HashMap();
                        }
                        int i = 0;
                        while (true) {
                            String headerFieldKey = b2.getHeaderFieldKey(i);
                            String headerField = b2.getHeaderField(i);
                            if (headerFieldKey == null && headerField == null) {
                                break;
                            }
                            if (!TextUtils.isEmpty(headerFieldKey) && !TextUtils.isEmpty(headerField)) {
                                bVar.b.put(headerFieldKey, headerField);
                            }
                            i++;
                        }
                    }
                }
                return new a(b2.getInputStream());
            } catch (IOException e) {
                throw e;
            } catch (Throwable th) {
                throw new IOException(th.getMessage());
            }
        }
    }

    public static String a(Context context, URL url) {
        return a(context, url, false, null, "UTF-8", null);
    }

    public static String a(Context context, URL url, boolean z, String str, String str2, String str3) {
        InputStream inputStream = null;
        try {
            inputStream = a(context, url, z, str, str3);
            StringBuilder sb = new StringBuilder(1024);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str2));
            char[] cArr = new char[4096];
            while (true) {
                int read = bufferedReader.read(cArr);
                if (-1 == read) {
                    break;
                }
                sb.append(cArr, 0, read);
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    Log.e("com.xiaomi.common.Network", "Failed to close responseStream" + e.toString());
                }
            }
            return sb.toString();
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    Log.e("com.xiaomi.common.Network", "Failed to close responseStream" + e2.toString());
                }
            }
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        new String();
        return String.format("%s&key=%s", new Object[]{str, c.a(String.format("%sbe988a6134bc8254465424e5a70ef037", new Object[]{str}))});
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0076 A[SYNTHETIC, Splitter:B:18:0x0076] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x007b A[Catch:{ IOException -> 0x016b }] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0080 A[Catch:{ IOException -> 0x016b }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.lang.String r8, java.util.Map<java.lang.String, java.lang.String> r9, java.io.File r10, java.lang.String r11) {
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
            java.net.URL r0 = new java.net.URL     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            r0.<init>(r8)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.net.URLConnection r0 = r0.openConnection()     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            r1 = 15000(0x3a98, float:2.102E-41)
            r0.setReadTimeout(r1)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            r1 = 10000(0x2710, float:1.4013E-41)
            r0.setConnectTimeout(r1)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            r1 = 1
            r0.setDoInput(r1)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            r1 = 1
            r0.setDoOutput(r1)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            r1 = 0
            r0.setUseCaches(r1)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.lang.String r1 = "POST"
            r0.setRequestMethod(r1)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.lang.String r1 = "Connection"
            java.lang.String r2 = "Keep-Alive"
            r0.setRequestProperty(r1, r2)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.lang.String r1 = "Content-Type"
            java.lang.String r2 = "multipart/form-data;boundary=*****"
            r0.setRequestProperty(r1, r2)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            if (r9 == 0) goto L_0x0084
            java.util.Set r1 = r9.entrySet()     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.util.Iterator r5 = r1.iterator()     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
        L_0x0051:
            boolean r1 = r5.hasNext()     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            if (r1 == 0) goto L_0x0084
            java.lang.Object r1 = r5.next()     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.lang.Object r2 = r1.getKey()     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.lang.String r2 = (java.lang.String) r2     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.lang.Object r1 = r1.getValue()     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            r0.setRequestProperty(r2, r1)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            goto L_0x0051
        L_0x006d:
            r0 = move-exception
            r1 = r3
            r2 = r3
        L_0x0070:
            throw r0     // Catch:{ all -> 0x0071 }
        L_0x0071:
            r0 = move-exception
            r4 = r2
            r2 = r1
        L_0x0074:
            if (r4 == 0) goto L_0x0079
            r4.close()     // Catch:{ IOException -> 0x016b }
        L_0x0079:
            if (r2 == 0) goto L_0x007e
            r2.close()     // Catch:{ IOException -> 0x016b }
        L_0x007e:
            if (r3 == 0) goto L_0x0083
            r3.close()     // Catch:{ IOException -> 0x016b }
        L_0x0083:
            throw r0
        L_0x0084:
            int r1 = r4.length()     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            int r1 = r1 + 77
            long r4 = r10.length()     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            int r2 = (int) r4     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            int r1 = r1 + r2
            int r2 = r11.length()     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            int r1 = r1 + r2
            r0.setFixedLengthStreamingMode(r1)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.io.DataOutputStream r2 = new java.io.DataOutputStream     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.io.OutputStream r1 = r0.getOutputStream()     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            r2.<init>(r1)     // Catch:{ IOException -> 0x006d, Throwable -> 0x015b, all -> 0x0175 }
            java.lang.String r1 = "--*****\r\n"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            r1.<init>()     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            java.lang.String r4 = "Content-Disposition: form-data; name=\""
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            java.lang.StringBuilder r1 = r1.append(r11)     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            java.lang.String r4 = "\";filename=\""
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            java.lang.String r4 = r10.getName()     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            java.lang.String r4 = "\""
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            java.lang.String r4 = "\r\n"
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            java.lang.String r1 = r1.toString()     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            java.lang.String r1 = "\r\n"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            r4.<init>(r10)     // Catch:{ IOException -> 0x018a, Throwable -> 0x0182, all -> 0x017a }
            r1 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r1]     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
        L_0x00e4:
            int r5 = r4.read(r1)     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            r6 = -1
            if (r5 == r6) goto L_0x00f8
            r6 = 0
            r2.write(r1, r6, r5)     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            r2.flush()     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            goto L_0x00e4
        L_0x00f3:
            r0 = move-exception
            r1 = r2
            r2 = r4
            goto L_0x0070
        L_0x00f8:
            java.lang.String r1 = "\r\n"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            java.lang.String r1 = "--"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            java.lang.String r1 = "*****"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            java.lang.String r1 = "--"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            java.lang.String r1 = "\r\n"
            r2.writeBytes(r1)     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            r2.flush()     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            java.lang.StringBuffer r5 = new java.lang.StringBuffer     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            r5.<init>()     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            java.io.InputStreamReader r6 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            com.xiaomi.channel.commonutils.network.d$a r7 = new com.xiaomi.channel.commonutils.network.d$a     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            java.io.InputStream r0 = r0.getInputStream()     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            r7.<init>(r0)     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            r6.<init>(r7)     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
            r1.<init>(r6)     // Catch:{ IOException -> 0x00f3, Throwable -> 0x0185 }
        L_0x012c:
            java.lang.String r0 = r1.readLine()     // Catch:{ IOException -> 0x0136, Throwable -> 0x0187, all -> 0x017e }
            if (r0 == 0) goto L_0x013c
            r5.append(r0)     // Catch:{ IOException -> 0x0136, Throwable -> 0x0187, all -> 0x017e }
            goto L_0x012c
        L_0x0136:
            r0 = move-exception
            r3 = r1
            r1 = r2
            r2 = r4
            goto L_0x0070
        L_0x013c:
            java.lang.String r0 = r5.toString()     // Catch:{ IOException -> 0x0136, Throwable -> 0x0187, all -> 0x017e }
            if (r4 == 0) goto L_0x0145
            r4.close()     // Catch:{ IOException -> 0x0151 }
        L_0x0145:
            if (r2 == 0) goto L_0x014a
            r2.close()     // Catch:{ IOException -> 0x0151 }
        L_0x014a:
            if (r1 == 0) goto L_0x0008
            r1.close()     // Catch:{ IOException -> 0x0151 }
            goto L_0x0008
        L_0x0151:
            r1 = move-exception
            java.lang.String r2 = "com.xiaomi.common.Network"
            java.lang.String r3 = "error while closing strean"
            android.util.Log.e(r2, r3, r1)
            goto L_0x0008
        L_0x015b:
            r0 = move-exception
            r2 = r3
            r4 = r3
        L_0x015e:
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x0168 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0168 }
            r1.<init>(r0)     // Catch:{ all -> 0x0168 }
            throw r1     // Catch:{ all -> 0x0168 }
        L_0x0168:
            r0 = move-exception
            goto L_0x0074
        L_0x016b:
            r1 = move-exception
            java.lang.String r2 = "com.xiaomi.common.Network"
            java.lang.String r3 = "error while closing strean"
            android.util.Log.e(r2, r3, r1)
            goto L_0x0083
        L_0x0175:
            r0 = move-exception
            r2 = r3
            r4 = r3
            goto L_0x0074
        L_0x017a:
            r0 = move-exception
            r4 = r3
            goto L_0x0074
        L_0x017e:
            r0 = move-exception
            r3 = r1
            goto L_0x0074
        L_0x0182:
            r0 = move-exception
            r4 = r3
            goto L_0x015e
        L_0x0185:
            r0 = move-exception
            goto L_0x015e
        L_0x0187:
            r0 = move-exception
            r3 = r1
            goto L_0x015e
        L_0x018a:
            r0 = move-exception
            r1 = r2
            r2 = r3
            goto L_0x0070
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.channel.commonutils.network.d.a(java.lang.String, java.util.Map, java.io.File, java.lang.String):java.lang.String");
    }

    public static String a(URL url) {
        StringBuilder sb = new StringBuilder();
        sb.append(url.getProtocol()).append("://").append("10.0.0.172").append(url.getPath());
        if (!TextUtils.isEmpty(url.getQuery())) {
            sb.append("?").append(url.getQuery());
        }
        return sb.toString();
    }

    public static String a(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Entry entry : map.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                try {
                    stringBuffer.append(URLEncoder.encode((String) entry.getKey(), "UTF-8"));
                    stringBuffer.append("=");
                    stringBuffer.append(URLEncoder.encode((String) entry.getValue(), "UTF-8"));
                    stringBuffer.append("&");
                } catch (UnsupportedEncodingException e) {
                    Log.d("com.xiaomi.common.Network", "Failed to convert from params map to string: " + e.toString());
                    Log.d("com.xiaomi.common.Network", "map: " + map.toString());
                    return null;
                }
            }
        }
        return (stringBuffer.length() > 0 ? stringBuffer.deleteCharAt(stringBuffer.length() - 1) : stringBuffer).toString();
    }

    public static HttpURLConnection b(Context context, URL url) {
        if (!HttpHost.DEFAULT_SCHEME_NAME.equals(url.getProtocol())) {
            return (HttpURLConnection) url.openConnection();
        }
        if (c(context)) {
            return (HttpURLConnection) url.openConnection(new Proxy(Type.HTTP, new InetSocketAddress("10.0.0.200", 80)));
        }
        if (!b(context)) {
            return (HttpURLConnection) url.openConnection();
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(a(url)).openConnection();
        httpURLConnection.addRequestProperty("X-Online-Host", url.getHost());
        return httpURLConnection;
    }

    private static URL b(String str) {
        return new URL(str);
    }

    public static boolean b(Context context) {
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

    public static boolean d(Context context) {
        return a(context) >= 0;
    }

    public static boolean e(Context context) {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            networkInfo = null;
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean f(Context context) {
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

    public static boolean g(Context context) {
        return h(context) || i(context) || j(context);
    }

    public static boolean h(Context context) {
        NetworkInfo k = k(context);
        return k != null && k.getType() == 0 && 13 == k.getSubtype();
    }

    public static boolean i(Context context) {
        NetworkInfo k = k(context);
        if (k == null || k.getType() != 0) {
            return false;
        }
        String subtypeName = k.getSubtypeName();
        if ("TD-SCDMA".equalsIgnoreCase(subtypeName) || "CDMA2000".equalsIgnoreCase(subtypeName) || "WCDMA".equalsIgnoreCase(subtypeName)) {
            return true;
        }
        switch (k.getSubtype()) {
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return true;
            default:
                return false;
        }
    }

    public static boolean j(Context context) {
        NetworkInfo k = k(context);
        if (k == null || k.getType() != 0) {
            return false;
        }
        switch (k.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return true;
            default:
                return false;
        }
    }

    public static NetworkInfo k(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return null;
            }
            return connectivityManager.getActiveNetworkInfo();
        } catch (Exception e) {
            return null;
        }
    }

    public static String l(Context context) {
        if (f(context)) {
            return Network.NETWORK_TYPE_WIFI;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return "";
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                return activeNetworkInfo == null ? "" : (activeNetworkInfo.getTypeName() + "-" + activeNetworkInfo.getSubtypeName() + "-" + activeNetworkInfo.getExtraInfo()).toLowerCase();
            } catch (Exception e) {
                return "";
            }
        } catch (Exception e2) {
            return "";
        }
    }
}
