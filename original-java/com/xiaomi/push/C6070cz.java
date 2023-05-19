package com.xiaomi.push;

import com.xiaomi.mipush.sdk.Constants;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.xiaomi.push.cz */
/* loaded from: classes2.dex */
class C6070cz implements Comparable<C6070cz> {

    /* renamed from: a */
    protected int f21226a;

    /* renamed from: a */
    private long f21227a;

    /* renamed from: a */
    String f21228a;

    /* renamed from: a */
    private final LinkedList<C6057cp> f21229a;

    public C6070cz() {
        this(null, 0);
    }

    public C6070cz(String str) {
        this(str, 0);
    }

    public C6070cz(String str, int i) {
        this.f21229a = new LinkedList<>();
        this.f21227a = 0L;
        this.f21228a = str;
        this.f21226a = i;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6070cz c6070cz) {
        if (c6070cz == null) {
            return 1;
        }
        return c6070cz.f21226a - this.f21226a;
    }

    /* renamed from: a */
    public synchronized C6070cz m3415a(JSONObject jSONObject) {
        this.f21227a = jSONObject.getLong("tt");
        this.f21226a = jSONObject.getInt("wt");
        this.f21228a = jSONObject.getString("host");
        JSONArray jSONArray = jSONObject.getJSONArray("ah");
        for (int i = 0; i < jSONArray.length(); i++) {
            this.f21229a.add(new C6057cp().m3491a(jSONArray.getJSONObject(i)));
        }
        return this;
    }

    /* renamed from: a */
    public synchronized JSONObject m3418a() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        jSONObject.put("tt", this.f21227a);
        jSONObject.put("wt", this.f21226a);
        jSONObject.put("host", this.f21228a);
        JSONArray jSONArray = new JSONArray();
        Iterator<C6057cp> it2 = this.f21229a.iterator();
        while (it2.hasNext()) {
            jSONArray.put(it2.next().m3492a());
        }
        jSONObject.put("ah", jSONArray);
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public synchronized void m3417a(C6057cp c6057cp) {
        if (c6057cp != null) {
            this.f21229a.add(c6057cp);
            int m3493a = c6057cp.m3493a();
            if (m3493a > 0) {
                this.f21226a += c6057cp.m3493a();
            } else {
                int i = 0;
                for (int size = this.f21229a.size() - 1; size >= 0 && this.f21229a.get(size).m3493a() < 0; size--) {
                    i++;
                }
                this.f21226a += m3493a * i;
            }
            if (this.f21229a.size() > 30) {
                this.f21226a -= this.f21229a.remove().m3493a();
            }
        }
    }

    public String toString() {
        return this.f21228a + Constants.COLON_SEPARATOR + this.f21226a;
    }
}
