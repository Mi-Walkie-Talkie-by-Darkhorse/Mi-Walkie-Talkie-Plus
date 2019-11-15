package com.xiaomi.network;

import android.text.TextUtils;
import com.amap.api.services.district.DistrictSearchQuery;
import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import com.xiaomi.channel.commonutils.string.d;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.json.JSONArray;
import org.json.JSONObject;

public class Fallback {
    public String a = "";
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    protected String h;
    private long i;
    private ArrayList<c> j = new ArrayList<>();
    private String k;
    private double l = 0.1d;
    private String m = "s.mi1.cc";
    private long n = 86400000;

    public Fallback(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the host is empty");
        }
        this.i = System.currentTimeMillis();
        this.j.add(new c(str, -1));
        this.a = HostManager.getActiveNetworkLabel();
        this.b = str;
    }

    private synchronized void d(String str) {
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(((c) it.next()).a, str)) {
                it.remove();
            }
        }
    }

    public synchronized Fallback a(JSONObject jSONObject) {
        this.a = jSONObject.optString("net");
        this.n = jSONObject.getLong(Values.TTL);
        this.l = jSONObject.getDouble("pct");
        this.i = jSONObject.getLong(Key.TS);
        this.d = jSONObject.optString(DistrictSearchQuery.KEYWORDS_CITY);
        this.c = jSONObject.optString("prv");
        this.g = jSONObject.optString("cty");
        this.e = jSONObject.optString("isp");
        this.f = jSONObject.optString("ip");
        this.b = jSONObject.optString("host");
        this.h = jSONObject.optString("xf");
        JSONArray jSONArray = jSONObject.getJSONArray("fbs");
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            a(new c().a(jSONArray.getJSONObject(i2)));
        }
        return this;
    }

    public ArrayList<String> a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the url is empty.");
        }
        URL url = new URL(str);
        if (TextUtils.equals(url.getHost(), this.b)) {
            ArrayList<String> arrayList = new ArrayList<>();
            Iterator it = a(true).iterator();
            while (it.hasNext()) {
                Host a2 = Host.a((String) it.next(), url.getPort());
                arrayList.add(new URL(url.getProtocol(), a2.b(), a2.a(), url.getFile()).toString());
            }
            return arrayList;
        }
        throw new IllegalArgumentException("the url is not supported by the fallback");
    }

    public synchronized ArrayList<String> a(boolean z) {
        ArrayList<String> arrayList;
        synchronized (this) {
            c[] cVarArr = new c[this.j.size()];
            this.j.toArray(cVarArr);
            Arrays.sort(cVarArr);
            arrayList = new ArrayList<>();
            for (c cVar : cVarArr) {
                if (z) {
                    arrayList.add(cVar.a);
                } else {
                    int indexOf = cVar.a.indexOf(":");
                    if (indexOf != -1) {
                        arrayList.add(cVar.a.substring(0, indexOf));
                    } else {
                        arrayList.add(cVar.a);
                    }
                }
            }
        }
        return arrayList;
    }

    public void a(double d2) {
        this.l = d2;
    }

    public void a(long j2) {
        if (j2 <= 0) {
            throw new IllegalArgumentException("the duration is invalid " + j2);
        }
        this.n = j2;
    }

    /* access modifiers changed from: 0000 */
    public synchronized void a(c cVar) {
        d(cVar.a);
        this.j.add(cVar);
    }

    public void a(String str, int i2, long j2, long j3, Exception exc) {
        a(str, new AccessHistory(i2, j2, j3, exc));
    }

    public void a(String str, long j2, long j3) {
        try {
            b(new URL(str).getHost(), j2, j3);
        } catch (MalformedURLException e2) {
        }
    }

    public void a(String str, long j2, long j3, Exception exc) {
        try {
            b(new URL(str).getHost(), j2, j3, exc);
        } catch (MalformedURLException e2) {
        }
    }

    public synchronized void a(String str, AccessHistory accessHistory) {
        Iterator it = this.j.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            c cVar = (c) it.next();
            if (TextUtils.equals(str, cVar.a)) {
                cVar.a(accessHistory);
                break;
            }
        }
    }

    public synchronized void a(String[] strArr) {
        for (int size = this.j.size() - 1; size >= 0; size--) {
            int length = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (TextUtils.equals(((c) this.j.get(size)).a, strArr[i2])) {
                    this.j.remove(size);
                    break;
                }
                i2++;
            }
        }
        Iterator it = this.j.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            c cVar = (c) it.next();
            i3 = cVar.b > i3 ? cVar.b : i3;
        }
        for (int i4 = 0; i4 < strArr.length; i4++) {
            a(new c(strArr[i4], (strArr.length + i3) - i4));
        }
    }

    public boolean a() {
        return TextUtils.equals(this.a, HostManager.getActiveNetworkLabel());
    }

    public boolean a(Fallback fallback) {
        return TextUtils.equals(this.a, fallback.a);
    }

    public synchronized void b(String str) {
        a(new c(str));
    }

    public void b(String str, long j2, long j3) {
        a(str, 0, j2, j3, null);
    }

    public void b(String str, long j2, long j3, Exception exc) {
        a(str, -1, j2, j3, exc);
    }

    public boolean b() {
        return System.currentTimeMillis() - this.i < this.n;
    }

    public void c(String str) {
        this.m = str;
    }

    /* access modifiers changed from: 0000 */
    public boolean c() {
        long j2 = 864000000;
        if (864000000 < this.n) {
            j2 = this.n;
        }
        long currentTimeMillis = System.currentTimeMillis();
        return currentTimeMillis - this.i > j2 || (currentTimeMillis - this.i > this.n && this.a.startsWith("WIFI-"));
    }

    public synchronized ArrayList<String> d() {
        return a(false);
    }

    public synchronized String e() {
        String str;
        if (!TextUtils.isEmpty(this.k)) {
            str = this.k;
        } else if (TextUtils.isEmpty(this.e)) {
            str = "hardcode_isp";
        } else {
            this.k = d.a((Object[]) new String[]{this.e, this.c, this.d, this.g, this.f}, "_");
            str = this.k;
        }
        return str;
    }

    public synchronized JSONObject f() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        jSONObject.put("net", this.a);
        jSONObject.put(Values.TTL, this.n);
        jSONObject.put("pct", this.l);
        jSONObject.put(Key.TS, this.i);
        jSONObject.put(DistrictSearchQuery.KEYWORDS_CITY, this.d);
        jSONObject.put("prv", this.c);
        jSONObject.put("cty", this.g);
        jSONObject.put("isp", this.e);
        jSONObject.put("ip", this.f);
        jSONObject.put("host", this.b);
        jSONObject.put("xf", this.h);
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            jSONArray.put(((c) it.next()).a());
        }
        jSONObject.put("fbs", jSONArray);
        return jSONObject;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append("\n");
        sb.append(e());
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            sb.append("\n");
            sb.append(cVar.toString());
        }
        sb.append("\n");
        return sb.toString();
    }
}
