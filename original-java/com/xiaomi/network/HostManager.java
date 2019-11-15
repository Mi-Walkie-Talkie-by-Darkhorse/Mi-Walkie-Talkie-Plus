package com.xiaomi.network;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.Uri.Builder;
import android.net.wifi.WifiManager;
import android.os.Process;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import com.amap.api.services.district.DistrictSearchQuery;
import com.mi.milinkforgame.sdk.data.Const;
import com.mi.mimsgsdk.utils.Network;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.network.a;
import com.xiaomi.channel.commonutils.network.c;
import com.xiaomi.channel.commonutils.network.d;
import com.xiaomi.mipush.sdk.Constants;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class HostManager {
    private static HostManagerFactory factory;
    protected static boolean hostLoaded = false;
    protected static Context sAppContext;
    private static String sAppName;
    private static String sAppVersion;
    private static HostManager sInstance;
    protected static Map<String, Fallback> sReservedHosts = new HashMap();
    private final long MAX_REQUEST_FAILURE_CNT;
    private String currentISP;
    private long lastRemoteRequestTimestamp;
    protected Map<String, Fallbacks> mHostsMapping;
    private long remoteRequestFailureCount;
    private HostFilter sHostFilter;
    protected HttpGet sHttpGetter;
    private String sUserId;

    public interface HostManagerFactory {
        HostManager a(Context context, HostFilter hostFilter, HttpGet httpGet, String str);
    }

    public interface HttpGet {
        String a(String str);
    }

    protected HostManager(Context context, HostFilter hostFilter, HttpGet httpGet, String str) {
        this(context, hostFilter, httpGet, str, null, null);
    }

    protected HostManager(Context context, HostFilter hostFilter, HttpGet httpGet, String str, String str2, String str3) {
        this.mHostsMapping = new HashMap();
        this.sUserId = "0";
        this.remoteRequestFailureCount = 0;
        this.MAX_REQUEST_FAILURE_CNT = 15;
        this.lastRemoteRequestTimestamp = 0;
        this.currentISP = "isp_prov_city_country_ip";
        this.sHttpGetter = httpGet;
        if (hostFilter == null) {
            this.sHostFilter = new a(this);
        } else {
            this.sHostFilter = hostFilter;
        }
        this.sUserId = str;
        if (str2 == null) {
            str2 = context.getPackageName();
        }
        sAppName = str2;
        if (str3 == null) {
            str3 = getVersionName();
        }
        sAppVersion = str3;
    }

    public static void addReservedHost(String str, String str2) {
        Fallback fallback = (Fallback) sReservedHosts.get(str);
        synchronized (sReservedHosts) {
            if (fallback == null) {
                Fallback fallback2 = new Fallback(str);
                fallback2.a(604800000);
                fallback2.b(str2);
                sReservedHosts.put(str, fallback2);
            } else {
                fallback.b(str2);
            }
        }
    }

    static String getActiveNetworkLabel() {
        if (sAppContext == null) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) sAppContext.getSystemService("connectivity");
            if (connectivityManager == null) {
                return EnvironmentCompat.MEDIA_UNKNOWN;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return EnvironmentCompat.MEDIA_UNKNOWN;
            }
            if (activeNetworkInfo.getType() != 1) {
                return activeNetworkInfo.getTypeName() + "-" + activeNetworkInfo.getSubtypeName();
            }
            WifiManager wifiManager = (WifiManager) sAppContext.getSystemService(Network.NETWORK_TYPE_WIFI);
            if (!(wifiManager == null || wifiManager.getConnectionInfo() == null)) {
                return "WIFI-" + wifiManager.getConnectionInfo().getSSID();
            }
            return EnvironmentCompat.MEDIA_UNKNOWN;
        } catch (Throwable th) {
        }
    }

    public static synchronized HostManager getInstance() {
        HostManager hostManager;
        synchronized (HostManager.class) {
            if (sInstance == null) {
                throw new IllegalStateException("the host manager is not initialized yet.");
            }
            hostManager = sInstance;
        }
        return hostManager;
    }

    private String getVersionName() {
        try {
            PackageInfo packageInfo = sAppContext.getPackageManager().getPackageInfo(sAppContext.getPackageName(), 16384);
            if (packageInfo != null) {
                return packageInfo.versionName;
            }
        } catch (Exception e) {
        }
        return "0";
    }

    public static synchronized void init(Context context, HostFilter hostFilter, HttpGet httpGet, String str, String str2, String str3) {
        synchronized (HostManager.class) {
            sAppContext = context.getApplicationContext();
            if (sAppContext == null) {
                sAppContext = context;
            }
            if (sInstance == null) {
                if (factory == null) {
                    sInstance = new HostManager(context, hostFilter, httpGet, str, str2, str3);
                } else {
                    sInstance = factory.a(context, hostFilter, httpGet, str);
                }
            }
        }
    }

    static String obfuscate(String str) {
        try {
            int length = str.length();
            byte[] bytes = str.getBytes("UTF-8");
            for (int i = 0; i < bytes.length; i++) {
                byte b = bytes[i];
                if ((b & 240) != 240) {
                    bytes[i] = (byte) (((b & 15) ^ ((byte) (((b >> 4) + length) & 15))) | (b & 240));
                }
            }
            return new String(bytes);
        } catch (UnsupportedEncodingException e) {
            return str;
        }
    }

    private ArrayList<Fallback> requestRemoteFallbacks(ArrayList<String> arrayList) {
        purge();
        synchronized (this.mHostsMapping) {
            checkHostMapping();
            for (String str : this.mHostsMapping.keySet()) {
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        boolean isEmpty = sReservedHosts.isEmpty();
        synchronized (sReservedHosts) {
            Object[] array = sReservedHosts.values().toArray();
            int length = array.length;
            int i = 0;
            while (i < length) {
                Fallback fallback = (Fallback) array[i];
                if (!fallback.b()) {
                    isEmpty = true;
                    sReservedHosts.remove(fallback.b);
                }
                i++;
                isEmpty = isEmpty;
            }
        }
        if (!arrayList.contains(getHost())) {
            arrayList.add(getHost());
        }
        ArrayList<Fallback> arrayList2 = new ArrayList<>(arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(null);
        }
        try {
            String str2 = d.f(sAppContext) ? Network.NETWORK_TYPE_WIFI : "wap";
            String remoteFallbackJSON = getRemoteFallbackJSON(arrayList, str2, this.sUserId, isEmpty);
            if (!TextUtils.isEmpty(remoteFallbackJSON)) {
                JSONObject jSONObject = new JSONObject(remoteFallbackJSON);
                b.b(remoteFallbackJSON);
                if ("OK".equalsIgnoreCase(jSONObject.getString("S"))) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("R");
                    String string = jSONObject2.getString(DistrictSearchQuery.KEYWORDS_PROVINCE);
                    String string2 = jSONObject2.getString(DistrictSearchQuery.KEYWORDS_CITY);
                    String string3 = jSONObject2.getString("isp");
                    String string4 = jSONObject2.getString("ip");
                    String string5 = jSONObject2.getString(DistrictSearchQuery.KEYWORDS_COUNTRY);
                    JSONObject jSONObject3 = jSONObject2.getJSONObject(str2);
                    if (str2.equals("wap")) {
                        str2 = getActiveNetworkLabel();
                    }
                    b.a("get bucket: ip = " + string4 + " net = " + string3 + str2 + " hosts = " + jSONObject3.toString());
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        String str3 = (String) arrayList.get(i3);
                        JSONArray optJSONArray = jSONObject3.optJSONArray(str3);
                        if (optJSONArray == null) {
                            b.a("no bucket found for " + str3);
                        } else {
                            Fallback fallback2 = new Fallback(str3);
                            for (int i4 = 0; i4 < optJSONArray.length(); i4++) {
                                String string6 = optJSONArray.getString(i4);
                                if (!TextUtils.isEmpty(string6)) {
                                    fallback2.a(new c(string6, optJSONArray.length() - i4));
                                }
                            }
                            arrayList2.set(i3, fallback2);
                            fallback2.g = string5;
                            fallback2.c = string;
                            fallback2.e = string3;
                            fallback2.f = string4;
                            fallback2.d = string2;
                            if (jSONObject2.has("stat-percent")) {
                                fallback2.a(jSONObject2.getDouble("stat-percent"));
                            }
                            if (jSONObject2.has("stat-domain")) {
                                fallback2.c(jSONObject2.getString("stat-domain"));
                            }
                            if (jSONObject2.has(Values.TTL)) {
                                fallback2.a(((long) jSONObject2.getInt(Values.TTL)) * 1000);
                            }
                            setCurrentISP(fallback2.e());
                        }
                    }
                    JSONObject optJSONObject = jSONObject2.optJSONObject("reserved");
                    if (optJSONObject != null) {
                        long j = jSONObject2.has("reserved-ttl") ? ((long) jSONObject2.getInt("reserved-ttl")) * 1000 : 604800000;
                        Iterator keys = optJSONObject.keys();
                        while (keys.hasNext()) {
                            String str4 = (String) keys.next();
                            JSONArray optJSONArray2 = optJSONObject.optJSONArray(str4);
                            if (optJSONArray2 == null) {
                                b.a("no bucket found for " + str4);
                            } else {
                                Fallback fallback3 = new Fallback(str4);
                                fallback3.a(j);
                                for (int i5 = 0; i5 < optJSONArray2.length(); i5++) {
                                    String string7 = optJSONArray2.getString(i5);
                                    if (!TextUtils.isEmpty(string7)) {
                                        fallback3.a(new c(string7, optJSONArray2.length() - i5));
                                    }
                                }
                                synchronized (sReservedHosts) {
                                    if (this.sHostFilter.a(str4)) {
                                        sReservedHosts.put(str4, fallback3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            b.a("failed to get bucket " + e.getMessage());
        }
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i7 < arrayList.size()) {
                Fallback fallback4 = (Fallback) arrayList2.get(i7);
                if (fallback4 != null) {
                    updateFallbacks((String) arrayList.get(i7), fallback4);
                }
                i6 = i7 + 1;
            } else {
                persist();
                return arrayList2;
            }
        }
    }

    public static synchronized void setHostManagerFactory(HostManagerFactory hostManagerFactory) {
        synchronized (HostManager.class) {
            factory = hostManagerFactory;
            sInstance = null;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean checkHostMapping() {
        /*
            r4 = this;
            r0 = 1
            java.util.Map<java.lang.String, com.xiaomi.network.Fallbacks> r1 = r4.mHostsMapping
            monitor-enter(r1)
            boolean r2 = hostLoaded     // Catch:{ all -> 0x0044 }
            if (r2 != 0) goto L_0x0042
            r2 = 1
            hostLoaded = r2     // Catch:{ all -> 0x0044 }
            java.util.Map<java.lang.String, com.xiaomi.network.Fallbacks> r2 = r4.mHostsMapping     // Catch:{ all -> 0x0044 }
            r2.clear()     // Catch:{ all -> 0x0044 }
            java.lang.String r2 = r4.loadHosts()     // Catch:{ Throwable -> 0x0024 }
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x0024 }
            if (r3 != 0) goto L_0x003f
            r4.fromJSON(r2)     // Catch:{ Throwable -> 0x0024 }
            java.lang.String r2 = "loading the new hosts succeed"
            com.xiaomi.channel.commonutils.logger.b.b(r2)     // Catch:{ Throwable -> 0x0024 }
            monitor-exit(r1)     // Catch:{ all -> 0x0044 }
        L_0x0023:
            return r0
        L_0x0024:
            r0 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0044 }
            r2.<init>()     // Catch:{ all -> 0x0044 }
            java.lang.String r3 = "load bucket failure: "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x0044 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0044 }
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch:{ all -> 0x0044 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0044 }
            com.xiaomi.channel.commonutils.logger.b.a(r0)     // Catch:{ all -> 0x0044 }
        L_0x003f:
            monitor-exit(r1)     // Catch:{ all -> 0x0044 }
            r0 = 0
            goto L_0x0023
        L_0x0042:
            monitor-exit(r1)     // Catch:{ all -> 0x0044 }
            goto L_0x0023
        L_0x0044:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0044 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.network.HostManager.checkHostMapping():boolean");
    }

    public void clear() {
        synchronized (this.mHostsMapping) {
            this.mHostsMapping.clear();
        }
    }

    /* access modifiers changed from: protected */
    public void fromJSON(String str) {
        synchronized (this.mHostsMapping) {
            this.mHostsMapping.clear();
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("ver") != 2) {
                throw new JSONException("Bad version");
            }
            JSONArray optJSONArray = jSONObject.optJSONArray(Const.PARAM_DATA);
            for (int i = 0; i < optJSONArray.length(); i++) {
                Fallbacks fromJSON = new Fallbacks().fromJSON(optJSONArray.getJSONObject(i));
                this.mHostsMapping.put(fromJSON.getHost(), fromJSON);
            }
            JSONArray optJSONArray2 = jSONObject.optJSONArray("reserved");
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                Fallback a = new Fallback("").a(optJSONArray2.getJSONObject(i2));
                sReservedHosts.put(a.b, a);
            }
        }
    }

    public Fallback getFallbacksByHost(String str) {
        return getFallbacksByHost(str, true);
    }

    public Fallback getFallbacksByHost(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the host is empty");
        } else if (!this.sHostFilter.a(str)) {
            return null;
        } else {
            Fallback localFallback = getLocalFallback(str);
            if (localFallback != null && localFallback.b()) {
                return localFallback;
            }
            if (z && d.d(sAppContext)) {
                Fallback requestRemoteFallback = requestRemoteFallback(str);
                if (requestRemoteFallback != null) {
                    return requestRemoteFallback;
                }
            }
            return new b(this, str, localFallback);
        }
    }

    public Fallback getFallbacksByURL(String str) {
        if (!TextUtils.isEmpty(str)) {
            return getFallbacksByHost(new URL(str).getHost(), true);
        }
        throw new IllegalArgumentException("the url is empty");
    }

    /* access modifiers changed from: protected */
    public String getHost() {
        return "resolver.msg.xiaomi.net";
    }

    /* access modifiers changed from: protected */
    public Fallback getLocalFallback(String str) {
        Fallbacks fallbacks;
        synchronized (this.mHostsMapping) {
            checkHostMapping();
            fallbacks = (Fallbacks) this.mHostsMapping.get(str);
        }
        if (fallbacks != null) {
            Fallback fallback = fallbacks.getFallback();
            if (fallback != null) {
                return fallback;
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public String getProcessName() {
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) sAppContext.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == Process.myPid()) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return "com.xiaomi";
    }

    /* access modifiers changed from: protected */
    public String getRemoteFallbackJSON(ArrayList<String> arrayList, String str, String str2, boolean z) {
        ArrayList a;
        ArrayList arrayList2 = new ArrayList();
        ArrayList<c> arrayList3 = new ArrayList<>();
        arrayList3.add(new a("type", str));
        if (str.equals("wap")) {
            arrayList3.add(new a("conpt", obfuscate(d.l(sAppContext))));
        }
        if (z) {
            arrayList3.add(new a("reserved", "1"));
        }
        arrayList3.add(new a("uuid", str2));
        arrayList3.add(new a("list", com.xiaomi.channel.commonutils.string.d.a((Collection<?>) arrayList, Constants.ACCEPT_TIME_SEPARATOR_SP)));
        Fallback localFallback = getLocalFallback("resolver.msg.xiaomi.net");
        String format = String.format(Locale.US, "http://%1$s/gslb/?ver=4.0", new Object[]{"resolver.msg.xiaomi.net"});
        if (localFallback == null) {
            arrayList2.add(format);
            synchronized (sReservedHosts) {
                Fallback fallback = (Fallback) sReservedHosts.get("resolver.msg.xiaomi.net");
                if (fallback != null) {
                    Iterator it = fallback.a(true).iterator();
                    while (it.hasNext()) {
                        arrayList2.add(String.format(Locale.US, "http://%1$s/gslb/?ver=4.0", new Object[]{(String) it.next()}));
                    }
                }
            }
            a = arrayList2;
        } else {
            a = localFallback.a(format);
        }
        Iterator it2 = a.iterator();
        IOException e = null;
        while (it2.hasNext()) {
            Builder buildUpon = Uri.parse((String) it2.next()).buildUpon();
            for (c cVar : arrayList3) {
                buildUpon.appendQueryParameter(cVar.a(), cVar.b());
            }
            try {
                return this.sHttpGetter == null ? d.a(sAppContext, new URL(buildUpon.toString())) : this.sHttpGetter.a(buildUpon.toString());
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e == null) {
            return null;
        }
        b.a("network exception: " + e.getMessage());
        throw e;
    }

    /* JADX WARNING: type inference failed for: r0v0, types: [java.io.Reader] */
    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r2v1, types: [java.io.Reader] */
    /* JADX WARNING: type inference failed for: r2v2 */
    /* JADX WARNING: type inference failed for: r2v3, types: [java.io.Reader] */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* access modifiers changed from: protected */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String loadHosts() {
        /*
            r5 = this;
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            android.content.Context r2 = sAppContext     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            java.io.File r2 = r2.getFilesDir()     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            java.lang.String r3 = r5.getProcessName()     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            r1.<init>(r2, r3)     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            boolean r2 = r1.isFile()     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            if (r2 == 0) goto L_0x005b
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            r4.<init>(r1)     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            r3.<init>(r4)     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            r2.<init>(r3)     // Catch:{ Throwable -> 0x0068, all -> 0x005f }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0034 }
            r1.<init>()     // Catch:{ Throwable -> 0x0034 }
        L_0x002a:
            java.lang.String r3 = r2.readLine()     // Catch:{ Throwable -> 0x0034 }
            if (r3 == 0) goto L_0x0053
            r1.append(r3)     // Catch:{ Throwable -> 0x0034 }
            goto L_0x002a
        L_0x0034:
            r1 = move-exception
        L_0x0035:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0066 }
            r3.<init>()     // Catch:{ all -> 0x0066 }
            java.lang.String r4 = "load host exception "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0066 }
            java.lang.String r1 = r1.getMessage()     // Catch:{ all -> 0x0066 }
            java.lang.StringBuilder r1 = r3.append(r1)     // Catch:{ all -> 0x0066 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0066 }
            com.xiaomi.channel.commonutils.logger.b.a(r1)     // Catch:{ all -> 0x0066 }
            com.xiaomi.channel.commonutils.file.a.a(r2)
        L_0x0052:
            return r0
        L_0x0053:
            java.lang.String r0 = r1.toString()     // Catch:{ Throwable -> 0x0034 }
            com.xiaomi.channel.commonutils.file.a.a(r2)
            goto L_0x0052
        L_0x005b:
            com.xiaomi.channel.commonutils.file.a.a(r0)
            goto L_0x0052
        L_0x005f:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x0062:
            com.xiaomi.channel.commonutils.file.a.a(r2)
            throw r0
        L_0x0066:
            r0 = move-exception
            goto L_0x0062
        L_0x0068:
            r1 = move-exception
            r2 = r0
            goto L_0x0035
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.network.HostManager.loadHosts():java.lang.String");
    }

    public void persist() {
        synchronized (this.mHostsMapping) {
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(sAppContext.openFileOutput(getProcessName(), 0)));
                String jSONObject = toJSON().toString();
                if (!TextUtils.isEmpty(jSONObject)) {
                    bufferedWriter.write(jSONObject);
                }
                bufferedWriter.close();
            } catch (Exception e) {
                b.a("persist bucket failure: " + e.getMessage());
            }
        }
    }

    public void purge() {
        synchronized (this.mHostsMapping) {
            for (Fallbacks purge : this.mHostsMapping.values()) {
                purge.purge(true);
            }
            boolean z = false;
            while (!z) {
                Iterator it = this.mHostsMapping.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    String str = (String) it.next();
                    if (((Fallbacks) this.mHostsMapping.get(str)).getFallbacks().isEmpty()) {
                        this.mHostsMapping.remove(str);
                        z = false;
                        break;
                    }
                }
            }
        }
    }

    public void refreshFallbacks() {
        ArrayList arrayList;
        synchronized (this.mHostsMapping) {
            checkHostMapping();
            arrayList = new ArrayList(this.mHostsMapping.keySet());
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Fallbacks fallbacks = (Fallbacks) this.mHostsMapping.get(arrayList.get(size));
                if (!(fallbacks == null || fallbacks.getFallback() == null)) {
                    arrayList.remove(size);
                }
            }
        }
        ArrayList requestRemoteFallbacks = requestRemoteFallbacks(arrayList);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < arrayList.size()) {
                if (requestRemoteFallbacks.get(i2) != null) {
                    updateFallbacks((String) arrayList.get(i2), (Fallback) requestRemoteFallbacks.get(i2));
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public Fallback requestRemoteFallback(String str) {
        if (System.currentTimeMillis() - this.lastRemoteRequestTimestamp > this.remoteRequestFailureCount * 60 * 1000) {
            this.lastRemoteRequestTimestamp = System.currentTimeMillis();
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            Fallback fallback = (Fallback) requestRemoteFallbacks(arrayList).get(0);
            if (fallback != null) {
                this.remoteRequestFailureCount = 0;
                return fallback;
            } else if (this.remoteRequestFailureCount < 15) {
                this.remoteRequestFailureCount++;
            }
        }
        return null;
    }

    public void setCurrentISP(String str) {
        this.currentISP = str;
    }

    /* access modifiers changed from: protected */
    public JSONObject toJSON() {
        JSONObject jSONObject;
        synchronized (this.mHostsMapping) {
            jSONObject = new JSONObject();
            jSONObject.put("ver", 2);
            JSONArray jSONArray = new JSONArray();
            for (Fallbacks json : this.mHostsMapping.values()) {
                jSONArray.put(json.toJSON());
            }
            jSONObject.put(Const.PARAM_DATA, jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            for (Fallback f : sReservedHosts.values()) {
                jSONArray2.put(f.f());
            }
            jSONObject.put("reserved", jSONArray2);
        }
        return jSONObject;
    }

    public void updateFallbacks(String str, Fallback fallback) {
        if (TextUtils.isEmpty(str) || fallback == null) {
            throw new IllegalArgumentException("the argument is invalid " + str + ", " + fallback);
        } else if (this.sHostFilter.a(str)) {
            synchronized (this.mHostsMapping) {
                checkHostMapping();
                if (this.mHostsMapping.containsKey(str)) {
                    ((Fallbacks) this.mHostsMapping.get(str)).addFallback(fallback);
                } else {
                    Fallbacks fallbacks = new Fallbacks(str);
                    fallbacks.addFallback(fallback);
                    this.mHostsMapping.put(str, fallbacks);
                }
            }
        }
    }
}
