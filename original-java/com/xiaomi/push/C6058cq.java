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

/* renamed from: com.xiaomi.push.cq */
/* loaded from: classes2.dex */
public class C6058cq {

    /* renamed from: a */
    private long f21189a;

    /* renamed from: a */
    public String f21190a;

    /* renamed from: b */
    public String f21193b;

    /* renamed from: c */
    public String f21194c;

    /* renamed from: d */
    public String f21195d;

    /* renamed from: e */
    public String f21196e;

    /* renamed from: f */
    public String f21197f;

    /* renamed from: g */
    public String f21198g;

    /* renamed from: h */
    protected String f21199h;

    /* renamed from: i */
    private String f21200i;

    /* renamed from: a */
    private ArrayList<C6070cz> f21191a = new ArrayList<>();

    /* renamed from: a */
    private double f21188a = 0.1d;

    /* renamed from: j */
    private String f21201j = "s.mi1.cc";

    /* renamed from: b */
    private long f21192b = 86400000;

    public C6058cq(String str) {
        this.f21190a = "";
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the host is empty");
        }
        this.f21189a = System.currentTimeMillis();
        this.f21191a.add(new C6070cz(str, -1));
        this.f21190a = C6062cu.m3458a();
        this.f21193b = str;
    }

    /* renamed from: c */
    private synchronized void m3471c(String str) {
        Iterator<C6070cz> it2 = this.f21191a.iterator();
        while (it2.hasNext()) {
            if (TextUtils.equals(it2.next().f21228a, str)) {
                it2.remove();
            }
        }
    }

    /* renamed from: a */
    public synchronized C6058cq m3477a(JSONObject jSONObject) {
        this.f21190a = jSONObject.optString("net");
        this.f21192b = jSONObject.getLong("ttl");
        this.f21188a = jSONObject.getDouble("pct");
        this.f21189a = jSONObject.getLong("ts");
        this.f21195d = jSONObject.optString("city");
        this.f21194c = jSONObject.optString("prv");
        this.f21198g = jSONObject.optString("cty");
        this.f21196e = jSONObject.optString("isp");
        this.f21197f = jSONObject.optString("ip");
        this.f21193b = jSONObject.optString("host");
        this.f21199h = jSONObject.optString("xf");
        JSONArray jSONArray = jSONObject.getJSONArray("fbs");
        for (int i = 0; i < jSONArray.length(); i++) {
            m3483a(new C6070cz().m3415a(jSONArray.getJSONObject(i)));
        }
        return this;
    }

    /* renamed from: a */
    public synchronized String m3490a() {
        if (!TextUtils.isEmpty(this.f21200i)) {
            return this.f21200i;
        } else if (TextUtils.isEmpty(this.f21196e)) {
            return "hardcode_isp";
        } else {
            String m3613a = C6023bo.m3613a(new String[]{this.f21196e, this.f21194c, this.f21195d, this.f21198g, this.f21197f}, "_");
            this.f21200i = m3613a;
            return m3613a;
        }
    }

    /* renamed from: a */
    public synchronized ArrayList<String> m3489a() {
        return mo3430a(false);
    }

    /* renamed from: a */
    public ArrayList<String> m3482a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the url is empty.");
        }
        URL url = new URL(str);
        if (TextUtils.equals(url.getHost(), this.f21193b)) {
            ArrayList<String> arrayList = new ArrayList<>();
            Iterator<String> it2 = mo3430a(true).iterator();
            while (it2.hasNext()) {
                C6060cs m3461a = C6060cs.m3461a(it2.next(), url.getPort());
                arrayList.add(new URL(url.getProtocol(), m3461a.m3462a(), m3461a.m3463a(), url.getFile()).toString());
            }
            return arrayList;
        }
        throw new IllegalArgumentException("the url is not supported by the fallback");
    }

    /* renamed from: a */
    public synchronized ArrayList<String> mo3430a(boolean z) {
        ArrayList<String> arrayList;
        String substring;
        int size = this.f21191a.size();
        C6070cz[] c6070czArr = new C6070cz[size];
        this.f21191a.toArray(c6070czArr);
        Arrays.sort(c6070czArr);
        arrayList = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            C6070cz c6070cz = c6070czArr[i];
            if (z) {
                substring = c6070cz.f21228a;
            } else {
                int indexOf = c6070cz.f21228a.indexOf(Constants.COLON_SEPARATOR);
                substring = indexOf != -1 ? c6070cz.f21228a.substring(0, indexOf) : c6070cz.f21228a;
            }
            arrayList.add(substring);
        }
        return arrayList;
    }

    /* renamed from: a */
    public synchronized JSONObject m3488a() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        jSONObject.put("net", this.f21190a);
        jSONObject.put("ttl", this.f21192b);
        jSONObject.put("pct", this.f21188a);
        jSONObject.put("ts", this.f21189a);
        jSONObject.put("city", this.f21195d);
        jSONObject.put("prv", this.f21194c);
        jSONObject.put("cty", this.f21198g);
        jSONObject.put("isp", this.f21196e);
        jSONObject.put("ip", this.f21197f);
        jSONObject.put("host", this.f21193b);
        jSONObject.put("xf", this.f21199h);
        JSONArray jSONArray = new JSONArray();
        Iterator<C6070cz> it2 = this.f21191a.iterator();
        while (it2.hasNext()) {
            jSONArray.put(it2.next().m3418a());
        }
        jSONObject.put("fbs", jSONArray);
        return jSONObject;
    }

    /* renamed from: a */
    public void m3486a(double d) {
        this.f21188a = d;
    }

    /* renamed from: a */
    public void m3485a(long j) {
        if (j > 0) {
            this.f21192b = j;
            return;
        }
        throw new IllegalArgumentException("the duration is invalid " + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public synchronized void m3483a(C6070cz c6070cz) {
        m3471c(c6070cz.f21228a);
        this.f21191a.add(c6070cz);
    }

    /* renamed from: a */
    public synchronized void m3481a(String str) {
        m3483a(new C6070cz(str));
    }

    /* renamed from: a */
    public void m3480a(String str, int i, long j, long j2, Exception exc) {
        mo3431a(str, new C6057cp(i, j, j2, exc));
    }

    /* renamed from: a */
    public void m3479a(String str, long j, long j2) {
        try {
            m3474b(new URL(str).getHost(), j, j2);
        } catch (MalformedURLException unused) {
        }
    }

    /* renamed from: a */
    public void m3478a(String str, long j, long j2, Exception exc) {
        try {
            m3473b(new URL(str).getHost(), j, j2, exc);
        } catch (MalformedURLException unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
        r1.m3417a(r5);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void mo3431a(String str, C6057cp c6057cp) {
        Iterator<C6070cz> it2 = this.f21191a.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            C6070cz next = it2.next();
            if (TextUtils.equals(str, next.f21228a)) {
                break;
            }
        }
    }

    /* renamed from: a */
    public synchronized void m3476a(String[] strArr) {
        int i;
        int size = this.f21191a.size() - 1;
        while (true) {
            i = 0;
            if (size < 0) {
                break;
            }
            int length = strArr.length;
            while (true) {
                if (i < length) {
                    if (TextUtils.equals(this.f21191a.get(size).f21228a, strArr[i])) {
                        this.f21191a.remove(size);
                        break;
                    }
                    i++;
                }
            }
            size--;
        }
        Iterator<C6070cz> it2 = this.f21191a.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            int i3 = it2.next().f21226a;
            if (i3 > i2) {
                i2 = i3;
            }
        }
        while (i < strArr.length) {
            m3483a(new C6070cz(strArr[i], (strArr.length + i2) - i));
            i++;
        }
    }

    /* renamed from: a */
    public boolean m3487a() {
        return TextUtils.equals(this.f21190a, C6062cu.m3458a());
    }

    /* renamed from: a */
    public boolean m3484a(C6058cq c6058cq) {
        return TextUtils.equals(this.f21190a, c6058cq.f21190a);
    }

    /* renamed from: b */
    public void m3475b(String str) {
        this.f21201j = str;
    }

    /* renamed from: b */
    public void m3474b(String str, long j, long j2) {
        m3480a(str, 0, j, j2, null);
    }

    /* renamed from: b */
    public void m3473b(String str, long j, long j2, Exception exc) {
        m3480a(str, -1, j, j2, exc);
    }

    /* renamed from: b */
    public boolean mo3429b() {
        return System.currentTimeMillis() - this.f21189a < this.f21192b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public boolean m3472c() {
        long j = this.f21192b;
        if (864000000 >= j) {
            j = 864000000;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = this.f21189a;
        return currentTimeMillis - j2 > j || (currentTimeMillis - j2 > this.f21192b && this.f21190a.startsWith("WIFI-"));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f21190a);
        sb.append("\n");
        sb.append(m3490a());
        Iterator<C6070cz> it2 = this.f21191a.iterator();
        while (it2.hasNext()) {
            sb.append("\n");
            sb.append(it2.next().toString());
        }
        sb.append("\n");
        return sb.toString();
    }
}
