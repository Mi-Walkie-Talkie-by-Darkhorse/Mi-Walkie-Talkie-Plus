package com.xiaomi.push;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import com.umeng.analytics.pro.ai;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.service.module.PushChannelRegion;
import java.io.BufferedReader;
import java.io.BufferedWriter;
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

/* loaded from: classes2.dex */
public class cu {

    /* renamed from: a  reason: collision with root package name */
    protected static Context f8823a;

    /* renamed from: a  reason: collision with other field name */
    private static a f176a;

    /* renamed from: a  reason: collision with other field name */
    private static cu f177a;

    /* renamed from: c  reason: collision with root package name */
    private static String f8825c;
    private static String d;

    /* renamed from: a  reason: collision with other field name */
    private long f179a;

    /* renamed from: a  reason: collision with other field name */
    private ct f180a;

    /* renamed from: a  reason: collision with other field name */
    protected b f181a;

    /* renamed from: a  reason: collision with other field name */
    private String f182a;

    /* renamed from: a  reason: collision with other field name */
    protected final Map<String, cr> f183a;

    /* renamed from: b  reason: collision with other field name */
    private final long f184b;

    /* renamed from: b  reason: collision with other field name */
    private String f185b;

    /* renamed from: c  reason: collision with other field name */
    private long f186c;

    /* renamed from: b  reason: collision with root package name */
    protected static final Map<String, cq> f8824b = new HashMap();

    /* renamed from: a  reason: collision with other field name */
    protected static boolean f178a = false;

    /* loaded from: classes2.dex */
    public interface a {
        cu a(Context context, ct ctVar, b bVar, String str);
    }

    /* loaded from: classes2.dex */
    public interface b {
        String a(String str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public cu(Context context, ct ctVar, b bVar, String str) {
        this(context, ctVar, bVar, str, null, null);
    }

    protected cu(Context context, ct ctVar, b bVar, String str, String str2, String str3) {
        this.f183a = new HashMap();
        this.f182a = "0";
        this.f179a = 0L;
        this.f184b = 15L;
        this.f186c = 0L;
        this.f185b = "isp_prov_city_country_ip";
        this.f181a = bVar;
        this.f180a = ctVar == null ? new cv(this) : ctVar;
        this.f182a = str;
        f8825c = str2 == null ? context.getPackageName() : str2;
        d = str3 == null ? f() : str3;
    }

    public static synchronized cu a() {
        cu cuVar;
        synchronized (cu.class) {
            if (f177a != null) {
                cuVar = f177a;
            } else {
                throw new IllegalStateException("the host manager is not initialized yet.");
            }
        }
        return cuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public static String m149a() {
        NetworkInfo activeNetworkInfo;
        Context context = f8823a;
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

    static String a(String str) {
        try {
            int length = str.length();
            byte[] bytes = str.getBytes("UTF-8");
            for (int i = 0; i < bytes.length; i++) {
                byte b2 = bytes[i];
                int i2 = b2 & 240;
                if (i2 != 240) {
                    bytes[i] = (byte) (((b2 & 15) ^ ((byte) (((b2 >> 4) + length) & 15))) | i2);
                }
            }
            return new String(bytes);
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }

    private ArrayList<cq> a(ArrayList<String> arrayList) {
        m158d();
        synchronized (this.f183a) {
            m154a();
            for (String str : this.f183a.keySet()) {
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        synchronized (f8824b) {
            for (Object obj : f8824b.values().toArray()) {
                cq cqVar = (cq) obj;
                if (!cqVar.b()) {
                    f8824b.remove(cqVar.f173b);
                }
            }
        }
        if (!arrayList.contains(b())) {
            arrayList.add(b());
        }
        ArrayList<cq> arrayList2 = new ArrayList<>(arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList2.add(null);
        }
        try {
            String str2 = bi.e(f8823a) ? "wifi" : "wap";
            String a2 = a(arrayList, str2, this.f182a, true);
            if (!TextUtils.isEmpty(a2)) {
                JSONObject jSONObject = new JSONObject(a2);
                com.xiaomi.channel.commonutils.logger.b.b(a2);
                if ("OK".equalsIgnoreCase(jSONObject.getString("S"))) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("R");
                    String string = jSONObject2.getString("province");
                    String string2 = jSONObject2.getString("city");
                    String string3 = jSONObject2.getString("isp");
                    String string4 = jSONObject2.getString("ip");
                    String string5 = jSONObject2.getString(ai.O);
                    JSONObject jSONObject3 = jSONObject2.getJSONObject(str2);
                    com.xiaomi.channel.commonutils.logger.b.c("get bucket: net=" + string3 + ", hosts=" + jSONObject3.toString());
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        String str3 = arrayList.get(i2);
                        JSONArray optJSONArray = jSONObject3.optJSONArray(str3);
                        if (optJSONArray == null) {
                            com.xiaomi.channel.commonutils.logger.b.m1a("no bucket found for " + str3);
                            jSONObject3 = jSONObject3;
                        } else {
                            cq cqVar2 = new cq(str3);
                            for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                                String string6 = optJSONArray.getString(i3);
                                if (!TextUtils.isEmpty(string6)) {
                                    jSONObject3 = jSONObject3;
                                    cqVar2.a(new cz(string6, optJSONArray.length() - i3));
                                } else {
                                    jSONObject3 = jSONObject3;
                                }
                            }
                            jSONObject3 = jSONObject3;
                            arrayList2.set(i2, cqVar2);
                            cqVar2.g = string5;
                            cqVar2.f8820c = string;
                            cqVar2.e = string3;
                            cqVar2.f = string4;
                            cqVar2.d = string2;
                            if (jSONObject2.has("stat-percent")) {
                                cqVar2.a(jSONObject2.getDouble("stat-percent"));
                            }
                            if (jSONObject2.has("stat-domain")) {
                                cqVar2.b(jSONObject2.getString("stat-domain"));
                            }
                            if (jSONObject2.has("ttl")) {
                                cqVar2.a(jSONObject2.getInt("ttl") * 1000);
                            }
                            m153a(cqVar2.a());
                        }
                    }
                    JSONObject optJSONObject = jSONObject2.optJSONObject("reserved");
                    if (optJSONObject != null) {
                        long j = 604800000;
                        if (jSONObject2.has("reserved-ttl")) {
                            j = jSONObject2.getInt("reserved-ttl") * 1000;
                        }
                        Iterator<String> keys = optJSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            JSONArray optJSONArray2 = optJSONObject.optJSONArray(next);
                            if (optJSONArray2 == null) {
                                com.xiaomi.channel.commonutils.logger.b.m1a("no bucket found for " + next);
                            } else {
                                cq cqVar3 = new cq(next);
                                cqVar3.a(j);
                                for (int i4 = 0; i4 < optJSONArray2.length(); i4++) {
                                    String string7 = optJSONArray2.getString(i4);
                                    if (!TextUtils.isEmpty(string7)) {
                                        cqVar3.a(new cz(string7, optJSONArray2.length() - i4));
                                    }
                                }
                                synchronized (f8824b) {
                                    if (this.f180a.a(next)) {
                                        f8824b.put(next, cqVar3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.m1a("failed to get bucket " + e.getMessage());
        }
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            cq cqVar4 = arrayList2.get(i5);
            if (cqVar4 != null) {
                a(arrayList.get(i5), cqVar4);
            }
        }
        m157c();
        return arrayList2;
    }

    public static synchronized void a(Context context, ct ctVar, b bVar, String str, String str2, String str3) {
        synchronized (cu.class) {
            Context applicationContext = context.getApplicationContext();
            f8823a = applicationContext;
            if (applicationContext == null) {
                f8823a = context;
            }
            if (f177a == null) {
                if (f176a == null) {
                    f177a = new cu(context, ctVar, bVar, str, str2, str3);
                } else {
                    f177a = f176a.a(context, ctVar, bVar, str);
                }
            }
        }
    }

    public static synchronized void a(a aVar) {
        synchronized (cu.class) {
            f176a = aVar;
            f177a = null;
        }
    }

    public static void a(String str, String str2) {
        cq cqVar = f8824b.get(str);
        synchronized (f8824b) {
            if (cqVar == null) {
                cq cqVar2 = new cq(str);
                cqVar2.a(604800000L);
                cqVar2.m142a(str2);
                f8824b.put(str, cqVar2);
            } else {
                cqVar.m142a(str2);
            }
        }
    }

    private String f() {
        try {
            PackageInfo packageInfo = f8823a.getPackageManager().getPackageInfo(f8823a.getPackageName(), 16384);
            return packageInfo != null ? packageInfo.versionName : "0";
        } catch (Exception unused) {
            return "0";
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public cq m150a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return a(new URL(str).getHost(), true);
        }
        throw new IllegalArgumentException("the url is empty");
    }

    public cq a(String str, boolean z) {
        cq e;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the host is empty");
        } else if (!this.f180a.a(str)) {
            return null;
        } else {
            cq c2 = c(str);
            return (c2 == null || !c2.b()) ? (!z || !bi.b(f8823a) || (e = e(str)) == null) ? new cw(this, str, c2) : e : c2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(ArrayList<String> arrayList, String str, String str2, boolean z) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        ArrayList<bh> arrayList3 = new ArrayList();
        arrayList3.add(new bf("type", str));
        if (str.equals("wap")) {
            arrayList3.add(new bf("conpt", a(bi.m94a(f8823a))));
        }
        if (z) {
            arrayList3.add(new bf("reserved", "1"));
        }
        arrayList3.add(new bf("uuid", str2));
        arrayList3.add(new bf("list", bo.a(arrayList, Constants.ACCEPT_TIME_SEPARATOR_SP)));
        arrayList3.add(new bf("countrycode", com.xiaomi.push.service.a.a(f8823a).b()));
        String b2 = b();
        cq c2 = c(b2);
        String format = String.format(Locale.US, "https://%1$s/gslb/?ver=4.0", b2);
        if (c2 == null) {
            arrayList2.add(format);
            synchronized (f8824b) {
                cq cqVar = f8824b.get(b2);
                if (cqVar != null) {
                    Iterator<String> it = cqVar.a(true).iterator();
                    while (it.hasNext()) {
                        arrayList2.add(String.format(Locale.US, "https://%1$s/gslb/?ver=4.0", it.next()));
                    }
                }
            }
        } else {
            arrayList2 = c2.a(format);
        }
        Iterator<String> it2 = arrayList2.iterator();
        IOException e = null;
        while (it2.hasNext()) {
            Uri.Builder buildUpon = Uri.parse(it2.next()).buildUpon();
            for (bh bhVar : arrayList3) {
                buildUpon.appendQueryParameter(bhVar.a(), bhVar.b());
            }
            try {
                return this.f181a == null ? bi.a(f8823a, new URL(buildUpon.toString())) : this.f181a.a(buildUpon.toString());
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e == null) {
            return null;
        }
        com.xiaomi.channel.commonutils.logger.b.m1a("network exception: " + e.getMessage());
        throw e;
    }

    /* renamed from: a  reason: collision with other method in class */
    protected JSONObject m151a() {
        JSONObject jSONObject;
        synchronized (this.f183a) {
            jSONObject = new JSONObject();
            jSONObject.put("ver", 2);
            JSONArray jSONArray = new JSONArray();
            for (cr crVar : this.f183a.values()) {
                jSONArray.put(crVar.m146a());
            }
            jSONObject.put("data", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            for (cq cqVar : f8824b.values()) {
                jSONArray2.put(cqVar.m141a());
            }
            jSONObject.put("reserved", jSONArray2);
        }
        return jSONObject;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m152a() {
        synchronized (this.f183a) {
            this.f183a.clear();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m153a(String str) {
        this.f185b = str;
    }

    public void a(String str, cq cqVar) {
        if (TextUtils.isEmpty(str) || cqVar == null) {
            throw new IllegalArgumentException("the argument is invalid " + str + ", " + cqVar);
        } else if (this.f180a.a(str)) {
            synchronized (this.f183a) {
                m154a();
                if (this.f183a.containsKey(str)) {
                    this.f183a.get(str).a(cqVar);
                } else {
                    cr crVar = new cr(str);
                    crVar.a(cqVar);
                    this.f183a.put(str, crVar);
                }
            }
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    protected boolean m154a() {
        synchronized (this.f183a) {
            if (f178a) {
                return true;
            }
            f178a = true;
            this.f183a.clear();
            String d2 = d();
            if (TextUtils.isEmpty(d2)) {
                return false;
            }
            m156b(d2);
            com.xiaomi.channel.commonutils.logger.b.b("loading the new hosts succeed");
            return true;
        }
    }

    public cq b(String str) {
        return a(str, true);
    }

    protected String b() {
        String a2 = com.xiaomi.push.service.a.a(f8823a).a();
        return (TextUtils.isEmpty(a2) || PushChannelRegion.China.name().equals(a2)) ? "resolver.msg.xiaomi.net" : "resolver.msg.global.xiaomi.net";
    }

    /* renamed from: b  reason: collision with other method in class */
    public void m155b() {
        ArrayList<String> arrayList;
        synchronized (this.f183a) {
            m154a();
            arrayList = new ArrayList<>(this.f183a.keySet());
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                cr crVar = this.f183a.get(arrayList.get(size));
                if (!(crVar == null || crVar.a() == null)) {
                    arrayList.remove(size);
                }
            }
        }
        ArrayList<cq> a2 = a(arrayList);
        for (int i = 0; i < arrayList.size(); i++) {
            if (a2.get(i) != null) {
                a(arrayList.get(i), a2.get(i));
            }
        }
    }

    /* renamed from: b  reason: collision with other method in class */
    protected void m156b(String str) {
        synchronized (this.f183a) {
            this.f183a.clear();
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("ver") == 2) {
                JSONArray optJSONArray = jSONObject.optJSONArray("data");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        cr a2 = new cr().a(optJSONArray.getJSONObject(i));
                        this.f183a.put(a2.m144a(), a2);
                    }
                }
                JSONArray optJSONArray2 = jSONObject.optJSONArray("reserved");
                if (optJSONArray2 != null) {
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        JSONObject jSONObject2 = optJSONArray2.getJSONObject(i2);
                        String optString = jSONObject2.optString("host");
                        if (!TextUtils.isEmpty(optString)) {
                            try {
                                cq a3 = new cq(optString).a(jSONObject2);
                                f8824b.put(a3.f173b, a3);
                                com.xiaomi.channel.commonutils.logger.b.m1a("load local reserved host for " + a3.f173b);
                            } catch (JSONException unused) {
                                com.xiaomi.channel.commonutils.logger.b.m1a("parse reserved host fail.");
                            }
                        }
                    }
                }
            } else {
                throw new JSONException("Bad version");
            }
        }
    }

    protected cq c(String str) {
        cr crVar;
        cq a2;
        synchronized (this.f183a) {
            m154a();
            crVar = this.f183a.get(str);
        }
        if (crVar == null || (a2 = crVar.a()) == null) {
            return null;
        }
        return a2;
    }

    public String c() {
        StringBuilder sb = new StringBuilder();
        synchronized (this.f183a) {
            for (Map.Entry<String, cr> entry : this.f183a.entrySet()) {
                sb.append(entry.getKey());
                sb.append(":\n");
                sb.append(entry.getValue().toString());
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    /* renamed from: c  reason: collision with other method in class */
    public void m157c() {
        synchronized (this.f183a) {
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(f8823a.openFileOutput(e(), 0)));
                String jSONObject = m151a().toString();
                if (!TextUtils.isEmpty(jSONObject)) {
                    bufferedWriter.write(jSONObject);
                }
                bufferedWriter.close();
            } catch (Exception e) {
                com.xiaomi.channel.commonutils.logger.b.m1a("persist bucket failure: " + e.getMessage());
            }
        }
    }

    public cq d(String str) {
        cq cqVar;
        synchronized (f8824b) {
            cqVar = f8824b.get(str);
        }
        return cqVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.Closeable, java.lang.String] */
    protected String d() {
        Throwable th;
        File file;
        BufferedReader bufferedReader = 0;
        try {
            file = new File(f8823a.getFilesDir(), e());
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = bufferedReader;
        }
        if (!file.isFile()) {
            return bufferedReader;
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
        } catch (Throwable th3) {
            th = th3;
            try {
                com.xiaomi.channel.commonutils.logger.b.m1a("load host exception " + th.getMessage());
                return bufferedReader;
            } finally {
                aa.a(bufferedReader);
            }
        }
    }

    /* renamed from: d  reason: collision with other method in class */
    public void m158d() {
        String next;
        synchronized (this.f183a) {
            for (cr crVar : this.f183a.values()) {
                crVar.a(true);
            }
            while (true) {
                for (boolean z = false; !z; z = true) {
                    Iterator<String> it = this.f183a.keySet().iterator();
                    while (it.hasNext()) {
                        next = it.next();
                        if (this.f183a.get(next).m145a().isEmpty()) {
                            break;
                        }
                    }
                }
                this.f183a.remove(next);
            }
        }
    }

    protected cq e(String str) {
        if (System.currentTimeMillis() - this.f186c <= this.f179a * 60 * 1000) {
            return null;
        }
        this.f186c = System.currentTimeMillis();
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(str);
        cq cqVar = a(arrayList).get(0);
        if (cqVar != null) {
            this.f179a = 0L;
            return cqVar;
        }
        long j = this.f179a;
        if (j >= 15) {
            return null;
        }
        this.f179a = j + 1;
        return null;
    }

    protected String e() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) f8823a.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return "com.xiaomi";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == Process.myPid()) {
                return runningAppProcessInfo.processName;
            }
        }
        return "com.xiaomi";
    }
}
