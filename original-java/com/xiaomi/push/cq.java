package com.xiaomi.push;

import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class cq {

    /* renamed from: a  reason: collision with other field name */
    private long f170a;

    /* renamed from: a  reason: collision with other field name */
    public String f171a;

    /* renamed from: b  reason: collision with other field name */
    public String f173b;

    /* renamed from: c  reason: collision with root package name */
    public String f8820c;
    public String d;
    public String e;
    public String f;
    public String g;
    protected String h;
    private String i;

    /* renamed from: a  reason: collision with other field name */
    private ArrayList<cz> f172a = new ArrayList<>();

    /* renamed from: a  reason: collision with root package name */
    private double f8818a = 0.1d;
    private String j = "s.mi1.cc";

    /* renamed from: b  reason: collision with root package name */
    private long f8819b = 86400000;

    public cq(String str) {
        this.f171a = "";
        if (!TextUtils.isEmpty(str)) {
            this.f170a = System.currentTimeMillis();
            this.f172a.add(new cz(str, -1));
            this.f171a = cu.m149a();
            this.f173b = str;
            return;
        }
        throw new IllegalArgumentException("the host is empty");
    }

    private synchronized void c(String str) {
        Iterator<cz> it = this.f172a.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(it.next().f189a, str)) {
                it.remove();
            }
        }
    }

    public synchronized cq a(JSONObject jSONObject) {
        this.f171a = jSONObject.optString("net");
        this.f8819b = jSONObject.getLong("ttl");
        this.f8818a = jSONObject.getDouble("pct");
        this.f170a = jSONObject.getLong("ts");
        this.d = jSONObject.optString("city");
        this.f8820c = jSONObject.optString("prv");
        this.g = jSONObject.optString("cty");
        this.e = jSONObject.optString("isp");
        this.f = jSONObject.optString("ip");
        this.f173b = jSONObject.optString("host");
        this.h = jSONObject.optString("xf");
        JSONArray jSONArray = jSONObject.getJSONArray("fbs");
        for (int i = 0; i < jSONArray.length(); i++) {
            a(new cz().a(jSONArray.getJSONObject(i)));
        }
        return this;
    }

    public synchronized String a() {
        if (!TextUtils.isEmpty(this.i)) {
            return this.i;
        } else if (TextUtils.isEmpty(this.e)) {
            return "hardcode_isp";
        } else {
            String a2 = bo.a(new String[]{this.e, this.f8820c, this.d, this.g, this.f}, "_");
            this.i = a2;
            return a2;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized ArrayList<String> m140a() {
        return a(false);
    }

    public ArrayList<String> a(String str) {
        if (!TextUtils.isEmpty(str)) {
            URL url = new URL(str);
            if (TextUtils.equals(url.getHost(), this.f173b)) {
                ArrayList<String> arrayList = new ArrayList<>();
                Iterator<String> it = a(true).iterator();
                while (it.hasNext()) {
                    cs a2 = cs.a(it.next(), url.getPort());
                    arrayList.add(new URL(url.getProtocol(), a2.m148a(), a2.a(), url.getFile()).toString());
                }
                return arrayList;
            }
            throw new IllegalArgumentException("the url is not supported by the fallback");
        }
        throw new IllegalArgumentException("the url is empty.");
    }

    public synchronized ArrayList<String> a(boolean z) {
        ArrayList<String> arrayList;
        String substring;
        int size = this.f172a.size();
        cz[] czVarArr = new cz[size];
        this.f172a.toArray(czVarArr);
        Arrays.sort(czVarArr);
        arrayList = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            cz czVar = czVarArr[i];
            if (z) {
                substring = czVar.f189a;
            } else {
                int indexOf = czVar.f189a.indexOf(Constants.COLON_SEPARATOR);
                substring = indexOf != -1 ? czVar.f189a.substring(0, indexOf) : czVar.f189a;
            }
            arrayList.add(substring);
        }
        return arrayList;
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized JSONObject m141a() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        jSONObject.put("net", this.f171a);
        jSONObject.put("ttl", this.f8819b);
        jSONObject.put("pct", this.f8818a);
        jSONObject.put("ts", this.f170a);
        jSONObject.put("city", this.d);
        jSONObject.put("prv", this.f8820c);
        jSONObject.put("cty", this.g);
        jSONObject.put("isp", this.e);
        jSONObject.put("ip", this.f);
        jSONObject.put("host", this.f173b);
        jSONObject.put("xf", this.h);
        JSONArray jSONArray = new JSONArray();
        Iterator<cz> it = this.f172a.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().a());
        }
        jSONObject.put("fbs", jSONArray);
        return jSONObject;
    }

    public void a(double d) {
        this.f8818a = d;
    }

    public void a(long j) {
        if (j > 0) {
            this.f8819b = j;
            return;
        }
        throw new IllegalArgumentException("the duration is invalid " + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(cz czVar) {
        c(czVar.f189a);
        this.f172a.add(czVar);
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized void m142a(String str) {
        a(new cz(str));
    }

    public void a(String str, int i, long j, long j2, Exception exc) {
        a(str, new cp(i, j, j2, exc));
    }

    public void a(String str, long j, long j2) {
        try {
            b(new URL(str).getHost(), j, j2);
        } catch (MalformedURLException unused) {
        }
    }

    public void a(String str, long j, long j2, Exception exc) {
        try {
            b(new URL(str).getHost(), j, j2, exc);
        } catch (MalformedURLException unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
        r1.a(r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void a(java.lang.String r4, com.xiaomi.push.cp r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.util.ArrayList<com.xiaomi.push.cz> r0 = r3.f172a     // Catch: all -> 0x0020
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x0020
        L_0x0007:
            boolean r1 = r0.hasNext()     // Catch: all -> 0x0020
            if (r1 == 0) goto L_0x001e
            java.lang.Object r1 = r0.next()     // Catch: all -> 0x0020
            com.xiaomi.push.cz r1 = (com.xiaomi.push.cz) r1     // Catch: all -> 0x0020
            java.lang.String r2 = r1.f189a     // Catch: all -> 0x0020
            boolean r2 = android.text.TextUtils.equals(r4, r2)     // Catch: all -> 0x0020
            if (r2 == 0) goto L_0x0007
            r1.a(r5)     // Catch: all -> 0x0020
        L_0x001e:
            monitor-exit(r3)
            return
        L_0x0020:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.cq.a(java.lang.String, com.xiaomi.push.cp):void");
    }

    public synchronized void a(String[] strArr) {
        int i;
        int size = this.f172a.size() - 1;
        while (true) {
            i = 0;
            if (size < 0) {
                break;
            }
            int length = strArr.length;
            while (true) {
                if (i < length) {
                    if (TextUtils.equals(this.f172a.get(size).f189a, strArr[i])) {
                        this.f172a.remove(size);
                        break;
                    }
                    i++;
                }
            }
            size--;
        }
        Iterator<cz> it = this.f172a.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            cz next = it.next();
            if (next.f8830a > i2) {
                i2 = next.f8830a;
            }
        }
        while (i < strArr.length) {
            a(new cz(strArr[i], (strArr.length + i2) - i));
            i++;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m143a() {
        return TextUtils.equals(this.f171a, cu.m149a());
    }

    public boolean a(cq cqVar) {
        return TextUtils.equals(this.f171a, cqVar.f171a);
    }

    public void b(String str) {
        this.j = str;
    }

    public void b(String str, long j, long j2) {
        a(str, 0, j, j2, null);
    }

    public void b(String str, long j, long j2, Exception exc) {
        a(str, -1, j, j2, exc);
    }

    public boolean b() {
        return System.currentTimeMillis() - this.f170a < this.f8819b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        long j = this.f8819b;
        if (864000000 >= j) {
            j = 864000000;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = this.f170a;
        return currentTimeMillis - j2 > j || (currentTimeMillis - j2 > this.f8819b && this.f171a.startsWith("WIFI-"));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f171a);
        sb.append("\n");
        sb.append(a());
        Iterator<cz> it = this.f172a.iterator();
        while (it.hasNext()) {
            sb.append("\n");
            sb.append(it.next().toString());
        }
        sb.append("\n");
        return sb.toString();
    }
}
