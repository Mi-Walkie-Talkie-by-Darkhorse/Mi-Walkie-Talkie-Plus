package com.xiaomi.push;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import com.ifengyu.intercom.bean.QRConstants;
import com.umeng.analytics.pro.UMCommonContent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.service.C6338a;
import com.xiaomi.push.service.module.PushChannelRegion;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.xiaomi.push.cu */
/* loaded from: classes2.dex */
public class C6062cu {

    /* renamed from: a */
    protected static Context f21206a;

    /* renamed from: a */
    private static InterfaceC6063a f21207a;

    /* renamed from: a */
    private static C6062cu f21208a;

    /* renamed from: c */
    private static String f21211c;

    /* renamed from: d */
    private static String f21212d;

    /* renamed from: a */
    private long f21213a;

    /* renamed from: a */
    private InterfaceC6061ct f21214a;

    /* renamed from: a */
    protected InterfaceC6064b f21215a;

    /* renamed from: a */
    private String f21216a;

    /* renamed from: a */
    protected final Map<String, C6059cr> f21217a;

    /* renamed from: b */
    private final long f21218b;

    /* renamed from: b */
    private String f21219b;

    /* renamed from: c */
    private long f21220c;

    /* renamed from: b */
    protected static final Map<String, C6058cq> f21210b = new HashMap();

    /* renamed from: a */
    protected static boolean f21209a = false;

    /* renamed from: com.xiaomi.push.cu$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC6063a {
        /* renamed from: a */
        C6062cu mo1476a(Context context, InterfaceC6061ct interfaceC6061ct, InterfaceC6064b interfaceC6064b, String str);
    }

    /* renamed from: com.xiaomi.push.cu$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC6064b {
        /* renamed from: a */
        String mo1474a(String str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C6062cu(Context context, InterfaceC6061ct interfaceC6061ct, InterfaceC6064b interfaceC6064b, String str) {
        this(context, interfaceC6061ct, interfaceC6064b, str, null, null);
    }

    protected C6062cu(Context context, InterfaceC6061ct interfaceC6061ct, InterfaceC6064b interfaceC6064b, String str, String str2, String str3) {
        this.f21217a = new HashMap();
        this.f21216a = "0";
        this.f21213a = 0L;
        this.f21218b = 15L;
        this.f21220c = 0L;
        this.f21219b = "isp_prov_city_country_ip";
        this.f21215a = interfaceC6064b;
        this.f21214a = interfaceC6061ct == null ? new C6065cv(this) : interfaceC6061ct;
        this.f21216a = str;
        f21211c = str2 == null ? context.getPackageName() : str2;
        f21212d = str3 == null ? m3433f() : str3;
    }

    /* renamed from: a */
    public static synchronized C6062cu m3459a() {
        C6062cu c6062cu;
        synchronized (C6062cu.class) {
            c6062cu = f21208a;
            if (c6062cu == null) {
                throw new IllegalStateException("the host manager is not initialized yet.");
            }
        }
        return c6062cu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m3458a() {
        NetworkInfo activeNetworkInfo;
        Context context = f21206a;
        if (context == null) {
            return "unknown";
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return "unknown";
            }
            if (activeNetworkInfo.getType() == 1) {
                return "WIFI-UNKNOWN";
            }
            return activeNetworkInfo.getTypeName() + Constants.ACCEPT_TIME_SEPARATOR_SERVER + activeNetworkInfo.getSubtypeName();
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    /* renamed from: a */
    static String m3451a(String str) {
        try {
            int length = str.length();
            byte[] bytes = str.getBytes("UTF-8");
            for (int i = 0; i < bytes.length; i++) {
                byte b = bytes[i];
                int i2 = b & 240;
                if (i2 != 240) {
                    bytes[i] = (byte) (((b & 15) ^ ((byte) (((b >> 4) + length) & 15))) | i2);
                }
            }
            return new String(bytes);
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }

    /* renamed from: a */
    private ArrayList<C6058cq> m3446a(ArrayList<String> arrayList) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        m3437d();
        synchronized (this.f21217a) {
            m3455a();
            for (String str : this.f21217a.keySet()) {
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        Map<String, C6058cq> map = f21210b;
        synchronized (map) {
            for (Object obj : map.values().toArray()) {
                C6058cq c6058cq = (C6058cq) obj;
                if (!c6058cq.mo3429b()) {
                    f21210b.remove(c6058cq.f21193b);
                }
            }
        }
        if (!arrayList.contains(m3445b())) {
            arrayList.add(m3445b());
        }
        ArrayList<C6058cq> arrayList2 = new ArrayList<>(arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList2.add(null);
        }
        try {
            String str2 = C6013bi.m3659e(f21206a) ? "wifi" : "wap";
            String mo1473a = mo1473a(arrayList, str2, this.f21216a, true);
            if (!TextUtils.isEmpty(mo1473a)) {
                JSONObject jSONObject3 = new JSONObject(mo1473a);
                AbstractC5876b.m4141b(mo1473a);
                if ("OK".equalsIgnoreCase(jSONObject3.getString("S"))) {
                    JSONObject jSONObject4 = jSONObject3.getJSONObject("R");
                    String string = jSONObject4.getString("province");
                    String string2 = jSONObject4.getString("city");
                    String string3 = jSONObject4.getString("isp");
                    String string4 = jSONObject4.getString("ip");
                    String string5 = jSONObject4.getString(UMCommonContent.f19334O);
                    JSONObject jSONObject5 = jSONObject4.getJSONObject(str2);
                    AbstractC5876b.m4139c("get bucket: net=" + string3 + ", hosts=" + jSONObject5.toString());
                    int i2 = 0;
                    while (i2 < arrayList.size()) {
                        String str3 = arrayList.get(i2);
                        JSONArray optJSONArray = jSONObject5.optJSONArray(str3);
                        if (optJSONArray == null) {
                            AbstractC5876b.m4147a("no bucket found for " + str3);
                            jSONObject = jSONObject5;
                        } else {
                            C6058cq c6058cq2 = new C6058cq(str3);
                            int i3 = 0;
                            while (i3 < optJSONArray.length()) {
                                String string6 = optJSONArray.getString(i3);
                                if (TextUtils.isEmpty(string6)) {
                                    jSONObject2 = jSONObject5;
                                } else {
                                    jSONObject2 = jSONObject5;
                                    c6058cq2.m3483a(new C6070cz(string6, optJSONArray.length() - i3));
                                }
                                i3++;
                                jSONObject5 = jSONObject2;
                            }
                            jSONObject = jSONObject5;
                            arrayList2.set(i2, c6058cq2);
                            c6058cq2.f21198g = string5;
                            c6058cq2.f21194c = string;
                            c6058cq2.f21196e = string3;
                            c6058cq2.f21197f = string4;
                            c6058cq2.f21195d = string2;
                            if (jSONObject4.has("stat-percent")) {
                                c6058cq2.m3486a(jSONObject4.getDouble("stat-percent"));
                            }
                            if (jSONObject4.has("stat-domain")) {
                                c6058cq2.m3475b(jSONObject4.getString("stat-domain"));
                            }
                            if (jSONObject4.has("ttl")) {
                                c6058cq2.m3485a(jSONObject4.getInt("ttl") * 1000);
                            }
                            m3450a(c6058cq2.m3490a());
                        }
                        i2++;
                        jSONObject5 = jSONObject;
                    }
                    JSONObject optJSONObject = jSONObject4.optJSONObject("reserved");
                    if (optJSONObject != null) {
                        long j = jSONObject4.has("reserved-ttl") ? jSONObject4.getInt("reserved-ttl") * 1000 : 604800000L;
                        Iterator<String> keys = optJSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            JSONArray optJSONArray2 = optJSONObject.optJSONArray(next);
                            if (optJSONArray2 == null) {
                                AbstractC5876b.m4147a("no bucket found for " + next);
                            } else {
                                C6058cq c6058cq3 = new C6058cq(next);
                                c6058cq3.m3485a(j);
                                for (int i4 = 0; i4 < optJSONArray2.length(); i4++) {
                                    String string7 = optJSONArray2.getString(i4);
                                    if (!TextUtils.isEmpty(string7)) {
                                        c6058cq3.m3483a(new C6070cz(string7, optJSONArray2.length() - i4));
                                    }
                                }
                                Map<String, C6058cq> map2 = f21210b;
                                synchronized (map2) {
                                    if (this.f21214a.mo3432a(next)) {
                                        map2.put(next, c6058cq3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            AbstractC5876b.m4147a("failed to get bucket " + e.getMessage());
        }
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            C6058cq c6058cq4 = arrayList2.get(i5);
            if (c6058cq4 != null) {
                m3449a(arrayList.get(i5), c6058cq4);
            }
        }
        m3440c();
        return arrayList2;
    }

    /* renamed from: a */
    public static synchronized void m3454a(Context context, InterfaceC6061ct interfaceC6061ct, InterfaceC6064b interfaceC6064b, String str, String str2, String str3) {
        synchronized (C6062cu.class) {
            Context applicationContext = context.getApplicationContext();
            f21206a = applicationContext;
            if (applicationContext == null) {
                f21206a = context;
            }
            if (f21208a == null) {
                InterfaceC6063a interfaceC6063a = f21207a;
                if (interfaceC6063a == null) {
                    f21208a = new C6062cu(context, interfaceC6061ct, interfaceC6064b, str, str2, str3);
                } else {
                    f21208a = interfaceC6063a.mo1476a(context, interfaceC6061ct, interfaceC6064b, str);
                }
            }
        }
    }

    /* renamed from: a */
    public static synchronized void m3453a(InterfaceC6063a interfaceC6063a) {
        synchronized (C6062cu.class) {
            f21207a = interfaceC6063a;
            f21208a = null;
        }
    }

    /* renamed from: a */
    public static void m3448a(String str, String str2) {
        Map<String, C6058cq> map = f21210b;
        C6058cq c6058cq = map.get(str);
        synchronized (map) {
            if (c6058cq == null) {
                C6058cq c6058cq2 = new C6058cq(str);
                c6058cq2.m3485a(604800000L);
                c6058cq2.m3481a(str2);
                map.put(str, c6058cq2);
            } else {
                c6058cq.m3481a(str2);
            }
        }
    }

    /* renamed from: f */
    private String m3433f() {
        try {
            PackageInfo packageInfo = f21206a.getPackageManager().getPackageInfo(f21206a.getPackageName(), 16384);
            return packageInfo != null ? packageInfo.versionName : "0";
        } catch (Exception unused) {
            return "0";
        }
    }

    /* renamed from: a */
    public C6058cq m3452a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the url is empty");
        }
        return m3447a(new URL(str).getHost(), true);
    }

    /* renamed from: a */
    public C6058cq m3447a(String str, boolean z) {
        C6058cq m3434e;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the host is empty");
        }
        if (this.f21214a.mo3432a(str)) {
            C6058cq m3439c = m3439c(str);
            return (m3439c == null || !m3439c.mo3429b()) ? (z && C6013bi.m3662b(f21206a) && (m3434e = m3434e(str)) != null) ? m3434e : new C6066cw(this, str, m3439c) : m3439c;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public String mo1473a(ArrayList<String> arrayList, String str, String str2, boolean z) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        ArrayList<InterfaceC6012bh> arrayList3 = new ArrayList();
        arrayList3.add(new C6010bf("type", str));
        if (str.equals("wap")) {
            arrayList3.add(new C6010bf("conpt", m3451a(C6013bi.m3675a(f21206a))));
        }
        if (z) {
            arrayList3.add(new C6010bf("reserved", "1"));
        }
        arrayList3.add(new C6010bf(QRConstants.PARAMETER_NAME_UUID, str2));
        arrayList3.add(new C6010bf("list", C6023bo.m3616a(arrayList, Constants.ACCEPT_TIME_SEPARATOR_SP)));
        arrayList3.add(new C6010bf("countrycode", C6338a.m1718a(f21206a).m1714b()));
        String m3445b = m3445b();
        C6058cq m3439c = m3439c(m3445b);
        String format = String.format(Locale.US, "https://%1$s/gslb/?ver=4.0", m3445b);
        if (m3439c == null) {
            arrayList2.add(format);
            Map<String, C6058cq> map = f21210b;
            synchronized (map) {
                C6058cq c6058cq = map.get(m3445b);
                if (c6058cq != null) {
                    Iterator<String> it2 = c6058cq.mo3430a(true).iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(String.format(Locale.US, "https://%1$s/gslb/?ver=4.0", it2.next()));
                    }
                }
            }
        } else {
            arrayList2 = m3439c.m3482a(format);
        }
        Iterator<String> it3 = arrayList2.iterator();
        IOException e = null;
        while (it3.hasNext()) {
            Uri.Builder buildUpon = Uri.parse(it3.next()).buildUpon();
            for (InterfaceC6012bh interfaceC6012bh : arrayList3) {
                buildUpon.appendQueryParameter(interfaceC6012bh.mo3679a(), interfaceC6012bh.mo3678b());
            }
            try {
                InterfaceC6064b interfaceC6064b = this.f21215a;
                return interfaceC6064b == null ? C6013bi.m3671a(f21206a, new URL(buildUpon.toString())) : interfaceC6064b.mo1474a(buildUpon.toString());
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e == null) {
            return null;
        }
        AbstractC5876b.m4147a("network exception: " + e.getMessage());
        throw e;
    }

    /* renamed from: a */
    protected JSONObject m3457a() {
        JSONObject jSONObject;
        synchronized (this.f21217a) {
            jSONObject = new JSONObject();
            jSONObject.put("ver", 2);
            JSONArray jSONArray = new JSONArray();
            for (C6059cr c6059cr : this.f21217a.values()) {
                jSONArray.put(c6059cr.m3467a());
            }
            jSONObject.put("data", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            for (C6058cq c6058cq : f21210b.values()) {
                jSONArray2.put(c6058cq.m3488a());
            }
            jSONObject.put("reserved", jSONArray2);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public void m3456a() {
        synchronized (this.f21217a) {
            this.f21217a.clear();
        }
    }

    /* renamed from: a */
    public void m3450a(String str) {
        this.f21219b = str;
    }

    /* renamed from: a */
    public void m3449a(String str, C6058cq c6058cq) {
        if (TextUtils.isEmpty(str) || c6058cq == null) {
            throw new IllegalArgumentException("the argument is invalid " + str + ", " + c6058cq);
        } else if (this.f21214a.mo3432a(str)) {
            synchronized (this.f21217a) {
                m3455a();
                if (this.f21217a.containsKey(str)) {
                    this.f21217a.get(str).m3466a(c6058cq);
                } else {
                    C6059cr c6059cr = new C6059cr(str);
                    c6059cr.m3466a(c6058cq);
                    this.f21217a.put(str, c6059cr);
                }
            }
        }
    }

    /* renamed from: a */
    protected boolean m3455a() {
        synchronized (this.f21217a) {
            if (f21209a) {
                return true;
            }
            f21209a = true;
            this.f21217a.clear();
            String m3438d = m3438d();
            if (TextUtils.isEmpty(m3438d)) {
                return false;
            }
            m3442b(m3438d);
            AbstractC5876b.m4141b("loading the new hosts succeed");
            return true;
        }
    }

    /* renamed from: b */
    public C6058cq m3443b(String str) {
        return m3447a(str, true);
    }

    /* renamed from: b */
    protected String m3445b() {
        String m1719a = C6338a.m1718a(f21206a).m1719a();
        return (TextUtils.isEmpty(m1719a) || PushChannelRegion.China.name().equals(m1719a)) ? "resolver.msg.xiaomi.net" : "resolver.msg.global.xiaomi.net";
    }

    /* renamed from: b */
    public void m3444b() {
        ArrayList<String> arrayList;
        synchronized (this.f21217a) {
            m3455a();
            arrayList = new ArrayList<>(this.f21217a.keySet());
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                C6059cr c6059cr = this.f21217a.get(arrayList.get(size));
                if (c6059cr != null && c6059cr.m3470a() != null) {
                    arrayList.remove(size);
                }
            }
        }
        ArrayList<C6058cq> m3446a = m3446a(arrayList);
        for (int i = 0; i < arrayList.size(); i++) {
            if (m3446a.get(i) != null) {
                m3449a(arrayList.get(i), m3446a.get(i));
            }
        }
    }

    /* renamed from: b */
    protected void m3442b(String str) {
        synchronized (this.f21217a) {
            this.f21217a.clear();
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("ver") != 2) {
                throw new JSONException("Bad version");
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("data");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    C6059cr m3465a = new C6059cr().m3465a(optJSONArray.getJSONObject(i));
                    this.f21217a.put(m3465a.m3469a(), m3465a);
                }
            }
            JSONArray optJSONArray2 = jSONObject.optJSONArray("reserved");
            if (optJSONArray2 != null) {
                for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                    JSONObject jSONObject2 = optJSONArray2.getJSONObject(i2);
                    String optString = jSONObject2.optString("host");
                    if (!TextUtils.isEmpty(optString)) {
                        try {
                            C6058cq m3477a = new C6058cq(optString).m3477a(jSONObject2);
                            f21210b.put(m3477a.f21193b, m3477a);
                            AbstractC5876b.m4147a("load local reserved host for " + m3477a.f21193b);
                        } catch (JSONException unused) {
                            AbstractC5876b.m4147a("parse reserved host fail.");
                        }
                    }
                }
            }
        }
    }

    /* renamed from: c */
    protected C6058cq m3439c(String str) {
        C6059cr c6059cr;
        C6058cq m3470a;
        synchronized (this.f21217a) {
            m3455a();
            c6059cr = this.f21217a.get(str);
        }
        if (c6059cr == null || (m3470a = c6059cr.m3470a()) == null) {
            return null;
        }
        return m3470a;
    }

    /* renamed from: c */
    public String m3441c() {
        StringBuilder sb = new StringBuilder();
        synchronized (this.f21217a) {
            for (Map.Entry<String, C6059cr> entry : this.f21217a.entrySet()) {
                sb.append(entry.getKey());
                sb.append(":\n");
                sb.append(entry.getValue().toString());
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    /* renamed from: c */
    public void m3440c() {
        synchronized (this.f21217a) {
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(f21206a.openFileOutput(m3435e(), 0)));
                String jSONObject = m3457a().toString();
                if (!TextUtils.isEmpty(jSONObject)) {
                    bufferedWriter.write(jSONObject);
                }
                bufferedWriter.close();
            } catch (Exception e) {
                AbstractC5876b.m4147a("persist bucket failure: " + e.getMessage());
            }
        }
    }

    /* renamed from: d */
    public C6058cq m3436d(String str) {
        C6058cq c6058cq;
        Map<String, C6058cq> map = f21210b;
        synchronized (map) {
            c6058cq = map.get(str);
        }
        return c6058cq;
    }

    /* renamed from: d */
    protected String m3438d() {
        BufferedReader bufferedReader;
        File file;
        try {
            file = new File(f21206a.getFilesDir(), m3435e());
        } catch (Throwable th) {
            th = th;
            bufferedReader = null;
        }
        if (!file.isFile()) {
            C5968aa.m3810a((Closeable) null);
            return null;
        }
        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return sb.toString();
                }
                sb.append(readLine);
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                AbstractC5876b.m4147a("load host exception " + th.getMessage());
                return null;
            } finally {
                C5968aa.m3810a(bufferedReader);
            }
        }
    }

    /* renamed from: d */
    public void m3437d() {
        String next;
        synchronized (this.f21217a) {
            for (C6059cr c6059cr : this.f21217a.values()) {
                c6059cr.m3464a(true);
            }
            while (true) {
                for (boolean z = false; !z; z = true) {
                    Iterator<String> it2 = this.f21217a.keySet().iterator();
                    while (it2.hasNext()) {
                        next = it2.next();
                        if (this.f21217a.get(next).m3468a().isEmpty()) {
                            break;
                        }
                    }
                }
                this.f21217a.remove(next);
            }
        }
    }

    /* renamed from: e */
    protected C6058cq m3434e(String str) {
        if (System.currentTimeMillis() - this.f21220c > this.f21213a * 60 * 1000) {
            this.f21220c = System.currentTimeMillis();
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(str);
            C6058cq c6058cq = m3446a(arrayList).get(0);
            if (c6058cq != null) {
                this.f21213a = 0L;
                return c6058cq;
            }
            long j = this.f21213a;
            if (j < 15) {
                this.f21213a = j + 1;
                return null;
            }
            return null;
        }
        return null;
    }

    /* renamed from: e */
    protected String m3435e() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) f21206a.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == Process.myPid()) {
                    return runningAppProcessInfo.processName;
                }
            }
            return "com.xiaomi";
        }
        return "com.xiaomi";
    }
}
